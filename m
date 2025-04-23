Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2A170825
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745414394; cv=none; b=mBnsrewJ7n8uHHSGZ0B+3fAgwZWDWF+axaM7n12vgXuY4KFhx2TsOxQRzIwQXvzWBECfabFM7pWOKoKKMe2nA8gsh95L1BLg2PWExcNsCW2iG1DL576bD1RyDzjh41ka88pWn/0/QC7u8vM53Wupu3KFG74MBj0HTZl8o3rinSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745414394; c=relaxed/simple;
	bh=0b2E26ye/U8wgP6VRu1K7qu+gIh6gQ1s16wHd01PWfw=;
	h=To:Subject:From:Message-Id:Date; b=LAQh7BIO4qSjePQ/mUWBrLYoikjTtP8/TuACDU6VmDAsJ40rwXXkyi31PB2H+shQrDRIrRyXgCcv/jYI+A0OgiewPNWk/NqMsPeT2hqUTaJRPWoS1kFljTMoPKDxOIeoCF6CrTTEL6Ju7iH1qcD2EpRjux9PLa86nPl3wESDSSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rrmw8hLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rrmw8hLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A371AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745414393;
	bh=0b2E26ye/U8wgP6VRu1K7qu+gIh6gQ1s16wHd01PWfw=;
	h=To:Subject:From:Date:From;
	b=Rrmw8hLrMJjBTGKXLeRzdXAoV9QOlFRpMofGLk7cqeRFhPuuRfIPbrg6IO/Twd58n
	 De9YYRyzlFgwf+uJqNPi0B2U89uQ0qx8ubvXq2iDRpu+o5s2yJiHbw/+8ItfRq14Zw
	 Ul7qYyzw3GkX7/WyBzX5MPmaavRObn5eG+e7cUguecBh7Fobs9NaB0vIE7V0K+BwUo
	 YA3mYBMKaQZP0lCg7HFUFWKZIei69kmfvi8/UrMyURUCUjljr4d37nj8L3xHutnI0s
	 UXK5TrgzRlNckz17Edl4Qd1DubZBBzMlYxEPkei3Xr4dhgnqqCR9rschCImQJ5z30M
	 qao3Wqj5PLL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F649C369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541439357.12431.13456937411474153890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3e359cd726c9e934f9db15fdc2137eb8979efa96fdd6661492cbd99fc0af7b
Date: Wed, 23 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745414393
