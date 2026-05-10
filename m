Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFA118AE3
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778380234; cv=none; b=W+wcwjBgsQ5cAQRcN4z4kCFmlb7GrKNGKFn4Pet32zcqm1/PUJtO5citi+d/UlzoJoCKsXKMyAj8ltflFe8GqbWZ2DCYpJlwpkiPa9ZzGJ2tKZJVgroD20+vQ2y/ZpclBQLj4LhhWX8H3j4DshMRdHKvOdoU7dzr1LCZwCPfV28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778380234; c=relaxed/simple;
	bh=0j1BD/acStSb5gC9XWuD5KtJQDRyxY9++DcAtQCVaS8=;
	h=To:Subject:From:Message-Id:Date; b=ku2xoUCDvlbSOmcgovonKa1bAHiWngDh/3Bdtim9kQ+bpnjsf/Uf+1Yut4gDojxRCgGqxaXdgG4AYsHH9L2/QHq1oJVtyek2ZS6eGOqDJzegt9tbo+nH3dGCob+hxD4ET4qlASF9LF0gvya1gbICAWtzVAZq/+3lnYggxKz3k/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFq+mDg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFq+mDg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08DDC2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778380233;
	bh=0j1BD/acStSb5gC9XWuD5KtJQDRyxY9++DcAtQCVaS8=;
	h=To:Subject:From:Date:From;
	b=sFq+mDg7XI/8Nn8Ibz9FSkn+WWtlE66TQaou10dFv5fsOlcDCsUSvwBMeCZvfXgbz
	 9SexJj3kHkCRk9ZXkwL+EfaZui5yqR0VOg0HZbXPB64bL4VaYfeGBDeLTSQqDXaDXw
	 1NYo0gTvaMyz4ct45QwRc3TBYMlbHDutm8s8zj0nhJ9HsGbAlOWT/LEStm74QMdPZ6
	 IiN3przHXu6Th7JkFMtcILM+PR5alQuuqU+Cs0Vzg8Ee/ADHERJ7aGYI2E2BEJ943a
	 W7WfMybhoC4UgOwTQMju/0IzVa/QOaRZHChZ1FUCckymT7V0JgWkxTV9B7z+7qJeal
	 EK87IZVDPQmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC599CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838023368.27469.8673273997990292820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f000f874446888d0816e71a29b27ce9ecc0f395b1bd7efa7825fbb21c20501
Date: Sun, 10 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778380233
