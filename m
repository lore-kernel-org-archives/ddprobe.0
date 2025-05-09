Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C734425F782
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746821993; cv=none; b=aByD3syChsvoez4algoFc4aX7GUNBwAl5nFAlxUmxdHU074PacSj+o7pZ/Bae6IqmTIKMkcXgNlKcJAmYG8LoAgzZDmbd5pRaF7M+s+tBPbeWR1G/i2JNnpAafXQpkD0bBL/uJtrO8cuk63yU0RpcHHqRb4BgRWgNj0tl66Et/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746821993; c=relaxed/simple;
	bh=abnk+rpCY1qO7vyYXKglrVBumXpChimovQfjnhl6FuA=;
	h=To:Subject:From:Message-Id:Date; b=KDDZAxD99Ch6fL52Wcf+FfQBCjCNeI/ZMs/Tj0P8DFrdnpzzYTFC+xBETG1eXHxQoDszSCaNiVnB7RpFXfuvO13PmBC/pBpAjMbtpHPHY+W5N1u89cuj4MZE3r/J5+KZ0Yjd8Ek4ejIQiF45wY1MvUnkiFijUEbebOzWmjVCWZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ9P5zAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ9P5zAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8642C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746821993;
	bh=abnk+rpCY1qO7vyYXKglrVBumXpChimovQfjnhl6FuA=;
	h=To:Subject:From:Date:From;
	b=TQ9P5zAtUjp1sknb9S9iWc8SCXr/m2rcBuTexY/TxSUIitHEk+eAptk7hiTigRmWG
	 3D5b5Z6ggt7YgV4hmo/pnz4whL4BC+unyQyqClttoUdvvZqSpWv0MemRi0V0cEzqn6
	 ooP30Vy38XVtc19tN79bKTHgdzBSujCxEzyXJebCrfefXj3FDDZMoCiKQlQG4WoBpv
	 Rmauryjjcu4xtH4psirtIM6/E4j2Q6qSskmcA7LHBpYjK5DXugRr/IQXoRfaeVVPOP
	 m1MSbNu9quK+Lpjr0JhoGH49qT5CXPTpM34CSodg42BvPvtIJup8qbsAWPfB1jNjSv
	 J+1IHmaVG0+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B5C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682199357.6740.10169458442083520654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b243e531f70e1901f17b0d10ebace35058cc6ad95fcdf6f442f263dc25da81ca
Date: Fri, 09 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746821993
