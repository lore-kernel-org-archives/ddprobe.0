Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381D56EB56
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718281703; cv=none; b=Q1eX5o9LSgLKy70VSy2D5v6dzgRUKiD5bPBnyqcl++hpZvWtCw4WumcQP2wahIdg/0Vhefb6UDtdSEPLuhX4APTCpDDZG3pEJIFzx+NouJ5NU+nvhY3SfBePaxQOlZ7uItzanXDkKEvZN5lvfznU2OfvvltAZr1LLG1MKRujwU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718281703; c=relaxed/simple;
	bh=Y0rgQjEq4QzSy2WGKnfykgTrKmJWagEacUqLLjgrCuw=;
	h=To:Subject:From:Message-Id:Date; b=L91Tvt/CDIXSaEGQKegY+rfXxA7qFRTZPp1zND7rIpKTbKVo+rU26UqNah372EynZFbuqTp9xd1sy28DK1cbtCK5kDV1LfHyKtHhczNfLCCljl40s01Kcl4GpPNSCCCoja7F1kD/YQJhO2BUVvFxVe+IRyMVoDcjMtJ240u5WOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7IrvPWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7IrvPWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 058A3C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718281703;
	bh=Y0rgQjEq4QzSy2WGKnfykgTrKmJWagEacUqLLjgrCuw=;
	h=To:Subject:From:Date:From;
	b=H7IrvPWXft37C3Num4GQX6NyoMNhi05QVnc1ySnnY5BigL4YhipbcZqjLmTmH7YEk
	 XGhOma4Hq2tM2QFU94rcp2HWDz5Bsbu+OOpDX4yvLimUTcCfjzQDMZ6moLFZzf0OcD
	 NSFjqX4IbYAQR6obqjSqrAWZj5bNoJ4vvmSCpCVTle5MoRH3NFUnDRCzx6LiTYZnWn
	 FjxN68WKEjq4DXU4duxU4VvFHNlgd/UaOSr9nIWqV6iS0S6mvOOTjLzpG+wSTRQwJX
	 xax5vzyQw3RUElNmG/weYatpYoQjBIVn3q6zBAK/bUUh4hXXrSf4W92zbsP6VWTctO
	 76EaHmAAaVheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2659C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828170282.25678.12917454186272711407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3dd4ea59c3e03ed25c65abdb87486c1a135f9250c9a5106ae12fb5b56a100e
Date: Thu, 13 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718281702
