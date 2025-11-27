Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A6C2FD7D8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764238973; cv=none; b=ojSPMxuDWYjZYNKK75zoN+OAi3rgZK8wCfYJacsDLPFEMCfu9pJnuj99Wc98UjDQt2iiUUf5kOGz2V02+Ueb5I7a/911naiFZ1zsMjWUBh395NkwUrUTMMUdu6yBeK0XUsZwcEoqPEpUq5BOAxDHQTVsfB6zP0tkFnmb0pqbZxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764238973; c=relaxed/simple;
	bh=yVZOkOnedWJKY6fFmqJ57Mc0W82QVs4ILhMI0iPs7Dc=;
	h=To:Subject:From:Message-Id:Date; b=n2d1BwUbg8kyoci8u77y33tgnVEetd/3G5urEs1ag2PxqFMsti40Aj2o7dZx5AqEyVjs07uAAkC7ZWfRcsA9JMqLeE1whn8yl9gi0fZHPj7hTMTqCJMqUu4NeplKIlxOnfsIP59jMIuUh20tAXYpFnavKkg8eCRxf8agmjng0HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InngY8Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InngY8Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5C5C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764238973;
	bh=yVZOkOnedWJKY6fFmqJ57Mc0W82QVs4ILhMI0iPs7Dc=;
	h=To:Subject:From:Date:From;
	b=InngY8Kct95y8CJxDRCja4OEORoW1VAvpgxuXRtx81u1lBYVqeMObMNxqkkHkpnLV
	 2CZMPRK3yX3i5M9Gjcn104SBFQr9mreZEuSwx+vJwMcMx6U8HrMzi0sFZwy5uYBOt6
	 CQmXxVTcyFDktQgBVMQCJY3e4zkf4MNpiokPajjX4T1wWUTtV4XpAiUoDdPYbiFUWX
	 fHZza6Txos+0oMBHdCZEXx0CfJAE/+wBH4oKpEbAvSu0hOP/ap5kz6zfN2Df6dPY+X
	 cJRZsuiVR2YvkbRyQj4PDZ0i4mOub39i/JTZ/euS1oieOS8NFsBajwrvk61So/njoa
	 wJQa0D1EBgKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E91FCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423897363.23328.14731017427836819017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2de0c4b879c4903175a48f395251ba56ca0cf9e96c039f222ae21fcc975d7cd
Date: Thu, 27 Nov 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764238973
