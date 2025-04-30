Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B13C2DC79B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745986794; cv=none; b=puZ4roirBgrutBE+nMMaEC2ooQozREKDPYyqLeUw9IHDaF64OOXTpS9QKne/EBP3wySWqMkYGaKnXznzeqBwjrftJEZ9bqFPWPmJ2Cn+ojncwrBBbyV4LjYiBNiJcqRkSSdaR0UFI06bsT7c8crQLWV7LZu61FZmj75qGnZO/mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745986794; c=relaxed/simple;
	bh=pa2L/4o9RCUHabTFPnCjJl/9oTCYmK9dkzV8s7BGqDg=;
	h=To:Subject:From:Message-Id:Date; b=dl+ps73aE5Nj+9ARhmIb8p3XZL2k8qFc28B8NUSwc722l9SAa949WwrhA/viIBPNumzgCar3gEUAJGTsP2/e1dVCvXLWOMCEToUDGqK07HCQmuYllKRBdIasE0gf8jixTGLrrDy1iglMe3TkvpL830G7x//rx8Qk6axWb3uBR/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6lD47pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6lD47pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C04C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745986793;
	bh=pa2L/4o9RCUHabTFPnCjJl/9oTCYmK9dkzV8s7BGqDg=;
	h=To:Subject:From:Date:From;
	b=C6lD47pGTv0rrLiUS8uYAHaJ8zutfzXc/ToItluUZMvomWnndgX+k/+yEc2YzcuIF
	 hjaNA/+g228wKAEusJ0aJ9KB7WwfPiaLBWbFV+FE/PZ8JsErh13y6alMY1W1WGEgw2
	 ehPLp3S4FQvhZ96so8+HOj8ruhfMaCf3AQ5/px7myVsvrFBpAW/468bmvg7YfeWTFd
	 wZsP+7zNZVTbc4Fswd40N4XsQGynff3XHk2pVqyuu5OedOGs1h3KTUGjDw5wV20g3v
	 pSqwUSjSlmsCrhpdjP2ufGZ8fjgHowBXocZv+Q6JsQeuuW1ZdvKLU9c+aqBqAIo8Ke
	 eKXHpMPuaUTdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6CC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598679358.18744.1462752118235133334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcec184f7765380443e14e84be34cc6b2efcb291c1a0d62a373f7aeb4552ce15
Date: Wed, 30 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745986793
