Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3568121773F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744052994; cv=none; b=Mu2FRpFL3Vooo653Dn6ESHr4ZEP6NiP8GQB2HpwyRCrVh7MCSLIsE1pl3I61QU8zkZL6egE0zUDAALUsfo9qga0s1uXJoyqGdGyrb2Wbunerm+xmvD5q2V2Q/A3t9u9O8ryjL98ol7J4988YbhoasUhYG9DLmtaRfqfh3Ct0gA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744052994; c=relaxed/simple;
	bh=Wg7+drBb4lZPSW1L/L2UC8szJZtyr5FPyG1xpnxzMC0=;
	h=To:Subject:From:Message-Id:Date; b=ZK0Y/EGM/hpE4QQ9o0LHoPWL9rINZWChpA+qvmham6Yh7nvbHFjiwE5+l6LNl2oqsRcSx3KbGXq6GJ2JBaQ6MPadBv1v/+FfPG2HreH+Js/fGMzcBctgeOFHTR+/yMBH6YXHz5N/vPAUf/BUUzvgYRov0PxeAk3Qr2/Bc3YfsX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5z2XV0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5z2XV0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDB3C4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744052993;
	bh=Wg7+drBb4lZPSW1L/L2UC8szJZtyr5FPyG1xpnxzMC0=;
	h=To:Subject:From:Date:From;
	b=P5z2XV0q6DEEyrslsNKxkamIjHVhQTVpC2z6YHJ/QpYKwSbjvhE594cIlJVihMshU
	 5+QDUTZFGcY+D6RItVwnRbPUXghoI2dm04X3QjsZ+NmBODqwIqmuV2hpfJaSEXA5YJ
	 o9bXJ5J6J9ol9/FH7cyOh1sDoQ+Gb7qGh2zWVMa3+y3IKUuPneqAavo6U3xX2QArtZ
	 pl+AuC7z0roM5moMNongP5xVYA0SKB/kkI/wCBkb3wdSpCZDtiBk8eh5ip1Haax7VA
	 o2M7bdAgg0qQb2sgSh81SZf7oyIiSRihTTSwqxoXabH+lWnoOVP2bJerwCbGBySPRd
	 kTT9Kyru62M+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4112C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405299360.30955.2630276001301462092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e26d8789c05a6ffc139475e3d535780d13f554282ceb7429c88e0cd5bb55400
Date: Mon, 07 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744052993
