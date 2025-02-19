Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBF017A2E4
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739951334; cv=none; b=YJ2xNL1eDd65D7BzspLNA2k4k2rucxfdkUE1Zfh5y3VKgwRTmLKY7lVb7RewYxdQXkJXh4UKUKG4xdObSLGG1O2nhtxfKdSM/5UVsf/oETf+OGe8xACVjQ2WIaCmlO5p6mJFD8FSgi3hjpUIaZSjjDFtGKK+7ODdLD/CkWR1tz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739951334; c=relaxed/simple;
	bh=sFrEhvqGSNdbybsqd7TdFMoORtJF8qR0VGCDo2JO8Qk=;
	h=To:Subject:From:Message-Id:Date; b=Ii8HGF9saMuztCe5c+/Qn/b9GTfVOJ/F8cDUjsff4GItSj2vUIMZXHY2rNXS/r3SNiyG9bW6S2FhblbPO+z5barLDzCLrqCQngUKIf6Gsh9hFYu3Zl6zNe9Ns7MdoHSIy0TJO7yB12Xxf9GLwT6CB3OBT3aImM6G/CY6cFZwQAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skfatknR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skfatknR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC42C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739951333;
	bh=sFrEhvqGSNdbybsqd7TdFMoORtJF8qR0VGCDo2JO8Qk=;
	h=To:Subject:From:Date:From;
	b=skfatknRLpYu4TgRnkBafc+eM4qP/VMiF4oc6/1ILQQmaPejhFsnqVn4/LVT/Ul+J
	 TUoA+DzaSSAWQQoSdVTM2r9EQEIaolggQzVjqvmMcMDlsqPGrpa0zJHOp065EMeOJj
	 So9mgZQwtEHq8BFsOIpP4s6LBiutJXVQqr40h3dPdycSRRu+T7e0fyGcHiRClTKKU7
	 vlFhMdMBqsEp7iueOiqOixFPayPd3X6962ezhFcRdTRXYd1YPcFVn+8gdz2RU4BYxz
	 2aV7zmaSazsD76sCUcG7YZBDmRnWAVzNkiQvu1KlUq81e2MfR3eHEKDkgMxP7XqlC5
	 ejT7+4TD9a3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F667C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995133357.29170.7389775826520184768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641bb9b9d0b23e317b65de5b4452f0fcc08960f4ba8b324c3feb4ac840c02298
Date: Wed, 19 Feb 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739951333
