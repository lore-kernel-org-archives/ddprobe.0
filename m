Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443632CF6D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597994; cv=none; b=JWBTS85gGq2PPcvUz9ljFMujFvWUYma9kNEhhcHYGrokFr/jnN6Pv3L7cybyQ6I8ybnokbzX7vqZXjd1P9iCQiQvvDa5vlUAQm8wFGJrBBtwgeV2jMqirdHeX0F3nAyrM3pDM5qD3sWtClaSLkp6UYFYeaHEzpjLarKFYi23fF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597994; c=relaxed/simple;
	bh=uGyWJqZClDJor1zMK6SEqxwm5OUvb29PfELxI2vxkiY=;
	h=To:Subject:From:Message-Id:Date; b=KgM9yrx9DMLFZTuaw+6hMMsDzgmAIfSG+7Bgt4Mv6kDUo9RJ/jEbZ21ug5adnh3MR8M6VmhLxnoxObCCCJBnhpaqxblSQKVarSB2oslGfyPBRFUiXDMwzcLCGoj+VjM63z9AEhVvOJddHPqWZmd/TDayfviQpnOF+B3LSSlv5SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2kI7JGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2kI7JGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757597993;
	bh=uGyWJqZClDJor1zMK6SEqxwm5OUvb29PfELxI2vxkiY=;
	h=To:Subject:From:Date:From;
	b=s2kI7JGo1NlciG7eg+Hl5YHJ3FjOiEGHpFosuZaodDgD1SkDX2MbN5mAmsil2mPz5
	 mkCwbydJCbbEWgbYIQZXFgfmkzG/Z8HseQ/6cE4KGtFMGQeG+R86zC3LZtgnBnX21Q
	 hIFh+XomxDMwLrLUUX8G58/Ch248bYIaahvMqgIEcr+LN1pSVBHikf5DT2aK3nxllU
	 InQN4zDgqAfyIGg2qz+8rermEtZ4rIH5zqXe+HZKfk5cvA0syOv7Bsb4WVdUHg89cp
	 taZjLp5BPmqJcSVUknPU2fQluRrKxNXgzc75zeXIEGcB8uhOkShOZmet0f1HUXFF/I
	 mmKK3h/p0Rihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DDCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759799357.2617.14780761066602980117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3960d1defa536c88e7d4859b3bae69cca5433522a6d9b272e669b206159e1a21
Date: Thu, 11 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757597993
