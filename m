Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEB8156661
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772930094; cv=none; b=kGm1Igc3lQOQRD7BhNVxVdj1LSS6+zUM++wZz/F+GZzXYIAwLtsnXre1Pu8Uh6BkaEnXBeAo9btmZWDG+q631nIHOivyLLY0ugZOh/qoq/Tbnpj9NXfW44E3xgCvU6HArAkrEXec0LBM8PqvupXBwV7qhleXk3Gbj52khrMAyKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772930094; c=relaxed/simple;
	bh=VGyxfXyoivtW/wOY7Tm+sIfIbgPTUbQoIYPrHgCaMAE=;
	h=To:Subject:From:Message-Id:Date; b=i/FOOdo7GyQH8WvrKyXLZX4wZdSXHaKd7Fl6CxbCGDiuCCzQNWPwxfGfuT7lzDk0p7FQmWoY0eC2CpyKZ5Sny6awuQ/EQvL5hCQCxurYic1vY5Caor1DK+EBAorg1rHDJkhEidaOXSHaNnnOx054zyuKwbVsJKPK4a0+e4imX/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBc5j8Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBc5j8Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CA6C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772930093;
	bh=VGyxfXyoivtW/wOY7Tm+sIfIbgPTUbQoIYPrHgCaMAE=;
	h=To:Subject:From:Date:From;
	b=uBc5j8IqUDDM+2p+Zum4v7keKD0oRoIKkKhg5Q6rsoyAeHKqz0hh1DPhBZiGiUcUb
	 onBSl/+exvmDYONX5A+aVtdl8GKMrw1BRevd5j1MyGHJwOdDZ5VJInW1w12MUXC1yk
	 9pbkCczDeC4FxsZaGIG3Yao6roJQ7MWn+wJEmsAwaBb5X54sSrt1VEkviu0ioX8cll
	 aB4WpAZu3AQUpjarOVecw6M5fzu6pFadXFqZ1hmEZkm25AsvQhRIjittMvCLjUAOfY
	 tMyxYCfXjP3sHnDN5z3juTH4lzpS+wuBwZ5qHxjfnP55aasgnr17s0Rvq8KmjpInVv
	 ieFJTufV8pNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A7CF55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293009358.18631.18044970089345377986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fe538b7b8dead12b0fc5921f2fd1a5d2cdc0f111cf55ed632959e11a00d9a7
Date: Sun, 08 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772930093
