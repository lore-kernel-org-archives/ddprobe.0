Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3811854
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735748754; cv=none; b=fTumO+1KJ4fNogDKJYG8LRTEMboPZCrcbKByTn7HnEEdW5RLGINSDoiii5cYt0vo7af9vRCm0efVxCbS/+aUwQsnEWz8sTKq+QKDttf37sDuUGuCJQjpF9xBeKO2cplJU4iciHmEBfsLxMdCYAriiAxspjlyIkBhZxl9oy32Fx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735748754; c=relaxed/simple;
	bh=xe0r0bW6QHCUgYR6NrS1z+cH7R3w+4wi1Wp2aAP2TeQ=;
	h=To:Subject:From:Message-Id:Date; b=GsNJirrkoP/oaSUg350jVlVljmK2gZqz39qsyOUfjlagrKP/FPPZ7+V99/sOUexXqn4doC/DkxF+5A9pC5qpE0tNguDi9RdX7FYaSDedWHOC6wmxvuWdNIyTCIknEuHIdrK5krM8arOJ9NH5z688MSfFw8W2hHIvh/3xcnahhxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghXEcXOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghXEcXOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A83C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735748753;
	bh=xe0r0bW6QHCUgYR6NrS1z+cH7R3w+4wi1Wp2aAP2TeQ=;
	h=To:Subject:From:Date:From;
	b=ghXEcXOiLqZp3bd9n6NbdFPCeYh1BMwbo5i8SQI1LKwF1BKoojY/sHg/gMfWvrqHu
	 FchXTJGTINNdhjmjI0k01pRRoowbOpcKx0iUB1iNfYFxMmbAoyWQAEGKMN4WqgpLsE
	 HYTRKBfj8mvbqo+zgugb/JipZSKUKuhjQAxBVRBjdgaL4PXABiMTHPHSZwp7lcqCsp
	 Sg9IIipVYyyYNMaNSdfXDdffYbjiLWJrMH4cOs3ONcSxVU4MvobKXl3Te4Qs98F3ZZ
	 83I+Ir6tRlgmAwbOujvQXYYCX3qn8fR+iAiq/7oh3SMNduY8MefqVoc6+Y4YEEnwDf
	 /mLzB5I0kVxLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92993E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574875359.21351.16972458365115538068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b963e8d9cf622b6989bc03d27933616164e9225fc8e92256d8286df5ecd0d714
Date: Wed, 01 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735748753
