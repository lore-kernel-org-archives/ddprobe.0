Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE714502D
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716247343; cv=none; b=eTJr3+SvoRLknWXe6uCaxssSrIHUVKVp30dgGBXW2IyeuI/5jbKhlhMUFR0VJNwp9DyYgrKuKvhnsIEyuI65P8FWEc+YheJrlERwPWWkVNbmxlP5Yf+BR1c4J+XBQG7pSWrR9GKI+O72+BfuVETM6pi7wZEwaHmopU4xZJzCsVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716247343; c=relaxed/simple;
	bh=wsgTy5zYaQWoXgoLb8ZbdAFvz6dlT76ohIgvT6Ek4GI=;
	h=To:Subject:From:Message-Id:Date; b=cjoHSjBPK8t/hR5Ocp5cY2eyl5Um1CLDEc7dPXNK0IBrv77j9g0eP8L22Rx5KG6KqFai71Y4X/zB4gj2I/O55pAmXhy0ZCt9aQRszNpCxJpz+t0Wz0/Dg4+GsEfF5Wd4mCOzNdRehJ2QDbNiuAUWE5mjOB3JidQnwK6/7q0jDCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svCC0le2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svCC0le2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3DDC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716247342;
	bh=wsgTy5zYaQWoXgoLb8ZbdAFvz6dlT76ohIgvT6Ek4GI=;
	h=To:Subject:From:Date:From;
	b=svCC0le2Nket3NTMfYMICNVdUdBO8Szfqlv9ThpJ/91grBZn8HWibPJGJrXl4+xJG
	 7VmPdxA5chpN7zxRiot7on6w7D0Lrp+F3e1w4PkUHsoLTyGjFW/XW6ofQajBRw3e7j
	 k2ic7kKMYht1G3tGd4IeDxP4UE1Z8UBJus0s+zuIKL4PwBdbepR5VyepGejYVZexqf
	 KzpOLOijYuY/v8A4ABLh/XpVl6uhxO5f9x32lfo30CBvWZn1p5M5IiKSdnU9pSEaUQ
	 jIyjgDFtnW3QO2uyyhonS68awHOR4Ffmz7gWpxJkwHsv2/Z3IcFvNBqMiBxQby5e8U
	 671nfVLwvvNiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA34FC25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624734275.8961.305933293772097597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cdc2a7b0c625c971a5dca13b53837c27a123e4d09888a93ff0bdd75d78583a
Date: Mon, 20 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716247342
