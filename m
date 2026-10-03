Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEB339D6F2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791024634; cv=none; b=aOpicPWKzWIkApkOolLU79YMozuUvCfzN0Qs7sGcDDwVIIzkQWUT9ug7ELApeiqoAZhONb3fVrW9mhXW/A+tAU8TaHPJ8CMakQIzWIWNXghTmmveCwwXpgG1yMhAJWAFZwZFASxueZtYvo1qu4+eCodEztL/mzN6y5/5E24ghis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791024634; c=relaxed/simple;
	bh=VHLqX41dayHDU2Uk/CfrxSx20z0SClNDXGko2sQX4oI=;
	h=To:Subject:From:Message-Id:Date; b=hGtYzLat/7ydUzUFw/EQBkqwoI1TNKcTCyEatYVnfr9dtqbgdIpY+Wh1aEsoAb9hyYLecZtYW/71W7gVG9IcE1Xe/MTMzYGQIzbxMnPMBFNgJINI9spdEEeEXuDZ658mbGmyCtCO+8+M7700jK6Vae2GhSTOGS7oKGq68yo5EEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKf33eZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKf33eZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1147C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791024633;
	bh=VHLqX41dayHDU2Uk/CfrxSx20z0SClNDXGko2sQX4oI=;
	h=To:Subject:From:Date:From;
	b=eKf33eZ0qVyK58wpWzPwKmh5npqBq7BkfDPj7nYumCz6J0A0jGpHpHVTfq89rlkS/
	 /dVFEB4DeeAlQiiVJuuJva2HzxgOCkzpS+w2oT9AYeobouiS34jltNA4zPMEGHU1Sr
	 raS6QQMVSWPOLwDnBw46pKpuhfwpeCbuWQr9xO6P4i1J7Aj1+y8QDoWVnP8A9iMl43
	 Kh2/DZy9sFgEw6TdTduDPiIx1uD4dB1le1Xuq60sS3/WNMGRx96o5RCOfAqjVMSevu
	 i2DGeNoWaG3eU6BLR5s9MuK09iHlKr8pOE6y0P3O+ppFtFl7MTxx9pRJ/mjKMPZYZX
	 H75Pr1E0UalVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFDFCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102463368.20754.18191586950969668883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b261c8608ca012cb5986a9cd9118954e8a9afd2b44fae7b5f55c2e54a25eaa88
Date: Sat, 03 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791024633
