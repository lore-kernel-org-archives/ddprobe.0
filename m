Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316721B86DC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722155754; cv=none; b=fdAvgE+cM8AONJ3MVqhkki11z4HGBEdiKIk1fqFglMkcFTO7PGFngpREaOwGoCYoX3RH59zLDIpdZmP3Q9SVPxch0BBFppNR+ieJutQ0WVatPpa4y0isO5DNblhESo4uamY6zjmXBuVi8yOZ/7xodaBEkdPxvriytVfZqaApSIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722155754; c=relaxed/simple;
	bh=CaHX8A/6V0e7/JLQ60RFLU0Ba5VbpYO52Q8QUrd+3kU=;
	h=To:Subject:From:Message-Id:Date; b=OZCVzsm+Ijgz38Bg6bqCnzQuRboFF84blyVFX4/CBbkp560qBcYh0trRE4rC3jlOEnDbWJKV8AyPdNhP4986sO/aonMjzz3kjPxdPbDt/sUKMzQxilUFx7GcC6j2IOybPBNB94pWgmS90zu1srqRN4gf+O34SHRrVXsfVmFZkzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyq3+vLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyq3+vLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB17FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722155753;
	bh=CaHX8A/6V0e7/JLQ60RFLU0Ba5VbpYO52Q8QUrd+3kU=;
	h=To:Subject:From:Date:From;
	b=oyq3+vLiYZLUzRT7uQyem+jyAtHkkZy6UoHbJioUlinYozCAH6EFSHcD3aHa7B1iI
	 WRdq/W91LoJxe3a5DuF9D3qB5of9AaDg1fU/lZ8W6Gl6Rw/vMWbxtYm/J2y/SR1ryo
	 oGNQW1UOO+Gy9ZAnfDo5Fahh006l3ZaCZMZTSxub0pfwOjjYD/tIsp2dq8M6kxxEWT
	 VIbJkQWTz5qcgVCfTAFiFXrffts51KkngRWSIRIy24MniuyFOO08chId01f8F+7Kr6
	 ESOn21NGcx3mE/Y6SAQKrjFHoVNgtJAJKfSc9TxADU1CkILvlCVHl/sI0iONnToUz7
	 1nRXKrA0D1cjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9898AC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172215575359.8024.12149179188782371758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7903f4988e45e4545fe120b20269c4306b81d14eb32bab19c48226acd3021511
Date: Sun, 28 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722155753
