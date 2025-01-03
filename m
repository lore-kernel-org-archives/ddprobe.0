Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115F81FA857
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735911954; cv=none; b=ODILoKvOHdKNCR/WYT4nwTQTydO/xxf1tKjkfO8vRCBLcScsBf3SaxrBb7vtLY//vGs7uRD7HOTwf9PgMt7Vkxv9pxTJjQLhjRh9syogLMYAKPJijcT4SOxY9ywBhY+uOSW7mmY9vKMwFrLVchU3z2XUuo4hFMn/qjRF5RjwTt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735911954; c=relaxed/simple;
	bh=CpY2NubRFDD2gkI2Ta7BCBnEOA1OBG6Gi9VezjqmJ/Y=;
	h=To:Subject:From:Message-Id:Date; b=Kgfq1helXMgdXlyC/DI83pHV9/CTfG9UyqcHcpGKsv+Jmdv0shrt6EwmB/sdj6Vk4JVQOgF6sEKyQPwydTK/s2HaI4aYRRlDLLlPGhGhPh/XTEUQ1luKggVgeWzICxe9CwUM7K1JwT00JUvMVKXymK3HzcnCKC0O23+CM1JUWcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ6C31xu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ6C31xu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5244C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735911953;
	bh=CpY2NubRFDD2gkI2Ta7BCBnEOA1OBG6Gi9VezjqmJ/Y=;
	h=To:Subject:From:Date:From;
	b=eZ6C31xuVaSGw05s3yOMpfnw7dBWUc5gPJD35UvtKAKDij/kmao7YIAociySU/7Cr
	 iRarYI2w1rixWVXZ0CfyUVBZ5nxifinpxgjmwWhw06vdhP1P+48FiJJGoFLx+9RQDe
	 +EktHbr1W7K9zjL7OgrR2nGbEbVaE+O0/F9OqJ4t/pBMtNX6DPH7BCdkEW4QaCyxJe
	 +5uCwvTck127TwgPsslAdzft2fugiB7+vYeGAbkKW6/vQ61ceW/9H0y42STQYBb1Cq
	 N7fkuVWbzSD3GW9S2YmRwHuEKrzeLrEaksDXJh3rv4zxgkGu5i/JTFzzA4Do/r1Ezc
	 xt4f8x1brz+7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029FE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591195358.17828.15704613810353657936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a210f58daa846f859ca2d069492dc79abd0a127296ffeccab4793cb932d786
Date: Fri, 03 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735911953
