Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB9827F160
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757751594; cv=none; b=Hg8T+c8LpXbHxBaZAhfba0uzAIaCaETxSU0/HV0FiwAWqLhALrw42xH5coKPwa99FHSf7E1sVeWExUfor1bgvIZdqPEXaFz+9i0FXgD2WkR2LL94kSoH0iOmtTKF0LNaDMa2eS6lWrQLFhvWD1T9Mp8a1aaJYfMn2KSxSfZtXNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757751594; c=relaxed/simple;
	bh=iri4MrHNnKUr4V1bNZxSHJ/KLOrofyBTeEYZluywUXs=;
	h=To:Subject:From:Message-Id:Date; b=Hy5ZgiOZlEJqPKxvbuuJ5QLeKAG8lNRhkCVkPkzVeuk8kE1aJIC5bjjtIhbqCUXdmsf5M/epw5q9fyhX+3GFrYqxGILAghl2sgcjS78766hV9+sBF1t5Foe0MUPS+rSm89PvVGa61qCqlRKB2vWSVcrXFeDj9a88Fojz7wAFDLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BP+1IBv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BP+1IBv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A756DC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757751593;
	bh=iri4MrHNnKUr4V1bNZxSHJ/KLOrofyBTeEYZluywUXs=;
	h=To:Subject:From:Date:From;
	b=BP+1IBv5IVNaP3UNVO74EuYDYeEiW0eQnk3pEVx+ZkXgpq+ZG8mamyJKZJ7/G6aL8
	 ALQY2tpXKUfP5lLW02pFWrYq/W3s46x4ideMH4pOBVLuyr9B3uRbhnvRd+1aV6W6qx
	 tUUXM1usLpa/2mKEICGy49DH8ZCc1A0AF41Lo97381+QbAHU1lTEY5eCCCPm4MtT7F
	 K/LrfLe1oXsWg772TkBUc1LD0gFr481CiDBe0SrmY+7Szo+SQCPPzOH6HM9bHPzHUW
	 uDzKCNiUvvZ6vDr+uAnTcyLY5oGp4saKRXexqFZTbPRgRnv0flS3F9uyu5N7PB95oF
	 a0LKNdUgx2sHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186FCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775159358.27362.4967160275373385048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf049919dc77c074c0e9532fbf4816a48f6e65d9f34475c6fd5336b2102545d
Date: Sat, 13 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757751593
