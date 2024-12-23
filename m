Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4409110A1F
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734932154; cv=none; b=jobWxsPUKGdON6pq/amt79i6uaQyvtzXHwsaxM6ozVZF6wxIfDTfq8ysrs/o4mSqT0bHD0wqgkQwdCRVlVwPI1ioT4zzNYWzMj1UCDzPFngh+18InoOzEBljSjGppNAPfeC0GTJQwq++7SKKMfOLAchzT1OB3at34zbJcGrdWn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734932154; c=relaxed/simple;
	bh=oTAF2DqErYSQzx4DHqDyHVMjw3WO3uFWHx0dsqg/s3w=;
	h=To:Subject:From:Message-Id:Date; b=EX05q0BLUyRo/7plSN7+V6+sEfdF7ycKc6JPKL2s6AbOQbrXDnaGwSTBhs+IrdUyYBJ3wX+Knpsc3XEmT033J8e/s51wYDNO902i6wg1OvBkuaKiBXwCdhjK/ULXengfUwhFzPlkcWiFT4J60OXhc1qRA0DxTSZx+xJ/zAYhII0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5beqH/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5beqH/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF508C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734932153;
	bh=oTAF2DqErYSQzx4DHqDyHVMjw3WO3uFWHx0dsqg/s3w=;
	h=To:Subject:From:Date:From;
	b=Z5beqH/zVjSLvHs+3Wa6KenVHvgsJ9v8yoQf/KJorFNSj6uwCeWS8QKqS3BZXAJBo
	 qrhi9hpYaKt+hPKGYBnZICinaQl6N+aCO7S9MmPjKiiUcLYoKRc2JYI6Rs8/XhJiCi
	 x1Pnamz/Gr88JnTwNCjy4A3t23FTIcE541DpHjjU5ZDx8GzzmWNg15X45QD6OAKIIo
	 RyxgLKNiPUo/he9Pi340VIVTFC9dHLb+RtoZH6mlAipZAf1eNF7FOssAsc1ma3c4E4
	 sYBycT/WbYlAikAA5+wBV2CvDs0DqvhWcP59pWw1zV96+KDxLAJ76VG4s1jj9XayJS
	 S7jkHJkok+0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9F4E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493215359.7584.11450239705768506324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1a2f83e2efcb7d8f5b9273bbf14fc1837ce9f7c188cfbbfda7bc24b3bc8d3e
Date: Mon, 23 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734932153
