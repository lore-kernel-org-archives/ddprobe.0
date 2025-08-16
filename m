Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8C3EA8D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755310794; cv=none; b=VJwECnw73d/Ol2lD6p27RHR0M/FqH9QWYfPlAaf47oehQfGke2fYs++H19Lghm+LlxcZS5bwF6N47JoPHqzNd5Xi+VCn4uHrfIO6cc0sukWz13T+7nF6RtkwN2JO/gpM5Wo/4qFPtktZyPqvkAyVcdC+oCCqdfZsUjFOoigK1Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755310794; c=relaxed/simple;
	bh=XleBIabCU9oSdC8Bc5pcRCdDipWtIu4T8z/BlMJm7L0=;
	h=To:Subject:From:Message-Id:Date; b=UrFuPIAbsy+7XAcIvpk2IJxQghp+wLPfqFMfz52TztddbM15TfHHB8JWdCT5CAFo6CSW/Oj/f2FsPmbmc8vTwmjSRsJJAZ6kc1HMbz+0vFtZpWSyBoRTa4Apsq1NJ/UiX6h0h8kI/ZcrKiHZyLVHfxzQFShagxqmifep5GnZI84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0hFNQYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0hFNQYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4657C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755310793;
	bh=XleBIabCU9oSdC8Bc5pcRCdDipWtIu4T8z/BlMJm7L0=;
	h=To:Subject:From:Date:From;
	b=W0hFNQYZkFeVRyUQzwZVgl6dC7Ox3pgxt8mrnu9idv3g8DRLJZgtVDvcSPHly55Rl
	 t8PEwohxHnmr7tp147sDkpEo9QS9S+yjH9Bpdq6R4J1LtKRV/r+jxAMmgRB6VwlCNX
	 AuSO+XAFvc8xc0AyDtir0i3HRZ6Yp9NwrBpAIbXV4nMDg5nxK6SPoskUHChNN9inHN
	 cU11iFtYlKDrjU5/I9+iSDoI0VZGoZSQ2/coH8SabxfU/yWsZ6pahuMU2j2+6lLirh
	 9Smsi6Itq0laON0Pu4PxCN6VKMNRcegg7bf0taogkpufYOF/qqhreCPFX4QvVAOT/o
	 CczPLNkd38zsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCACA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531079359.18052.10090891010276537868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe2d7d3f2bf36e32e4c1fa8aa37ea23bdc04d325e1e39a77e8954bc781946c5
Date: Sat, 16 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755310793
