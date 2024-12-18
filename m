Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AB4381AF
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734494154; cv=none; b=DLM66jtshozSoKNs/dCZ3fgU7ofjdXMW4S8WVUQX68FBp5Curmy8u/JTaVjJNxhpxbwiKSkQZxVR1EnJUGhfeBdeAfty5/S8r6mXxbFzZSiPy8TohRqMDYDwJY6iWYiI3bkDovtXju9gRXNFug3kyuo/DMBYX1aqpuSc9xFuPc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734494154; c=relaxed/simple;
	bh=3A6NKOaFvKJUHQRh7AlS08gfvVq7arRATEMOZBAKrKA=;
	h=To:Subject:From:Message-Id:Date; b=amKl9eIQxejVtEUYdFCmhQbwTSeFx4jOlrAseS2h5ZgriJ2ejVCvF8yWN+UFFdv01VJxGry1DMEHaNwMI/7iKZPpH+TzwLzDzSSVp42bnriUCUUDBgQHDkAM2CfaiaUz/vS2yq4/raNOHqkMSgoifO1SWJXQJcZF/r+ZyRtpu+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdyY4jGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdyY4jGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB428C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734494153;
	bh=3A6NKOaFvKJUHQRh7AlS08gfvVq7arRATEMOZBAKrKA=;
	h=To:Subject:From:Date:From;
	b=FdyY4jGnKt4PPrGetXNYDjyy1oCyoyqBnBz63iME9CjuMt3Qfu9hEyjslJJCZW6S+
	 j3adegLkho2VBWmziNpbtybUMGVS9b5eEzu+tiRek8CbtY+6PTtYc0SgNHPicZ5LEo
	 qfd2fk6/lgS2pkYd6md9sPlYLZNSSc1OrV/LwqPfReY7CFXZBI8odrXPTszIm+NG4X
	 jvc+vwOlLNtKmfkfI3tnG8d7ESBhkty47tqCThU4V+MXbG3iUHmkQmbyVtRY0u7430
	 jhAle6Sve8xQkInAI11gl/ayV7E1L4qVA6lKxOfClDtvYzUy+hfXzNp/XHuHaog9Ao
	 Dpn1JgpZj/KGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99018E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449415360.3127.6803326016173737550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66767dfecaceaf0080a95fdb87a226ecb1095b892cd1902932fd0c41a5455bf1
Date: Wed, 18 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734494153
