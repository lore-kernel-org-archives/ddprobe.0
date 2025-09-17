Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CE931BC8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758107994; cv=none; b=E7WFoiQrtQZPKb8TDb7A3rrnRkVYrdGM2cRqaQy1jfzDkPSIfawZIPJidnzdge/QT+fQw/HPnkWByVm7AMhlU+FBezfCTDdNLGCvovPkPGaMFOumvHV9OiFXL+R3vPfTqEoeT1hS30GAOD2DadXSWzOFiVX6/qX1N1aBTk60gG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758107994; c=relaxed/simple;
	bh=1C1w+qZQBeYInPl5DODaUC5WFTGSrGAXS631I6/ZMPQ=;
	h=To:Subject:From:Message-Id:Date; b=fQRrjfn9u9Qsz+l1vE8MLDkIIzD1Z1uMaYUkRB1IGvnvoo1PkIzu/qkhEe9NOA600cD2UHKmD3bN0w8uoQ5cAtx8HgAUugB5LCi0umS2M29vm+Ly33lIqY9hwVz1Hl7r8LiaJs02b3EAmcd4ffGyZwNYp/Jugh0IyPPD1AOx038=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaaToU3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaaToU3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7697C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758107993;
	bh=1C1w+qZQBeYInPl5DODaUC5WFTGSrGAXS631I6/ZMPQ=;
	h=To:Subject:From:Date:From;
	b=TaaToU3CNOD/bxxZ8uYoTxTzyLfPOP0lLQ68WuaJpbnm6YlACSTYWV3EvSobmnfNg
	 1uhvJjATzv6N9HqT7xE17fiE1X3/5/SnWaApWwY1S+DN+6Qin5YpK0IKn8IlyqLjRR
	 rpI66h7aiG1luK4PM+bA6sEwAlFBX1MpkrsOL9V1sZj0tSvuSXnOYEcHjyXnwP5KAF
	 O24PRPvbwdugUJIbf3Gz1aZ8yu0EjBLJqQZG7QjYyKIUEMYymdKE4FqHkr8UF+5DMm
	 VsgJveh0q5rifqk2b0CKVRx/35iAzljetcxQEmD0sPIAlyAPv95gXf3Y9F9ZBGLFge
	 5XcN/7VN3OcSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C1CCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810799359.28939.3427277463805144713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66aceebdfbfd1d5d12a6d0baef1e50d7656f60c68253c9ef0b57fdbd08e3627a
Date: Wed, 17 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758107993
