Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411304E1C9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714839743; cv=none; b=ZdChsJ5E477Vm1t/YGrCtuKh0Hs4JvIRoHfn2emzYqshUcKjkdQAPAIO2kizOSfNhf8vbG2obfe/QeGVf2Q0Xu4cxVL/mA1PHcbID3WYr18ER9mcR2bALTLR/SQSt1GdXvcTTTaWgcUw8AN5gLWbn1BCcsDfzOYDJdI5kRJcWxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714839743; c=relaxed/simple;
	bh=dCjhUDv4Q4hyyxYYNR1soweB4+ZKJslHaKHZoayRXFY=;
	h=To:Subject:From:Message-Id:Date; b=II7N2mR/mVehXZoSY1XXpt1nWO7Ci2MQSU9ehJGwBMFLfAMgdx8QnN2znpwqFGUDzmjU45zXiECjK2MdDoT6AYobkCfwyN4kfxB6aL7jhnUC63ZJk7gCVtkc8YRecdnl2FX8ysUIDRQf0F+syDR7NB17aQYsJHGyhrN/bIVljyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amNkisu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amNkisu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D589FC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714839742;
	bh=dCjhUDv4Q4hyyxYYNR1soweB4+ZKJslHaKHZoayRXFY=;
	h=To:Subject:From:Date:From;
	b=amNkisu/U0W6fk3QYfzsc2KA6yvobBhlBLxk4xoXkGxooLJ57iAAq59KTh9IMHvWD
	 Hx0mj+w/jDK74hBbl4pzCfi3QCrSjfMdwG5AUZs7C6V+VXPNl9VsY10rpYsHt8HS39
	 J10iHH/7ApM2UYAs/uvBj6QHAcmyrHy405qTC8O1ix94fLk7ryzMDCC8jvWbh9baQm
	 LM/SKv3lylQQR8T1/e6E1i7AgygsGtcwkwM3M8y/+lkutuQS0P/mak3RbzMPtIbVgO
	 nTZTIjWCvbE/IP0UiMbB2Mi1Fbcv8pl/d5zUhCo7EcVgFK4uXMG2zteuNrzLMsov4s
	 RQt3MC0RGeR+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AA5C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483974277.5046.12561703356855644947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9318b6bf71d10879d616b258a1826f26879a5485cb28a2192fbf9ea924a901d4
Date: Sat, 04 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714839742
