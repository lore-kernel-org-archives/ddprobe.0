Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0D37E5F2
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786160434; cv=none; b=CwuoPoNA1uGbdh8a3y/4GLSYQpcsah7Zsqq4NEXsFPFNCss2DCXDb70D9cFq6bRJ0V1tQC14Y3iPdCk7xMmftaUd6caHZMmPOFjNHZIcAFo66pMdSl/qZCV27P29Ga6eAuaGU/DxoshlwBlg4sJmAhgOdjYsh2lOOqkjw4aIU4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786160434; c=relaxed/simple;
	bh=gAT0lY11a7RW/KZay62tcjJ7jM8a/FpZjFHapqlgiDE=;
	h=To:Subject:From:Message-Id:Date; b=YONcaEZnLZFc/P44c4/aRkzQGmnEYFDYRB52+cBkyahs0j68151F5ckL94SUJkb1+vgLv9zc7H5KLI90ZCPlEfMN+KGLMdckpxRPkqIjj7VD6jL9SDtYF5nYmlnsp9q3bcAptRo0xaKsoiVvpjqzDr3OcSLaqU7Gfp7zLGaMAqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9h5E3ZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9h5E3ZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4A4C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786160433;
	bh=gAT0lY11a7RW/KZay62tcjJ7jM8a/FpZjFHapqlgiDE=;
	h=To:Subject:From:Date:From;
	b=Q9h5E3ZO1Wi3o0zFNKfqjohyP5Y3Bsrz+CLbvwhgyMfKGFqDPBnflTAeyVDuuHjql
	 15bsQQaQmeKp3aucas4z6ZyuMX+sTDL+dDEmDzs3GlKb43LXVa5qsm05B/0FfNV+vR
	 7g4ETOVb+hmn1HVoY+9zsGSqMn+8FW+I7DSJYEK2qRncv7p6LlTwyyfi/a4Gsxy6cT
	 2yZJU485RTuWQloP4p6cjZYU9J9wv59cZoo2fDBrdykT55IhWKBgZcB+O7/dAao8uO
	 HiXJUpH9SevXRNndAr+pSfbXVwRM4W9DaxIni0zFMTjAwG2zOYjXTso1VpavAAcgvz
	 2+B2NrheihnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909DC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616043368.6832.13374979781901571238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dbb0da900d7ada51ddc6044b95b678e6ee5f6e503971beeb784748cb98ba17
Date: Sat, 08 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786160433
