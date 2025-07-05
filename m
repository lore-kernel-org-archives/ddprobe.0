Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C35383
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751684994; cv=none; b=SoqARwbWepTbreRsTeVrU4j4qDJTzCfhwaIHpw2YUSJQ10YPA5V4aV6DGVl0+V+c63ryiZCRyq2cDQHjFjufwAbgAlzw/gXHZXWP9shxMp36WEwDjOqVvjSlelZvsig5GtS0Name12YxDZhlGBeDM6pI+RFm7krd6FawY5gVzSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751684994; c=relaxed/simple;
	bh=T33UKoPaYla6trcnlfjaNTPxeb9dNGpVrCuxA1vOvpw=;
	h=To:Subject:From:Message-Id:Date; b=OSf88IIe/vGEj29uJ4jdKnmvsLLWcVfiPVZMEPgeW5ZfyRTjSzPdvEpDOgKCuN/55rt0e4UYjp1DbSJtTSG8avcZpDC4qbRo/IIFlbLzWEyoGMh6t/qpJ1mXh6hrYG9jf/Hcj23sckI/Kp8/j14lMNHIBqEcL7kb8LfTs+k2tgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaJKWWcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaJKWWcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D90C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751684993;
	bh=T33UKoPaYla6trcnlfjaNTPxeb9dNGpVrCuxA1vOvpw=;
	h=To:Subject:From:Date:From;
	b=BaJKWWcW39xuyEswDWaQHYzWoU1PH2bBSXgiKV49XvryhJ8WzLq46V1C0ztoKHShI
	 YufWr7Vg5/Ug/+cNz/35tcRYFrxOVmSmPr+CCQbiy+UYaDsKroCmERDHTFmIn3EXVr
	 AHlpGNNRWK9StL3bOb5hrfadK2YY+698jTwzrjvtReOJyyTRyAUPBC5LJLsz2Qey+z
	 SL4fV9/c+kNl8B4450Vle2GCsq8xrFV9zP2gZyt5vL04SAKHeHUKR13H3nMfSdO66L
	 QS8Yp23NFdW4wnJDIMYe6kLPuxe0cFGs7n+rphp+z1uCmH5xUu1eVIKfg/xcRASSIb
	 kwb2fWUSke1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF5C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168499357.25981.15580041757220258052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22449428727ac0fd715013302514febbb7738e3e9eec5e9d89e5c3e49b66a60
Date: Sat, 05 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751684993
