Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2738C258CDF
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762644594; cv=none; b=ioXIHfDhJUxFyifuytgSAofm82hyksZ4RFLUY29S9z0dznnBi8DBtQMUuqbaW5feF8bnFACYaX9NRv6hCm/8gMtgZUufp0rIULH4U1t0ULhhN2elsfXKHRsCMbcfaAIXBOSgB5fLr88kmhS5dKdyobV9/VPzi8Ty3XXCZCoh6u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762644594; c=relaxed/simple;
	bh=8Y4p5xyE7+H1rXSJSsYnhjOGjNQyis3FqS+Pltx1TfI=;
	h=To:Subject:From:Message-Id:Date; b=upkai/lFvtAdocwyryV2Fdldm8I3dIMDmMrA+nWZYUPv8KzpLeUlVxdceqyV+ZFtjeADTAtUnACklgFpeb1jAipEimF+QZ1CGpI0vHJYk3rnYWC/1TG6E8yBa+Kzngbi738UcYu6KfPm/kDOu/DdeYTX/d4rsxnk/+XUwNPcu8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkK/M4od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkK/M4od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3203C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762644593;
	bh=8Y4p5xyE7+H1rXSJSsYnhjOGjNQyis3FqS+Pltx1TfI=;
	h=To:Subject:From:Date:From;
	b=TkK/M4odN3MRIL2E5ZZIig1dyeNmyhq5JnIsqJorDSul6yHW63E5L+EmURqLnQ3R0
	 UX3bwuLMUNppAzxpEa4wFy2SZ+iWItdXwRkBrcQW33TUHAL+3v8GUB4vfyW8JHdW31
	 5oIcCaMTknG6oE+Jz4UdFgsCxel5RH43tWgSuscHN32wW8HjLVsb6kihOTE0s4sXei
	 4Qk+q23h5b18WuPn3PFbYoK0F/18T2ZJmpepS4RCpQ6Gbl6ZbCrR6mq5g2o1JIlwvp
	 TOE5x9l0JI830pw0DvG2UUa0lAQgVm7HS/6lLbP5bdPlPhX8HHWXyeS8noYOjqUg9/
	 FObUoI6YfSMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930ECCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264459358.14800.7763758597604595138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e6d2afa7d84c53130d20d8130674bbfb6aa1c3b60254721ad0dd670c15b518
Date: Sat, 08 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762644593
