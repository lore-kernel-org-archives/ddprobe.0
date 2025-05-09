Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EEE294A01
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746799195; cv=none; b=lLahjlH1yuV858oKmsC50VpI55ah4yWefnlvrRfJkJideHIgUiqUxTVypF3tUhXtYEKFLetvI6TrqCtt8ycQf33LBO10EixEAEdKrE9+tiO99jJJLxitHxUvcEvTOe3juxKdOnCdi5RsWGKzxknSm3PixW6z8vS5cVQkoyRqqXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746799195; c=relaxed/simple;
	bh=P7wEovszwZRGkNbPbhHU7vSXeou5p+OfGyfvVQKHtX0=;
	h=To:Subject:From:Message-Id:Date; b=KpNKmvvqVg5ctfkF4lL7bclXlsfbp2XnyqaSQzdFEhWmYPzyq7lkyRpkg7WzchCImcxIu219wCjYyMBD+9xoYtt7ip1K47z0Xd7SLg14RHxNBWLFQS3MBr+cmnw+5ch9C5bb5jWkT5nFLpXciXAzZZP/bs5aNQimyM7rk0XTQ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRJWWoG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRJWWoG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FDC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746799193;
	bh=P7wEovszwZRGkNbPbhHU7vSXeou5p+OfGyfvVQKHtX0=;
	h=To:Subject:From:Date:From;
	b=DRJWWoG7fJJ8wwMxHbeQ7X4HbUgP6G/oqZv8+sKhf0Gq2LvVbU9P3+my/Q3Pu05ZK
	 grtJeN/ZcHXM1Tt2tnp0p4mYX051sdWswlitnKDoyZmBnFjj5idIBsye4yaBWeOcuX
	 xN+mBQM6WqnvkM9OE3CskuCpSjtkvsrdzhjAI9jgqUlPd//dp5qUj/lenIilhde+RW
	 pyE63D7zcOSI2AgeV2gfuq7rp0l8IAf1LfgEvDJcXaL73mHFGgo0mx1BCTnBdqV/lm
	 bpaszXT71vlm+TuWZKOqwRLpXnjYYGImti0CwaHwo3/uzFPtHqYkLEcMjsHyDWwwrY
	 wAd1hftPpEt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC6C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679919357.19682.10214934753564730848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af391e0b767fd2834daef8003bff0cec05edd12e762f0fc722c431cb87e85b56
Date: Fri, 09 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746799193
