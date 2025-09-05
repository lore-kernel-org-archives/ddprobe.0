Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FC028D8E8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757053795; cv=none; b=afP4p2ynWOHjg7/yVFKtyIUs+3+jxBXgZjvEXw8YmsbFUPazx/9k9TFem2UH/a+pAkX8dZilqawrxI1Vz01s6d8gtAWzCouFd9MjdKaNnEWoDKHaKD7mMnJ/wBzrx37YBn+wfbl7CDSRsZPKWujeHssq0i4LXOrIfl13B+OaZTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757053795; c=relaxed/simple;
	bh=EaOuFmT4j5aQbbQyLPNsCC6i6X/3W/DOogSDBeAS+qU=;
	h=To:Subject:From:Message-Id:Date; b=uH3Vq0PHEah/qOHWUxGuvjGHWe+NoeQ/5S9pxr5Qbk52iPFYsyXoez5eW1msWwRESVWK+Hz4PT+Ic7wL5FUE8heE/4CQnV1NNwE5tplVQHt2Q/Z5fGPjamsDuR01cSJpEsM3/PipNKKaCxa9DbzqeJ4UkE5MI8igsb5Quq2wjtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGN4n+eU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGN4n+eU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6544C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757053793;
	bh=EaOuFmT4j5aQbbQyLPNsCC6i6X/3W/DOogSDBeAS+qU=;
	h=To:Subject:From:Date:From;
	b=MGN4n+eUIUNN2Fank1dHrG+An32rzOgILzyp+/NOvLcgygimJHKFt2YA8xAmQ0oOL
	 ammmqUqykew5NL9Y2wJHgs9HHmiwijlz6om0aJgw+KvqSnD7/HhE8baYVMGcj87VjQ
	 171UrOyunaJMWVH+FOqeJTjeVj8l6XWXs4VIqMqRqEkmO+FByjTdKl7I6olVk81F3V
	 +pagSF0GJ9bzuruw1FqScxl34D4Cm0cHnQjpkG0MSBlcGTO+Ssw0tXapt+nxAsugsT
	 HMrNgdvw/lOIRWyYw0ey2K00S3G4kZbTPNxT1IMSkUyLy7lmTCUcrwJZCUldigaxkb
	 mirVXqeE2/Ykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90823CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705379358.16397.6745856158849213007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5082f7ac6f0f9e68e0002f30345840d46c9a3453bbcb507f27fa7b9cd71c4ee
Date: Fri, 05 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757053793
