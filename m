Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57359181
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714239143; cv=none; b=HabYg4+4GCxFKtbaeLSTauNIHK4tBGYuRQE9Iu1D7GN0Fb5wRDrwOsw7Sb0P70/SVIa6VpZIHlQ1ZwuiQVLcHnfzAXy6WDslBNlQqsUzipwwCFzQTg8CAtbpTwG7Vc8Bk1zDgvs9tSYuAZLPQf4vJEy/TinoNLN3o71ulpWUIB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714239143; c=relaxed/simple;
	bh=BkBHngDDNOV2thkYB7N4BmNWASI/4D4XYmSn5ki0HgU=;
	h=To:Subject:From:Message-Id:Date; b=DVp8oR2Xpw4D9mpbt83YdHkf2UbI7mKCvHfpxqqvUHZw70/Wzo6YVsxsy875DkCd5wS3MXuPIvjhOurKkPUWUKn7vRVn5qqwU5PiyvRoNGNS3PPHIur4qrMTHS1fE8QPAiEPcy+fWyzSq0f1Gi0T6TMqIwnEQNHkvrEJpwjHM6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj++jTOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj++jTOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF826C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714239142;
	bh=BkBHngDDNOV2thkYB7N4BmNWASI/4D4XYmSn5ki0HgU=;
	h=To:Subject:From:Date:From;
	b=mj++jTOxkYSm09qehyxZTImay7wEmqSQTmhftdwLhpjE6DLYICPCAEztQNQwI7fHv
	 1/L5eQ8u5Dallxx9jslllHUWYfVmdJuthUE3Hz0N4F4/kIY/O6lniENTL0Ho8zyZj6
	 txAic+/dc4XcBBl3vmWVrZNe1koirt4FW0hM1rPZvijtzUvufl1kou74Mm1xgL6zwZ
	 98s3MJGOf7K+jSi2JuwkYp8oRK3PB/st85Fn57p6WGjYSfPxi2+mDyCi9AHv6dq4fd
	 2vV/eS7TzZ38bRpO9AQhAypEFriQfoglupGoFR+M0F+HZZy7sPkA/QRFF+1qGGsSEX
	 LwPyJ4m9D6RIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B951BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423914275.4744.15081358936399075729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2459b0d4aae0a7ea50d8b74223875a75dc6401bc13c62a1ef0fda39b6bdd2a44
Date: Sat, 27 Apr 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714239142
