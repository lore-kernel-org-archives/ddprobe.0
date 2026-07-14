Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A46436EABE
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784018316; cv=none; b=fTPDD9o/NLtEBvDA4eitkVyOUqtcnDndKanI11qYFMN8uvX6CEMPx8L1g9Ew0OWhKnRH+KCsXEfooh7Z6K0F8YPCgeLtLqbkkdMbuAZNIVz/b2h5xHGdLvRkxK1DUqFu1v+5sUW8ooDEkdUiCaRFJgl0LenAnhq6XL1r08txEEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784018316; c=relaxed/simple;
	bh=BuPd/Tnk0P+uMiNiecfgxerIBuKCMxvKfmEZmbDvUTs=;
	h=To:Subject:From:Message-Id:Date; b=VRk9b8fWvoAlufTfTmjHzLTpAQzaOzW2s86FOs6i6RTy/jIn+ztkwAjlpSIkfjg3dlxBjCuuZ6eeF1e6BT6TIlQEocTdKyPs7cx2Br3FaT+oMUw0iwEmTaBVBV8fitLHEHnFnUNiTNSjegE79K81m0BxmBVNEs09wXxPbAXUSv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg0ExDK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg0ExDK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14E8C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784018313;
	bh=BuPd/Tnk0P+uMiNiecfgxerIBuKCMxvKfmEZmbDvUTs=;
	h=To:Subject:From:Date:From;
	b=Cg0ExDK9X6Azk+zScZL5lEyEfqgoP3sVfys3AOW+hkib46QqqC2eP6TQsA4JZx2LN
	 aF8WljU3hGQ4HrxUCF92a+69cacpv54u3IUYurmanMzZBaOXZ908Kb8gj82klLApib
	 iyEmcinRZswxrd+oilqxP9fjva0rJzCLeF8d6foFojiYydTVwn1/LRy0HOfQ8FtmJF
	 bMLFp8xitXhtxvosnDT214k5SRG4UHgiJX+f7e6EiYB5NuMH9epCDtZlVBdGvdPhHo
	 AaQqMUNEf5zvJIPV49qc2LxBvViiVoX+YY4/SVH0SZ77qyEjF/4P2x6oSKQVo+OTYe
	 RYFcSqrGgGPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7FBC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401831369.6177.4171623255516101409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0ffdd8cd031f531c7e5e85f1c9558fe6832a38947b774713e916d0454cc51a
Date: Tue, 14 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784018313
