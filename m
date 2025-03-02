Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4812A1E2614
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740921534; cv=none; b=PKiVicn1lUZWe9i9y7oIWevoX2koPzeGczHjnzkf78RTKqdJOrYSCB83w6bK/fiRsgvd6JYAr/ACer2SDg+RG7cF+k0r2Px+95U9OeY8PaUtrzh21o8M/y9WcE0yiMHofTzl39WdzsXrU8LPoHQ9/WBDl6b/bocu9FNmuwY8ZwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740921534; c=relaxed/simple;
	bh=l+4I1W7NVyzEHBL1nMC8+EQE3QywBqpLA8rD8acqI48=;
	h=To:Subject:From:Message-Id:Date; b=E38xb3ENPlg/Wo4kvj5tNsDEyyCP5kdQfgE6O3zfdIqoei5I0Lchi3MofLWjOUzRJcaolpnR1s58kCU9DliPBqOQBqkPXASHB19T5OIs8FbUhdpLlZsSmhl7JE6IyGEO5W46wI9daqq9onv42WXz6loU7lZx10q/Vea5ac+MUic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4G5j9Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4G5j9Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B927FC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740921533;
	bh=l+4I1W7NVyzEHBL1nMC8+EQE3QywBqpLA8rD8acqI48=;
	h=To:Subject:From:Date:From;
	b=V4G5j9EiOWE3u+ZYScv9f20ACPLSHWgwEfOZi6iL9BGn3fhhAZDcIsBJaJ9PjttlC
	 WQWWFmqiI1115siYGwPo1iyXsI6Z7Tgn3rCBOG0dgUC0cN1bMwBNMuzw8T1vCwQpSR
	 wC0GWaVpwnwdTZ/2bleVpRVEwCpzbJwShDT39SMA0UXHzk4uz/GrQh4wSIPYMg0wRV
	 GOQgHs2JubTUS2CpqocsumehctyxBydRTHuIYE7BktKDHCUWTOrqYszB1dDihybSxX
	 leSIlOsISSl7QX1SZUIHP/130VaLB6AwDU7fGALUjOUdqJ+df7xVEsy+W9O4UzBmIR
	 stMH0vmgSyAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4611C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092153366.21418.3003260686134818284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dc2241186ec6e7881a6a4fdfef0fca5841f056c333cf4dde020b745e2cf8d9
Date: Sun, 02 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740921533
