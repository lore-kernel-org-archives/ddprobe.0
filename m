Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED7F84A35
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745639394; cv=none; b=Jer/x1Wnm0UsbET5lzNYdMbZgxdVtX0cOmwkIJNTj6q3tVE5IqNtB57o9ymcN/ZkCVc5A54b9/un0qazDtk2fOPSC4helyGOmKTMbwx9Zdl3AEl+pjwn9ectX5Q0bqQITg9o5rGQkCyvbavv/LPwZd+vpXx1kg/8SUZf7tIx1ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745639394; c=relaxed/simple;
	bh=FNsiu8vhNLM1sB/inIk/u/EG2PYxUG0xIpIlQ2fxk/o=;
	h=To:Subject:From:Message-Id:Date; b=Qes9DAN3PKgPjWCBGrxZ2UWXVzSZ5XVcJv9KLdMmEDl+XvRTWzAlBU/WJ1tW/ba7U0c2aV2peS1cg8HxAW0AN29FLSds/NgWoN0Q+bKVV9fcUzSAtQOBcYDUAwYlQCZFiXPJlW4m0iezLyPhFTu2fytoLPdb8hjvBLTIBK0VUaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIemprqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIemprqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A720BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745639393;
	bh=FNsiu8vhNLM1sB/inIk/u/EG2PYxUG0xIpIlQ2fxk/o=;
	h=To:Subject:From:Date:From;
	b=pIemprqKibRX2aVb4+O84gx34/JX0k2bXFb4z1IKtm49H/NHFZYWr2WNTYwPVs0jN
	 yLX6tv0OsuZ278+bOp1lxGG779DK49Osx4aO6TwijDUmSRyNpyQUKVAIhKFxOBjQ4S
	 68BBkdsB2PRQL7MM6Vl49KHtq/jBmI63DQ9JA0eYvQFFkcEfFgQuTOLalmO83p24Uy
	 zu6nEejnnAcU2E1y/1cdR1FsKWJp7uc9rVFRaYazcxpHJyD/yeGkcUuqobhkB7+Z/9
	 Wm3kidvWjw9olyxM+pSPMAc6tA29SAiW/481E3iRn7G4LiiZzEw7uwRHmOICqKuSuJ
	 X6ZM8LNgjh3uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946EAC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563939357.9662.3086943018956710301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c78e4d621751ed669171d72b214d79a71ec779c0ea4e0ece60c7c8c15d1b1a1
Date: Sat, 26 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745639393
