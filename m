Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120F0192B95
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734515154; cv=none; b=Zf0IzF4Vos77Lr4DdK9TIN1va2RCUzL8Xp68/qlCJpQ/iap0Z+Xt5Yw1QPD0pGvJzP2ifLxpskk4WUt/5aK+OBQIztxbBv+4N5yQIJXAKfhyE7l//kwvKWPWhFh7GWOkvxpLQ1KpQldwHigm4earH4X3wKWjdrQnLI0r+yuWB4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734515154; c=relaxed/simple;
	bh=ZlXBo/JDDy+o0ZCcSkYkPuY7IpmPJEpnN9MEu5kvqIE=;
	h=To:Subject:From:Message-Id:Date; b=QpHvF3vuxPKczRKAU08iQf7G2b8NycSwPjvwFjpMQIzmq/HIsAZCf4IL5CpLXx8/GbR/Jungz954lHogyqFKy7oF0EKDJ4xAkNA1Zzk6o0C8NL46q3q+gBnoW51UEZYAT2LE1SXRsN9/EpbOHVd9fNoRvMm54oVI3MYthsp97cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1L3QZVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1L3QZVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B5EC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734515153;
	bh=ZlXBo/JDDy+o0ZCcSkYkPuY7IpmPJEpnN9MEu5kvqIE=;
	h=To:Subject:From:Date:From;
	b=I1L3QZVWXSptbnkpsz21/lzlOD2caVdGRVwWEA/+ceF6YvzzHluTcgbqFCCtdmR4n
	 Afvv3a/y/N4MTcWXSDAxUEYiI7WfpbgcDOOHmT4ZQzL8tlMbdCwgigVwucuRytrlvn
	 QqNlPwFYYye/WA3u+5FH66W6GMtS9aZ1DA1A2cx1lgZBoa+9DcM+8QjKTVKo+LDQ/c
	 bmnNU8Vfpyv2lxyGEvaQ5z38mG3bNun5UP05rjnKO0Q9/YwmzBhzSp8PYVpeHGXcyw
	 mQybK0tpRwSEmDBZIfJ2KMfLs7bfmuhFc7A589H52fbeuymu7WjQkQdagHnDbmkEDN
	 GYR2HDXb8PmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91427E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451515358.2271.2045953782563599990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17009c7d2958c37867c4fd34ac88ff2e8bcac8dc2729b0a98b3a6cec6f564d26
Date: Wed, 18 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734515153
