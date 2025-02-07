Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74817C224
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738948554; cv=none; b=c+h6T19//tacQsPn2ri+ZVsWIO8Khd77TttIELvmlJGZXzcxcVQF8Vm8ksDqEhtkXZCkHWkGVbIuQRMYyBWtbWT1Z9qfSSvV6IOVFqjKe9jYg9UMb2YPuzz/PMzO1bCcCIe/1lXe4XctGzOKGExRyllA/SBqQdjOAqufr7qijAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738948554; c=relaxed/simple;
	bh=dJZHgX6NAGi/4k2OYcj2gnk2V1lZ4q2DrF0ls9bMGkY=;
	h=To:Subject:From:Message-Id:Date; b=n1hRwIYG9D4mLUIVP/Dgq9+3ckkSEPXXRoTnI1SF64yFZ5uLMBl+KkljKIpbsLiix6NVfBIvfk3T8ZK0UPJvV5XOh79iiVMdIYdKsvzvMiD9dsOXOeym2GLOBAcaQVk6I2jLgUFZiqPWEVoaEWzVWJbMViNVXTznq9VPam9cod4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceINq5sO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceINq5sO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F7C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738948553;
	bh=dJZHgX6NAGi/4k2OYcj2gnk2V1lZ4q2DrF0ls9bMGkY=;
	h=To:Subject:From:Date:From;
	b=ceINq5sOOaqtfAWdz46Q1kr3mm7qKrt5sNZtqb5oqEmMUfbPAKcnjX33rD908mfI8
	 btv8HTtRjeUy56brRqkl+2sFhQ6/ptp3/cjYyrPlcRjFWte6PTiZX2a/YetgxZd5TY
	 d4tZJ36StoKEIYSOB7a59rqBJ/dw3wXlWr+cShVcgi+kSBLNtoiaGR52l2m3fWeIQL
	 JneeR9J9gOF3D1fpxV5zR1ADWDYCjzktGE3gwwl/ipBMzz6BsbwsaQGra9ETuqkM+p
	 WFvIXv0tN73sPdgmZKvU4IJN9RFMj6kl2mDhQYLqjU8QPYkzVE0YwFDMKeyQuMAktW
	 J6QCsoqx0xDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FCC0219B
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894855359.14598.1136467816295581254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fb4484b0bd9e442766a71829379c833f68cce528d7ac142765070e763b122c
Date: Fri, 07 Feb 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738948553
