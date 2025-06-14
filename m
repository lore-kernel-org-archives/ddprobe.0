Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220C93594E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749910794; cv=none; b=ovQIkDgtd9KmWOSIffDiNitV4A7cbPCsCQQj7rlndOAWWd6KSk6ZrkWabGGOaKh/lCVPyNu9lgRjq+qTxipzLEA8Q1LJW/0TOfEfyr6pnEGKKjtShdN2xNnIte5qdtKS2sw5FkcjRRYose+pFtLbjIIDEM8W+GBaHujxtwKGcU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749910794; c=relaxed/simple;
	bh=eUQBnbprnGkqlD+5lhN7uGnZj8P26ZYbTGJKhZjKVHY=;
	h=To:Subject:From:Message-Id:Date; b=M6noa2XvDh3YOfh52jIvJ0b9yqmK+kdnxNCO9Y29JWYbkTLoUZt9vJqfPrk+IY8KmF0vW2IozwZbnv5ozIbRtNHf0LFp6vVtsluFqxvyijhzD9UAL8PFjiftX25kzo0Sa7I7uPiQEqXaPiVMyI4QjUlNqQxTr6VIurhakx+avs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVxkgkgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVxkgkgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1667C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749910793;
	bh=eUQBnbprnGkqlD+5lhN7uGnZj8P26ZYbTGJKhZjKVHY=;
	h=To:Subject:From:Date:From;
	b=kVxkgkgm1Xweg6BvstYGmQUxiu6AZSdiO9td9r23/AX9kf4wyTiP0MpkrqYCsE8wN
	 WT3y2AtHQwDG7X9EVhswgyreWm9JECOYgndUdKb876LBDsJQwSvMKiVIZZS+W/TTzR
	 5mvTzfniGvQWCCmk9cO6YULnc3JFZzimOMFfWQywLUudFxamtBDRqb4GTBMjNhMHQm
	 NEerPeg4pnnP3fjGP+XzbrqDlNvW0E4DCYkFIBpaUc2UT7vPwwOJtkX0f4vBizA9uL
	 tMqvplFdf3y7FNx4OleDH7GPj1yTDQlw/0nLr2CKRp5I2zhUwvNB1Da5rap9aDziXP
	 TO3i6ISYz0UOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A052AC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991079361.18462.10461962796276824631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83cc3e83f10fdb8200bb48608433b172ad936d6f5f2e94c0c2b25b9b1885429
Date: Sat, 14 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749910793
