Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266202DBF51
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751979595; cv=none; b=GSohqyIAhCiVei5tiITOj/Xp2NGW1pHxrp9Vd6I/2cJpyXx6XAicOFvSW6ZuLr7UTQUwTDXdZtut5BKhOPDngDoOQy7ZzsBC84A8cCxpi98C3ORAtia2Ylp6LBFMcvhEHWuOElwHF8C9opLTkezfR3dKoWlWyWGCXLacfBHawKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751979595; c=relaxed/simple;
	bh=cW2L+oK42mF5+oasALX5x8zLfX0lPAGwX973ZXgff3s=;
	h=To:Subject:From:Message-Id:Date; b=Zx55YuuXTy2jrBcKhNwVje4/hDfekLDZszOvcIhbEoSVwbvTCbIUwY2Rl35f47/87VCIKPGOgS6sYWtNCK92xVEb4EFnyKkA1o/mapgVwO+F+OjNn4M/C8kmSgjc8ShYs7Z1F370T4PtqTRPpo6UXtbep9CayWWzo3Jzi3wViiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ9kLy5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ9kLy5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751979593;
	bh=cW2L+oK42mF5+oasALX5x8zLfX0lPAGwX973ZXgff3s=;
	h=To:Subject:From:Date:From;
	b=jZ9kLy5B78rVGskBORMsedhNWD4G7+OFsPBwOVjvHFrWu5ycozQgt9kl1AfUP7NKA
	 8y3ObjqIsntEVnZvOW9+absQrFwAWqCLAu94uQQV2gHDB4nwWs0sgn8ySvHa2i8Nt8
	 15Wj/ep/DJLi0r6IEvViAkBfv5B7GaEysvk0dfmtuotH9FuS4g9GLP4fvYL5kstjqu
	 PmFkN6fvBk1ZbhFQNEYZ5XqCYm77qYVDTRgKvxTdGejH5PAnG8l4Qtt/xj6qYv2S49
	 E+XxDtLqX0GRwR6bmaXZAHmvHN1hHvuEI5edkgk2zR0lrzm4tMO6qsaP1G+LrAyKwF
	 CPC4vq427ohnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E1C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197959358.8578.1791915001483464734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b7c86b117a6a5152bca98765fa163d2745eb5ef2644efeb2e0e5761438407e
Date: Tue, 08 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751979593
