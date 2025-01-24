Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D77CA64
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737746754; cv=none; b=Fk1Mn6CQ0BKYnPLKeRdhBtSlXH6zy4nH/CTfvKbahorBWBHAVFCAxRtyAdKppzUiLd7gydlT3b6T9pO/LRBaerPUazF1UBzyoNupewk2zdpiWHfJA6nwqu0VDZr2mgh6aO/FPUH3tTeQplQoCR2cN/c+VOFZuycgqzzRpFcIGUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737746754; c=relaxed/simple;
	bh=8LMCXo7F5hpjKll/SW91bUxTMoNcSVtB2eNxrgeXYHc=;
	h=To:Subject:From:Message-Id:Date; b=BDDxNyeq9sp7P8MzWOskykzbAUuFrl5o1Qh79k9D2LwZ4VKpFNyl/cAHq9CHezY257HDwBRmkUWQnsxFpOwyKvpdn0z7pYtLS5wg1Xg46iyGhvopmSfL3VUedPXJR1in0anzjm3imV1wuRlY5QF3mnW2HJXShw4ss9ffajswi+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEnAiBHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEnAiBHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA3EC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737746753;
	bh=8LMCXo7F5hpjKll/SW91bUxTMoNcSVtB2eNxrgeXYHc=;
	h=To:Subject:From:Date:From;
	b=CEnAiBHyju9S4LBmfNyD4R1Cr4cTwz8R5emtm7aANRG7nR+pNAenJdZEtJ191VXgF
	 qLFYgRRttd9y0nOJe2tJsZbIY+v2dki5L5q4GPEBeps8anqcC5AVw+vbvoAvVl/lQL
	 4WOBlkC4i22ix3TBPyZ3E5CzaxBMD38Yw8i+pBXDlpThK5Bw73u8DJTF502yPz043Q
	 s8fmTrzp+Ghrkqax4QqKMAGilN7ivNw3KwrOlXPJLNj6CdrM8WLPEMxAnq0kvlUexv
	 LgVmGjtDQ2WI35CIhTPZVl9g0WT4ZneXx0jcyvsX4bXFcMVEZz7brsUBp06UNl3CZ7
	 claYg5gjNP3MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98393C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774675361.17246.7164176336763957025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02668cd9d6c76f2da59e6abb41272e400ef0c0fa112777f3157576565f6897d5
Date: Fri, 24 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737746753
