Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A93A33EA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744194594; cv=none; b=YivlqXgH7M9imdYiXnxK9EnnIOlhh0tzXpO1+etwu6icAXCjS+Yu3tycroKXv8GSXTcTFSDHm3gHLJOdG3H3iufS/xc1cOqclkkm+BY1V/HyPqLfYwtlth/M7GMbMUyLWZO3k1uc/FfAJkPUsc2XrQAk2Dw5vqyazAqspUbEXhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744194594; c=relaxed/simple;
	bh=u5KLb77/ITg6Alp9447wdG03MbLCPxkDbxO5okOcu0s=;
	h=To:Subject:From:Message-Id:Date; b=f77Q/ecT9V4xBgnFaZdRmlTPOmgFv/Iaj/fkvUrEkRbW7R0hkODjPu3omSRBK9AnHI5jz5phlVk2WC1Gcitpp0WhX5fuHS0V9WAsN13jEKRrUErTIQKmFhh9/zl2nzcKyLiUTrG60Pk+nMUyiVjL1Yx+vrpMq0dOBx3AAUydW90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjcYKQK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjcYKQK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6319C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744194593;
	bh=u5KLb77/ITg6Alp9447wdG03MbLCPxkDbxO5okOcu0s=;
	h=To:Subject:From:Date:From;
	b=fjcYKQK7ZDDAMbWo7hqxOdmmwFZ4bHgtHAtirwT1iAHfYqF3pb8tCC4HGkKi1s1BI
	 9fYfV156cm8bl+8t1rDdoGjEIxvYklrIQu3aUFgl8NFTxdmDV0VCYBc4DCApoS1i3Z
	 jimaTXMJLqs9LOFPrHKCAYVCw9lMgdnHi3eivew9QSQnFP2pWLROWZmP8j+89o1foN
	 UzDsptsjXAY9zQIwDwiPRfIUSgsXjEjLOnYQ9qqtEM6cgci+b0QGnBOBhSgF2xKRzN
	 Y2DSqQDXayuSQrONRqfEAcBBApPoUuvCGgoHiA/e9gRwfnkgKCL4YMQ3/plRR7HaV7
	 MARSyJVoVvijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176DC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419459358.20928.15322598189355491123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7684c5a0db3bebdfa1ebf7c81d8d6691808a39e3fc3d8201b41f22e03e3146bc
Date: Wed, 09 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744194593
