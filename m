Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25625153BE8
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753889394; cv=none; b=DAm4ZQ7EZFYP80CKRqsdPFa4vaJbdM7zomCbJ5RZntHFNlf3km4eeuCGrAWxmab0YOO1fgZhVZ8MAs83wvFneKIb5JSYon5mn9pYHXpcqHtocHhfgAnBYUHCu8Wjv7m+lfQi5bOsH/RSH9EhzbsQsPX6sLi7iBJM9lyaz3PCTS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753889394; c=relaxed/simple;
	bh=JmHtFc4ziKeqJs0vy+futMM57cIrvjV3xYHHdGvZyvo=;
	h=To:Subject:From:Message-Id:Date; b=H0AcX+u+CJMSnDyAVlEDXLS0agEB4RUZDjrautXkiqoDbwPGpdHFdsXbjQDFjavXZDY8Uc9z7ZCMWlTw7khPxyIfwZVsLE5fMuy6giVhr7bxcteQ5g2tmPE+GZO37tXp7QpSe40mFXIUXDGOV8wOf/OquCNmmwpL14m5boyHSNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVuYKHJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVuYKHJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65FEC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753889393;
	bh=JmHtFc4ziKeqJs0vy+futMM57cIrvjV3xYHHdGvZyvo=;
	h=To:Subject:From:Date:From;
	b=DVuYKHJlcZjIbCYfCBG5IKHM+ow4S+Y14gVH/3ioq7kGH5CHdIqTuNkDgo/W9vqRO
	 33MUMC1GaP8I0AnhDxjzGfYtSwmtca54NcK9rr5LdB2HaNr2SmRhjfWWQGxAKOLT/k
	 kuTxFiPaO3r8bs6h77VDvvqjxvAJZl26YRjh/JJn3FSJ0dZDjDanMPAKsriugzKINJ
	 5OmZunnTIzXtR4iBdNci+rZLfXG3U9hRCBitwvmiwbmSTE2CMf9etCbch5EG/UHwL1
	 5dSE9Nohsld9esiXLSFZ8jFk8sqQVfMIAvOn41DYhhuRI/6ylRkKDKcJtdzl3imkmX
	 czc6E9h4ATHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E9C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388939358.9848.13460473426739630589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef54e9e248ec2dd4c132c149adb15c73207b2da72327f8cbb853e4df28c402b
Date: Wed, 30 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753889393
