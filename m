Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE772080EB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737845754; cv=none; b=j2sKX6aQdW43CkehTBiTt211EQ3DCDBvfdsZmnZwjzJT+onEV1eAiDENCml14YR/uH8jBhayS2fUQFrwz0tO4MTg0wMGm9dCO/7HcKxzTceUl+9x/5nMK/LnUXJMg4XLS60EXeNxbNB1KW+xegfMqL2IhHB0CJX4r2/ioWqB/hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737845754; c=relaxed/simple;
	bh=VcOduNvf1hWEXM3CcQ7U/0OgbpaOpSNTHJzIhCG4Bcg=;
	h=To:Subject:From:Message-Id:Date; b=nC4/S3liHyOPy3WFTCY8NwVbWRY7y7qO8409qbmk7jz7VqL7JHsHx4iDw14eXiCy+qKGW24PTIzvpmpVFpjEZgGhS5Ml6VvS2gGfRN4rWJRDys1z9xE/LmmkvGq+Px43pAbX1DCXQTK5l8b4L1OTG0KHwhTn6vu0Qj4Wd0sbrBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fsu/RB9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fsu/RB9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE9BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737845753;
	bh=VcOduNvf1hWEXM3CcQ7U/0OgbpaOpSNTHJzIhCG4Bcg=;
	h=To:Subject:From:Date:From;
	b=Fsu/RB9JIRaf3+DXMIiR4lGen9J+BNjH4Zo32vyMXWdHvsOnoF9Wtrtmt0yclMaRQ
	 KAjwwQNS4b5CY+i9oVGMcdhzCbP8RC21y42AjW/DW49sYnc08QjsVPOwpNcCtVeldP
	 GKKFgslUYZp71S4DWcWW8DkSyJiZvu79DpL+rEe2hDjc+coNfZ++SlxCyShsy+eqJM
	 kGHR3fr7ly7sJp/9XYYwG2T4rI76NuSrn+i6Btpi4YIKJJr39HU6GLb5ji4q/SmnR9
	 x3rRGSPFJWcD7LNQIL8lPJF0LsXCvLikyNs4Wk3dzqUoE9YM2E4ext5KYojgh/2QH/
	 fBL5GSVsUnA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCA3C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784575357.3624.5646697634907291073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ae2501fd70612d7b02476321d650bbe3852a81bb8fc23f8977e02bb402e737
Date: Sat, 25 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737845753
