Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853012B93
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744891796; cv=none; b=CJWmqv/KGYEJNDbZ9nxNlpS+wFSSlJWWiUuclldL7ePSM0ogTePuTI3/alnN0g3xn+TrzObkostsqXLu3FfFkAoEyT7pf7TSOUx/pmuprRnX2XNsGhmoJLeTLmpLZPng+yBK3SFMKq3rXcXJYcNG/dIRehsqBw8uiIYv1DnWXck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744891796; c=relaxed/simple;
	bh=2Pc2FTU10e0ZdSWipFcBHS5JdIJE6xlb41Ddrfj/fw4=;
	h=To:Subject:From:Message-Id:Date; b=TAYjDm4gZOQN8p8vzq+uyygMB8sRXacJ5J7JLFx/rpctNkABfeOizBgDxoZM9OSvsNHrDevqonQEV5qu/kAwfS3uLegMqCeYjz7M376F47m8BTFL6MiezC7VumbAC3s6qSH7WK0GKW9aOKa8Fg03Nvcwh1FFK4ZvfHZr/lrA7bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkzBdHiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkzBdHiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF91C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744891793;
	bh=2Pc2FTU10e0ZdSWipFcBHS5JdIJE6xlb41Ddrfj/fw4=;
	h=To:Subject:From:Date:From;
	b=QkzBdHiEjCrOSSjyfsxBCiHxBGCxHV0F02rUXYpbw5KrNJVnuRFypHP7T3vhCXt1P
	 B0txy25pBLGGSODsvWP+IOw8NHnnkFni76BDgyI38G082QKjQtkeJF8tsbpH0+6BM5
	 NfmdrwVYAMoGooJfA2YzmssQImwk0JCkODwx4hogHWl2xYY8l0tVWsGoPAiLY50Qci
	 XUzX9fYn7KRv0T9usbqLKo/Gc8ChVApgdcpB1verS+Ai1Yve+3z1TpBLE3TyQGb26c
	 1P6CU4jxcI1l44NfBE9PLZebxckpM/z4wfLJps4AUOrdIC4NPEUYgL4CTR+Ckrl7O6
	 eHS6gQ4LGSGtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BBC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489179357.13441.17913091180602275913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235d51838d82febbd6536289b940a2d392a11579df2c18c820a15b5e8441268d
Date: Thu, 17 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744891793
