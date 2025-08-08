Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9A7404E
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754670594; cv=none; b=VLp3WAoc2S4bazDVwdd3dptFrOb9jGCaZOmS/tlvgJznYL+gBEz3m+Ojm0bsKW4BDALxkkU5UYVqh4bfOaSxXFMDEOULgCP8RuwEd2DzLvK7DfS7nf3qFNptQldGXsveUoow37FfHWezaa2HnyGZg9CgdGYyB4/UmloDZUOzLCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754670594; c=relaxed/simple;
	bh=nAlL/PumaMNoLWwc0d6BUC6cOj20s1GTG24KftTnf3A=;
	h=To:Subject:From:Message-Id:Date; b=VCxgaNcjUuzZ5K2TXYHV/Lmr05PhGcml+TjAQ7NZKc/xJhyjG3ugbENNm2/HJ23/4+PWtAO4jH+hlFwzTKfuKomk0A1lug+zj1rO38kucVTup37waUqBuBazKdGi8AfgERjI5NqOuY1Iktnw4wFmZggNPg+u7KjL5lIN7+4XNHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfB4RZOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfB4RZOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4119C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754670593;
	bh=nAlL/PumaMNoLWwc0d6BUC6cOj20s1GTG24KftTnf3A=;
	h=To:Subject:From:Date:From;
	b=JfB4RZOCAHBCjcqL+3yFUblGtpM+mzrwBRf109edE99KEeu7m4YI973kTp2h6HV8t
	 RxJyyl2Bs+2FOdp+82GPOTVhetvwjmBgCgCAEqqtztOBGkrQXvSYAHNFIoQ4F0rhcC
	 RoxB6BRz7Ec6fGDenOuQsk5Awgo6EHepfyvMH6yGovIGO/tAOmmvRKtbdpGzB49GPr
	 prHO/2zTnZMkPc6UqP9IyDQccQ4NuuXn7fJYe23+mCEgM8bGDnGemB9ou2IucfAhID
	 1zlosM493fs3gntfmx96B4i3OLY91C5iTVrye0wsG/bhJfVsl0wQJd02ced6/s1CrQ
	 OnpbMXbm4L5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055AC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467059358.18254.3787248316939681767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf2b73b62614fbddca8f83b04f2551c0dc0990dd46ef4fda0068be9245762d2
Date: Fri, 08 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754670593
