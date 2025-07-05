Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C673200112
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751759394; cv=none; b=YIioxz4Y3PLwUeBybJqzFtT1d4tfw9dlF9v4b3P7DLThN6Hssv69P6hq3o++idScyTeFjRQ0IMcfyXRPZrCDSsugHnx0tlFUA3Ubrmcs9aaWieA7yS3W4KdkS+3qBz1UEvZf+iRk2ORvZ6dbCOl+UIdrj+azXC2NVvDc01p+qBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751759394; c=relaxed/simple;
	bh=qbc8tlSk0iUFIIfiXJ/oRDtJB26WNDcPHced9JmseC0=;
	h=To:Subject:From:Message-Id:Date; b=JN6VWQX/2e5u+meRS7bIcLQMQleTfUJAbuNuvETmZFIcC6UeyV+3GKIdrdL3JzMVB7aHWAv0ATntirCS/pNZTIDnWg7f9JY3dCAbZRhaRoJ9jyHnMQD2vEPyiRaHA9N+Y/Srt0CsKD3JqG28a5ZEOlc9L1E2gNTg5N96OOUC3GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjMPC0pT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjMPC0pT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC873C4CEEE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751759393;
	bh=qbc8tlSk0iUFIIfiXJ/oRDtJB26WNDcPHced9JmseC0=;
	h=To:Subject:From:Date:From;
	b=bjMPC0pTWbRL9Pe14ZXXXFDv5ZXYBTJyewjW7TgmffaGB9nHOAaslnKekq4qPZR9l
	 AyiA+5+ptNLHZWy0ly8nn6cFHLEcGW6K25BQuCy/aaRha8H92Jul5NG8pmZ59a1IKd
	 3ywRpFg9tJ/6SnfK8v8QhiMFMnFIhnxztMnUK52pUqfjCEb/nI08c7wfalTziPxdH0
	 rkQdP9AlJmHsfz7FZQr7jPE7//P3YYK1OI4fdAogQCuCo7u6LjmRnau0zuhIu5wo+3
	 DXy2IYrbl+EEmLEMwggIx5OG0Pjxm7GO2Zkl8KJhAw4iZTHMjUcJZEyxn1uPx/83Ne
	 PKWQNFzpuIanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA8C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175939357.16997.9444385125550416019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1ab9519bbfa0eb47aad53d2f6e81264168a5cb0765a297c5f0d8b7b478a672
Date: Sat, 05 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751759393
