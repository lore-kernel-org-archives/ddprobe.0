Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562C7441F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 05:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713158363; cv=none; b=e8F9VFxFPyC8p5FV8sMEZVXQaASxzRcBD62yXmDP9hGthLIo8/K8+KYMKpYpqzwhMGjR4awp5hPFcww4YRhXAGSP6j9jmxTsa61wb6cfXgGPifbgJuyIW6H2O7GJAlu6+kioYnunzEaAF3L5yYGQosf2ULTdq83O210pZeW6dB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713158363; c=relaxed/simple;
	bh=burjTTGCfk4R5BnRqzxXuhJ/RptxoCka/5isyM4/ZhI=;
	h=To:Subject:From:Message-Id:Date; b=RKVgpoSm/VntbBgrmS5CC9dXQmyvDkHN4YxcydXfHX4/ScZiULk+PAyyRl4TBvaUPBUyIVa4QcQxPETumR/sZt8B/hbnyKueWMlrDzJXeQ/qPGyXj8/2yUTRyCD6hp/3LE/V/nK7lTezNlgcdWdE2i3xgJWIh4xmTQuyFPaCKSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo520Jvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo520Jvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77A2C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713158362;
	bh=burjTTGCfk4R5BnRqzxXuhJ/RptxoCka/5isyM4/ZhI=;
	h=To:Subject:From:Date:From;
	b=Bo520JvgH8HzUc443Yuy4H4p3G1uwS9Vs6afVYPywheNqTRX41YaUtep7hQTQ4w1h
	 nq0cZjEg1pC3GSx1arUJwoafu94dk1aIXpAR+XNkThY1BywzW3HEdaxz6CvQWjHkgr
	 ypE6Sfm5wrrwRxRyctbLNy3ifN5RUCPn7mJ6VY0CvljEYOhCNXCCI8iH7VAgeqUlm6
	 OOF3TMsEjphgnYh3knZG4ohkibhQfWli0QkWsXG6B/wDisxbtPeZmvwTx6WdPi5SoW
	 UY2fV0AI4uXJvO+Jb/pLuFsJTU55hqWm89SRLMbbK2Hyy0yfQUsaX7xIiGkp1RoKpU
	 BwTouSK0zDnvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF973C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 05:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171315836277.8586.7055393275740829149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc61e2aaeb87380f59738ce6cd0e5c7a88e786b714652d57280a3a4cc6e82130
Date: Mon, 15 Apr 2024 05:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713158362
