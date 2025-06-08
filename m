Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4637A1428E7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749408594; cv=none; b=L1G3tZuGjjzMOnUYCQ6AC4xzfOcc3hG+BVosd7DI1Ph62cJdPKOI66cnx8gTDqfGhzH8oV70aJGJD4U4aKSpkEZq5R8yuCHOYmv186pq0ATwiXbiU0QTHeW98r3ZaeH+0BsJqpK2u9saxROJ5vl5sJs8XGpq1ZYhg55nk72Nyhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749408594; c=relaxed/simple;
	bh=Y2gVbajwq9dNLMjk1MFxdEQ0BZ30SqVWqxi3d+3OB58=;
	h=To:Subject:From:Message-Id:Date; b=MX/nsjZhjk+qJSKvq1CgwWhgJYoNNc3cfnqc5SxECru2ObXJtsMw6l+YnhqNI3S9zsgIqlGljPmvLx6y9B6pabH9pwFxZOG/113M7g2iEqHuU96ExXqwPWtOlCiB2NjUHjJ96KipPRC8NBoBXYKXBNAS/gAuwc+dR6KHxFYsmb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grE/Spay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grE/Spay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7317C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749408593;
	bh=Y2gVbajwq9dNLMjk1MFxdEQ0BZ30SqVWqxi3d+3OB58=;
	h=To:Subject:From:Date:From;
	b=grE/Spay0+bceD6VGRR3GY+9NHjvA8Qvzk8oZdr1B0CtvEy1FVKxaSNjHTV+v9pSI
	 KwmBbfTTBTtGjutJHBl9sReH++uAbBnydAmScnmcl6HaNvQ7XYPpVCsB1os6r06Y+T
	 ViLzz5gZpzfj5qXDO5iq01SiGgmU6m0/YApBZCmn3wUA6OhExhlXtqWfVVKpc683Ro
	 1ojyuoMwfOwQo1BagflpmVYzHBoc7fTCD6OKOp2FgMfHxGV/vNKxFXQV01/AKAZ1lo
	 /BccU2k62kjz9gVDigePBchnr1dO9/e76O8NaWG1teAquUAwrmlM6OOnAfE7Y8Tahl
	 WgTpMGfGr1K0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B6C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940859358.29326.136217174978800416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83deb42ccea0e76f42ec343bb808d0bb96258fa0a0f187fdec12744f3f630b60
Date: Sun, 08 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749408593
