Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAF0209F5C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740538736; cv=none; b=cOhsYvoqXRw27N9caXqPZirrdu/dXH5x9CsJnxJwFB4DVcA122/NI4pN4RojP+7/0l99sk7c4xaxH5whwh+CvJXvKcS6Zufe93uVq35F+fOuELrqCZupkbnb1V9U6Vzv7IwY8bisUgcvUhhBb+HLFHsJE9ihbxvZRPQaD36Unpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740538736; c=relaxed/simple;
	bh=4JIO58t6wU3vYiswv54uQAEBS8jT7nH9uysRmR8wUkU=;
	h=To:Subject:From:Message-Id:Date; b=qKjy2pDhaP/2jCBIiqA4Zj+9dl6lXL1giUc1iOKSM9tuQuhSxaJZchDYXjAuYhp8i19ofgd2kBI4Hr3qgBa0C1OozkI3wSHr/+Gs06F7iE/eQGRsoK+DIMZcDo8LeVec2mufjEMUSo2gbk6cHeDTFPwkoKfqRNq7eqPXc7aiJTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3sRbFjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3sRbFjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ADCC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740538733;
	bh=4JIO58t6wU3vYiswv54uQAEBS8jT7nH9uysRmR8wUkU=;
	h=To:Subject:From:Date:From;
	b=M3sRbFjXHcqN0dODtgld2taU+Utocj+UPRoZXVGFFQDBKEd9VIeT9IXyvZ0038FGl
	 k5RC7lDXYBXrwIVc7eWZTek1NxlGb/CNFBE/qyA76GvA6dDsCuSMHZfbNpHyDZw02z
	 MnOJ/xZQ19DexRWzCv2ADy+eVupOFTuJDTAdV2YBm7iRX0yEXPckC6021DUdrFohDz
	 sIG8e54n46yyAfcKWKtCY7b7WsFjE9Weml1tK4adU9N1y58o7juW6C0qV7uDw89aA0
	 sRSAfaT6FeJJ7J5lQr/WvmHEWZEE6PNW30+lS3dcepoE7oE2sq44TSK6QGvGXgpIeq
	 JPfzdYVT2R/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97621C021BE
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174053873361.11378.5393168739932782094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474836fb226e79cf1f96635522fe959ddb563eca32787a4d19ff19b8f6302505
Date: Wed, 26 Feb 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740538733
