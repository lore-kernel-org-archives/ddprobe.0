Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D66E8F77
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751421594; cv=none; b=T8Cw9wRGmqJ9vx4lZ+m3eeAfVinjeIAkr32tlU/kUNAm4sw+SSygTimhGJfQrAdLMJ3i6WlYaFz0pHnJYfKRGlKLXI/v/9REVigvbbt1ChYyvltiWkcvGtseYqnkomWJpjVCzt7Fj8ZnlkDYrn5Wpno4O6c6oCm15md60ezC780=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751421594; c=relaxed/simple;
	bh=aLdenwQVaSqZ1xvmc0ZGMv016WeHoWKXv/P6mzN75u8=;
	h=To:Subject:From:Message-Id:Date; b=ck9QSGvSyXT1Lmlh7eSL+GZgzqUSfdyhUCnFmjILsvGiII6KZcKxen56Y47R90an2MnchcbNp/Bum3VErGMWejKEUZahHn6E6y/LogrAytFvD2g6zPmZMywkiakl9GQArOEg64RjVJOGZRJ0gF4e0SIyJxMPc1XWbjne0GpJ+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD18JCwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD18JCwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F41BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751421593;
	bh=aLdenwQVaSqZ1xvmc0ZGMv016WeHoWKXv/P6mzN75u8=;
	h=To:Subject:From:Date:From;
	b=PD18JCwrdHBoQHF79wJoGJe0+iMaCzW0Kgq1VII1cST/nIlSWlhiRDBx8MNws7JN2
	 UmuflYtzVL23TclY2pqxq21IhxkUXPMzG3kpZdd3VgMCxZ+Vd7OMnUb5L623U7fVdN
	 GYjz8TfVk4zEJHeSM5+177flr5XfHBtrTsCc8ExOFXTYZIA7vbMwQy0gh00UKLl1i8
	 SCudq0z8nqupsLd0+e8RSZfylpPpJvxUoXETLiSs0dFM4pxc/dE4NgTVJP/iMHYnyD
	 pMsiGSkx3nvi9BegBtaMn4oz6B+/2JUMRU29CkWnf5ydT7Hb9tx2rYfQYAivDeVgur
	 +VUXjPewYSYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDADC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142159357.8132.7298431519621179423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ab4c597f63e3bfc1f210db36e59a26bd22606eeac57a4b5a3cdff049271572
Date: Wed, 02 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751421593
