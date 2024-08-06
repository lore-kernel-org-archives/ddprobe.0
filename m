Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29882A94A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722926754; cv=none; b=d7JgLXubESrCLyXDvm7NbVRJcXj9934aGDhOjUKLk7oOUYdf9x15SnnMFYvGt1jdiKE4SJBhGS/Xz+mDgL5N4EgPtd+i82gM/lhJ20/DIzbBVQKzOBMdy0mmRrfupL81O+8NpyrwfwvXDH/rpRY2UUjTsmxXuSKPei7DvgDCB9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722926754; c=relaxed/simple;
	bh=pGG5c2X9inNH8YvXbIDD3ll6hKHhaV4lYVeATI4vX8s=;
	h=To:Subject:From:Message-Id:Date; b=jqfkN5cRakxOjbm5IXyMn2f/7qiuYPCoEU4eQxDYcAD159zvaMw8nDdDyHf38j7uJQYZSgHxXGYrFDeWWnka1BgezEUM1RER/c5+4Vl663fyyKJws2MtfIPpaMR2R32WIke2jmXt5oKNfDUkmii8n6wihoCUOkY15ZcDO1OeWaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ5+joI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ5+joI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B311BC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722926753;
	bh=pGG5c2X9inNH8YvXbIDD3ll6hKHhaV4lYVeATI4vX8s=;
	h=To:Subject:From:Date:From;
	b=nJ5+joI1KldHyLoWKBelTS3aZU7vI96X+iOrBtYphWNVs6Bn2w4/dMqE/WUZp4pAd
	 o8ij1hK3ewcdAKY/YofDE/08v5KzD6R0FVRL98SxEPFaY4RKpsP9cbxaAZq5bPnSOE
	 M8Bi3sQxI91on6dZp2xij9FXO3QQpvksIOQC6zrKb83GtNAQ/EUVnfIZnVgdp0zx6Q
	 /xnVwGl7WFl5/2QnDxLnIAS1RVpTWEUyC33bzGXcZJSIgFxTRudCN8kNgEUd1HHdBx
	 LvApLDGPdVSQMNGARd7js7EJj+P1+wuxh2A0xKGn6gDzaqI+MoVt1yCzkYBDm1VAg7
	 O2yczXAtbt4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B965C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292675360.7375.10460916284273382518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed2a35165c1613e25757251a5fbd8a385e907be28dddb70a69422789226f0a1
Date: Tue, 06 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722926753
