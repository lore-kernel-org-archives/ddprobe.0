Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5247B8472
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745037595; cv=none; b=Lmgzvx3NL+0RTPMcvxKm/iiq+Bni+TcCxbu7tHqU5F7kpVitHxidip0gdVH8CyJGowho+NS3xQubk5R/b4wOAHX/jexz9ifWXUmNOsxF4Q7mp9cFwRoqh1Hedl0I39gjNhOerZDsdNVw71Hymg1gRXGZ79BTyDjUdguIv+q9BJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745037595; c=relaxed/simple;
	bh=Iqi6scuBVDGENKNQLs6/dLf3qDCs/v/u8XuEJa9H2WY=;
	h=To:Subject:From:Message-Id:Date; b=FrAtR1KiNtkkWaKr2yBQr/2AN1ebfsCjgsA4T88YP9hrEcql8ycj2dx/yQlZyb9yorH/LWrmnIm6jFQ9/fe7erMojmvFM0twXAZdUUlBip3kFKD/43CQ2TYlUsNqe9HnUHw4d1TMNb/zL5leq03iLv405SNthtiAG6SFUbYlYKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEPwgWmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEPwgWmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32AAC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745037593;
	bh=Iqi6scuBVDGENKNQLs6/dLf3qDCs/v/u8XuEJa9H2WY=;
	h=To:Subject:From:Date:From;
	b=WEPwgWmAffpAx8m2aGf+/UHfm2krjPP0zLIJxbWoRl4DlZZPhFQ+IDRpZW525lsNd
	 UP43pcWc5v0NiPjbOsA07V1tHXUdYC+JUfs/A5pip6y8hqwx4MVmmxzO0bsL/u1guu
	 apjLVxDL1XijYcj0zMQA2eqJnDsMIanFjUT4BCREwza1bEth+tmFsmWy+o8E/Y8wA0
	 0tMEQruPX36BGYtaGnvkEug2v7cWX+JLHGsWbCf7O9E/R7HfFTFN9op/A5fvgE5fcR
	 3iZi+zOL6clq3+Bs2ve6I2d+YNowznz0wBScSl4VWsTAGT0OIHm4KmL6QWeEWKz2xD
	 0ItT8nx998UUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F6BC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503759364.28762.9525554734992474000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea978d511f2f7bd7aace1ddb180825818fdb76b350eb94b6a3c767134dadc70
Date: Sat, 19 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745037593
