Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCDC1EEE0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745937594; cv=none; b=TIsabQi7X6fYgrFUsKhoPEes22gd5bF0s5v1CvDYEfvO2QDKcG5Lq68IC4yPSpcNnJYWHL/9YR6SiPcg3RMOjsRNVO7dySkGnpPRKHMo2xaKiptv1Hd4NszylpAghxPaRHZ+McqcC6ITGCaFeRN1Qhb49CHgKlpZTG44eSY2j4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745937594; c=relaxed/simple;
	bh=/mgFRUVT0fYbYq+2aLd2G5Yu9SrdO5PxcjeTw2aNIx8=;
	h=To:Subject:From:Message-Id:Date; b=rlLT3CUd6iVLh3LCbXIR3s3HDAqnDo6KwovBjuAZ8DhWTS+dgWus7KGg//gLiMl5KNcgjHUCU/shIQ2988bv6s7hedRP0uVPbUheSHhhL1zW5U/YNZ7ekeSlYUv6gzcpJBBEff9zwyT0avURpeOYz4N05J+q+B0XCUmEVw4lRYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhCVVTxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhCVVTxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F73DC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745937593;
	bh=/mgFRUVT0fYbYq+2aLd2G5Yu9SrdO5PxcjeTw2aNIx8=;
	h=To:Subject:From:Date:From;
	b=IhCVVTxTubnqPIFRfikrBgDEKKbJiguJI2Resr5pu9QM6zMBJ0isG3sPiknCX6AY+
	 gfrTsoQUUGXjWY6DoXYsPTxd76zhIxJDsBtgZUgA6JhTyV7iJj68JJgztOSjIh+L1g
	 /qF3fLL/sDTzSlUFr0/lcukVt1t+bRBrsGh8uxt+rBsAtyfZpPeFQdOGqonybL5bv0
	 6kCqZ7zdjlTHgzgLu+6g5gZ686LMWY8Ezv7kQobSiMnrb/ql4gJFjYTgb+jg3hyOZS
	 dwJ2FIaadQ08j01Z2eY+QB7PYCaZO6Z9qNHNE1t0kK/Dp+kD6aG3H5LB2qw2Ul+Z9a
	 4IxoMZrnaBuRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DFC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593759357.11254.5290917891460916082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b3016a52a88024e565076041c5156de5c0b2c6635cb7349fec08aa7b86e36c
Date: Tue, 29 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745937593
