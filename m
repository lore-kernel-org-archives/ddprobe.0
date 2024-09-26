Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB8E79C4
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727327754; cv=none; b=qaTflQ3Kl4dh9iGJfHXarnAnqDDDi0W42DuSW0UWZDmcebl16UnUZLcelmmSgWFnacg5pYXiqdXT6XDGK4kYwNTu6LKvrytRe9SNvmA6CHplUpIMUWLNvpXPTRCQwSdN6/VD67RmU8LqdAHE41tKjwFVxTl2j9ZjGpc1thewBpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727327754; c=relaxed/simple;
	bh=50icGizOv4C1fYml9rNY0psL5cNTidp/B36u+eB2okc=;
	h=To:Subject:From:Message-Id:Date; b=YnQhO/yauusWATxDlk4Lewdn+fUaZ941Mtc8tuPmiJt3J2gZiw0k7+5/ukD4fdaO/x54w4t1rFfO50rxsCR/f1GoyuFGQ2SIMS5tdM3tqvr8/lb5VzYUtY2HkZqk3Scr87lKclEW/3yas2ncuZkpJKFge2DihB8TLGLF1haYpGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSTjV2DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSTjV2DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCE1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727327753;
	bh=50icGizOv4C1fYml9rNY0psL5cNTidp/B36u+eB2okc=;
	h=To:Subject:From:Date:From;
	b=uSTjV2DWFiQSs3+N4fYoVxfywkWwy7Sp7ERx3u9hRKUqzIFJXWOlMxgAGddaJwybl
	 MJE8A2UbbfJ/9goC1eGxO9hm47L8D7myAMZdm99p3ueR0JBtqXbd/QdP27ltlcxfQ6
	 WETGnjivB+Um1OWcDI5UUVwwp+FAdVyrsxoo8cXw49sUsV/q9kEdIsOGTZNnCi1kqw
	 YmQsF1fZrvMazZyBwgHv4J8WvzGzFNEsk3NGJ05bD8vfg8kAzFkyDDcMjsF7+OrEkt
	 tjVMgm6O+dTGWYNdxLxGcyjR2FZHmh3zoJ2JaFNNrXnuhcm68O/IyqIbrfbvlNAx9Y
	 WNMTeM5P28XyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95902CCFA17
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732775359.24224.8168127056060892123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23dbdb664bce20d3e34eb5e14c8cdacaa0a4eaf77d7f15a396fa784dd04414fb
Date: Thu, 26 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727327753
