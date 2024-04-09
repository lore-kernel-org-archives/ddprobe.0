Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11212374D9
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712674097; cv=none; b=N+K8BcjA50MhFmgMdqm8b5ujxh64giOHYKnl1KkHTUXywMxFd5X2W2ke0hIlWxkui1OHeYpfJThG/zjwKmtodDmy9KC1Zi9d+PpL6mhZC+fysoU57fupAwh5usmR3SOKTtIGmZMbOrD0MRvQ83JfEJ2rV5Br4z5KT3kvxWAtFlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712674097; c=relaxed/simple;
	bh=eN9lVc3Xa8ozLuoFW5s6Lzw0hpmCFVMu8K2p0YwHLe8=;
	h=To:Subject:From:Message-Id:Date; b=N8MjVZror6CHS1tk41MeGrxPNuq9AuN9MHHmxcfNkgVRLwfDbKT1auwkjs1hQIqc+uAtPpTSruNYKX2HdD4vtfYTgff+qbUfKCFieaEtYvzFM8NiV0cdVKVnm3ddcVdLbD3Ify6mXl7Ux6I8y3+s3dud6/20iCQDMU8KYQKJUqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgNnPtKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgNnPtKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96E0AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712674096;
	bh=eN9lVc3Xa8ozLuoFW5s6Lzw0hpmCFVMu8K2p0YwHLe8=;
	h=To:Subject:From:Date:From;
	b=IgNnPtKlQDErSN85OVL03AanSp3gtXTbwTHcKGeEFkuHVDv7fiqAP2wcVm0LlrE+S
	 /8OUGXP8cs0VqVrcZm3mdzOkueKxEZoD3Nf2xClQfJG07zE2ukQNSVoJzU7GtafKz7
	 LxkTxGT2Iv90ehDDuVnquDQTGdsz1trmmpJHLgsHqtEX8OSydci2KgVIkgHk4rVS5x
	 g1dy80/1838Y/Rv7n4daeSUeJMf5rHeOGRWPsB+yPYEtjCkNBNjTKuQmyXV/nkOoQ/
	 8qW/5GRhY9cv2LOU0iMlJ8V6SAfLkaFI7MbDLvqmTj6hi1jGYyiOKCadltbkJRoG5L
	 mlyQ5a2z89w4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ECB9C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267409650.2408.10855180980357642739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d405e150ec1045d270d29fd2f2356b15fec3aad12d47efaa0202e1c7d9f5a88
Date: Tue, 09 Apr 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712674096
