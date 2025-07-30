Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5A2900A4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753892394; cv=none; b=CyaZh0GJdv43nXMNezXfMIylM4jeBoovH4h4MR69SrZLDHdiKFkWid74XAz+1nQO+UkW+O1LAobkvxUSVAeLudjOscn6OC2yrbJousHQ40LFhlTYY/dDnwgCBuyM/qNQ512dUJTnvoMf5bYL8d7ZoCAEiJKviS2BLYakhMFt870=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753892394; c=relaxed/simple;
	bh=hr10QZEP40yWeHdvvmig0qbSE4s3TZ1YZOnZfZ5crOs=;
	h=To:Subject:From:Message-Id:Date; b=LBFm+5SB6bhPBG8KN561CZzm4VyTnrfC0HZCFlQKJGlALsicoaQ8MeEfb8P8ZKv5d+n/hXB54uZhN+m4d5zJT7F8b5vA6Oo0HdC1Jlu5wtjLFPHF69K/cangQjYMUuHUpzAXcajcKQs57mA46px9aheAAmx4c5DlD9XbC4NJVcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf9ltVOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf9ltVOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F33C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753892393;
	bh=hr10QZEP40yWeHdvvmig0qbSE4s3TZ1YZOnZfZ5crOs=;
	h=To:Subject:From:Date:From;
	b=Jf9ltVOagk9x9f24ohfdbDnMghGEWatC6rWrRgnBEB3Ymf9Slz5Myz8WoYZAYXZTX
	 5tLzK2CSF8oL4/92rXZnms7P5jBH3HYLmGRACBFb8z3Fbwmo4q0FrW9oJtC6e9ipuF
	 8H7ynYZ33y6GRGDH7UncwwJ20AMRlKcFozQmzIOKGGl+juxmeVt1ByuVk1xlEXXdCf
	 0sBXTLSvxb2QRS+cK/yh8Zu6NDcKslEf/M2WeY36tGbaclFWnRi3yQGzUEw5BQKgJN
	 05ea9FPrqDeY+s3NJaT9v3mZbtWJ//Hr796fI/BYeFkD2rCUzozkirGJUAnYsX7ohL
	 WBo1rFEUSIQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91449C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389239358.1100.10924908577343825374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae440c4843fe99843d4c0b504ff60736bfe2460be7aba44206e5a5a6007d7731
Date: Wed, 30 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753892393
