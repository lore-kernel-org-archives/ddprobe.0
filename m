Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F0217F31
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766893434; cv=none; b=GAtp690l+WL9U22+iQUNl5SRVZVXVjZARnQEQBotYzCGaiKQfbylnVMbAoyOB3DT0mvfZngSyjGkZSJjB0aVWTgckWcXOfrLHOtLb1Rn88Kb+HKBAzuTHVw7yyyvTgkzFtDvqWEuypHhp06vcURT9K9rFa9wY44cgfvV9E3+LxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766893434; c=relaxed/simple;
	bh=qgdzTdx6teYD/eZeYgEKH1rHw9+YyyAT2zSIr7JqmCw=;
	h=To:Subject:From:Message-Id:Date; b=WvexiEbOYhUENNNeWx52oHEIpc4mWIwR3uSKUNtsoNjIVSsB2olgLQ/2VVZBWNQSMDYGmil4HasDyqfAAOrDmjHXZZuY10/vztSKPa6eGGZJ2Ew/vIySlNJeajE0Xc56DOnyAVbMw7tgqIZOST45h/ouweBCLXU/4PQTMm1jxFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJfcwd6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJfcwd6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C32C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766893433;
	bh=qgdzTdx6teYD/eZeYgEKH1rHw9+YyyAT2zSIr7JqmCw=;
	h=To:Subject:From:Date:From;
	b=UJfcwd6Dmi9owLzR/WyNGPsjWbeyVQwhAAYSQkJQ/YzHAIVfawdTSVWCTxG0hGh5v
	 JR6WoFyXj11MUIo/XVHVK2gjmVKe0Du7RpucEf9hJj6Rlh/yG1k6OgdihiudYsOYhC
	 mAE65v+P3EpzGPqGe9la2zaTZo1P5pAPWjfmuL1hDDIi8WGFmv+/AyniRKRGbAk2Cp
	 +H3oigRG4XAVH5288Sp0Vcf1UILM/7jhduSx6PaOcOQ5SJVPk7DdOVnLsIodYMz80v
	 S0LMWdFMksPZGPAFLS/z1ukbtTFTd/ica33nYDvpFDyhcLVmtcWjqlTpc+FL08gMYu
	 FB/KAzKOlJfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C68E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689343358.6006.2053410139582476844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec39d9ee47a30aecf55d14e6ae37d17c6c26b66a9356fbc2206a9287664675e
Date: Sun, 28 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766893433
