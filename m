Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5870137DEA3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780142614; cv=none; b=Rb91W0qCZMiXURaoGA5/lun3KpA7NQpSqylKvtGAwc+Yhtpnm8KB/ZfUFJ3KJtAw+GU1i/Cr7rGkJFuhbxiff3NacUEKaUbzTFnSarLRAPiOQ64om+LOf9n+RcSPwVDwEADwn8jGcLRHRLDxj5CaiSvgXpf3Y+ZXPffBLWV0ibU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780142614; c=relaxed/simple;
	bh=X4qllJpV42tVaPDJIgMXjF/7YgGRgtYGUwcHP6OZXfo=;
	h=To:Subject:From:Message-Id:Date; b=Es0bmj4DQN7V6wPfsrDfM9SGOML86QarnQylICWYh4ZWPOb2bYS5VVVUEtfDH/tDq5FxOKo8Xodp0oFZGdowiPk8pqX4/oDFDGV4HFat1uathcxNFm3bbi/UhXS9Vs8sVdgQ5TMUunqBWs3Ue7F7RiO9ua15o8Ooiwl1xQ6ZxYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmczhxIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmczhxIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6A9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780142614;
	bh=X4qllJpV42tVaPDJIgMXjF/7YgGRgtYGUwcHP6OZXfo=;
	h=To:Subject:From:Date:From;
	b=EmczhxInil9kcBUMmF2uSXUA0hmkd0VvjJRZd0Vau/jBu2tDoeEHW9oYaotE9g3F+
	 Y0TE1lHBuVt1IgrqJuszOpOh+d4w0IS71sjloPzLAS23XAdkVoAEgOgheNNSWqXvvr
	 MCHZe0VLxexcUMAitLeN6YHLwsBkJydCR43iAHQ5sIcQZoJU/P7327gwrOJLCSHB+b
	 DXkszyvbd8GUYQATxWyQi5CciqpwZ/Phv9ppe8Ht/GxejPnPsbCdmutvAr4j7ssrly
	 rv2TKzrWtfRF0IambuKh33/lYOt70lVNY2Pk01LmiyIEw6A2wVYkQPNqNag0WEeVTY
	 FRGc07GkN9VNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D209BCD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014261383.17719.15131811706984473010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ccf1768c2170a7949a46d8ffd887cec507485d2b433934863fbb2b0ab37957
Date: Sat, 30 May 2026 12:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780142613
