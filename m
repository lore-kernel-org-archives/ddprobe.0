Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5232E1F938
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789952434; cv=none; b=Z57nEQtEE2UDZ8q9Qf+UF548fzQtiv8uMCUxrqoEeiDjly4vqaBndCS6c5O24IUOLruWNTbEkc4k1NN74lBZPJKszSaJ9/sxmpmXM6Q1bsRBVPJh/2U47YuSUsjR+m59L0tgB1nfchw8VqJspleCVtr7z9hiB46ALMtYSaj+4A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789952434; c=relaxed/simple;
	bh=0ZYQiVi/I20OLa4vrkkLW7EARM7C2SFckPCJ00czfa4=;
	h=To:Subject:From:Message-Id:Date; b=dG7mOiaLtZZSQyoc2XZtl8nslLBMq9Lzm4jf9rd7noYn4XqpOpIUWlVeIyXn/b/kbopCLoSuItHnVpK7n3N9M1tr+t1gKncA54aur2Z3bESNIJGYOh9sSfE+wjRnfHO7oyGHzcky2EAw3uS8l4QSZTjsjAKWNepXbvSXx5tSFB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvT3StwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvT3StwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1F5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789952433;
	bh=0ZYQiVi/I20OLa4vrkkLW7EARM7C2SFckPCJ00czfa4=;
	h=To:Subject:From:Date:From;
	b=pvT3StwFH/mDBf5iXV1cJvQN0LfcPpF0+w3wiTopooIrePy5+6O3LYSpINIpbkgkh
	 ZOnYhhYTjxJUkTv/Hl9azmZILBitGJarP/782k9WnxaLMvsiFbnv1+p8P/srNCV8da
	 nk3PUB4COtpiVXc+7SJEHdlvMvdXBhlKZ9vpL31WPqSOsce6oG38gvCo2uSals6n3L
	 0R984MDb6uDpIaA0ykNsaHTaeaijj3eXzx0X2UPdKNWaHlcXkN4QxWTaWEgMK/tjC7
	 EzlzyLRkW9PGo3zOKxBQkIs0PCnm1F2SVzduX17yxoX9jw5AqLYVJPcnkJRjkXXa4y
	 p1ZlKtxkkkyLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF89C982D8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995243369.4952.7783842981564957181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f79053f5ae5c5af4aef5a30e61a25dd87cb5123683a0f20b69499761b019feb
Date: Mon, 21 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789952433
