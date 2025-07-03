Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E17C2E62CD
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751543994; cv=none; b=Me/zThG2TbkXHke1syWoBJTdm13A+DvouwwHDH4nrE28kjjwLavsAQU4Cc04nrlcM9LN8HI79gmxKE8LQ8ZRctvdpqxcBhxGde5/AE5Di/KX4+JNrvoKhOpVaqMkCwJSvZzghTlTn7IcWTX3lQITjUroqsAyTSBfAmc43mN28Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751543994; c=relaxed/simple;
	bh=uf3BIayEXlb1QID7lsXlaNH6Zv+2LLhG7VGc53PLCf0=;
	h=To:Subject:From:Message-Id:Date; b=fzA2ivP7aQJD/7oe0x+K7v8f2QrimywgzkQgHHbCw3JB764Cx3eMxk6LliIie2K2KzGg62+OwdbLPWNJOOvLX9AsKVdnK0aShsnXLRZHWh9SvSnwLjF5jk2ty2pmI3UOdPaaBn4ws4pvpZozpu46AbcBs8R7Rk67QaAfSkQ0d1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+gZ4cy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+gZ4cy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB68DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751543993;
	bh=uf3BIayEXlb1QID7lsXlaNH6Zv+2LLhG7VGc53PLCf0=;
	h=To:Subject:From:Date:From;
	b=A+gZ4cy6Z9p0yrbzbSSadlHIvM2d0fXiyDa/XUqpNIrq281NcfrYxayWkWe+KcE+p
	 juE+oH+bdf6Un7/8SguN6ALuwHo/1FhXRTwwE+l5vsvONQIRWbbmaGCcdcSyWetuYX
	 UriJ9hQRZcw7VLN1EsnvlOnU1EYwQItSemsZtVoHk0I5wmHX2orct4UeYxZ3HUHiZE
	 RNh7wab7Auna2I+cuI6aDAdWlSToSJ4zx5wsmzEeWHYAqHq/6EmeRUZAPgaToVgkO2
	 UqRfFQp2lIPWqTwYpYAlKNjpX8pIQJSXzJZ66+kb+1zoB72zom8iK5AiKKG+cSHDNx
	 EnpW9cyN/QV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDC7C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154399362.24647.10478474353686853750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f67e4eb19d301c0224f67ea2057a070833cbcb6c152751ff5aab8bb3f2ae9d
Date: Thu, 03 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751543993
