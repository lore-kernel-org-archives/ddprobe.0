Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B311F181F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755923994; cv=none; b=ceZa7K8JlmPrNXo1HX6uIP6KYkou/aJjCLtabunO5wCi+n44CA+U/gKuh2OS0mnfYE/QH7ve7tmAMxEDH9VXTWvNqxM8B72ur2fIy/ss2g7NoWTFYDV0Ctq5qRraC1+gj7yRQrkcmLzthJLzOiWOR8hBLi7NjJKohj7suLLDTaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755923994; c=relaxed/simple;
	bh=VuCcd5nPQUPnEwZbAbpJLWiBXvxkTNPYAZ6tVDpEbXY=;
	h=To:Subject:From:Message-Id:Date; b=IgIbEHaPHFuEyyolSV6bLVniKwh3KT2w4jywW/Y36Chw/ODFNJSUGTgJoExZToEJ89JOGwPYCwe+A6wKnILL7TMUYKJ3UOu72sXkTj4a028Mt5tI/Lz/vOzYjTboytG+hbrPk6OJgd5NbBBzZT0ea/FZL5m7/sQomV315pkR5FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k60Wapn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k60Wapn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755923993;
	bh=VuCcd5nPQUPnEwZbAbpJLWiBXvxkTNPYAZ6tVDpEbXY=;
	h=To:Subject:From:Date:From;
	b=k60Wapn9CRFzCxXTRdF0kI9pqo63CFw8+H8dMqaBlkvUbzRLjpgDAluCHpGm1Omv0
	 S95fNhqL9LuSQ5kyJV9hVhTIhtOhoVsjCA+MOwbGkrAZ2rtAV76YKUFJvbUpaR9rbV
	 eQcasmGsXttrSPjv4nVD0/OijF82BuSouBlexvPHS9O/09sghmfksEWSIwZOao4jqG
	 VaBtX88RGD0Y35H6BSQIjUnWb5cF74I2/lyt/Eqcl0VkUhDytmp2T1vXdOlIu71Gke
	 M0u1IIPvZMCjYM2/bzvhRMIUrXqjrgmHZqCP9ipEzIFQ2MevND836hlrcQsjvXvA4S
	 BR9dbhPRAEHxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342ACA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592399358.31903.1839188978504895921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e99a28c6ea05bab2a3b9a2473308853bc66abb2934729749aa185361692453
Date: Sat, 23 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755923993
