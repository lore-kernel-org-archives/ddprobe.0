Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2861F872D
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770541434; cv=none; b=NhvBIM0sLv+xiA42G0Lzk1qbjJGpV8t37YFvhBQNRqQvQAAyCIYtOS/1EEPMf7hX68I6ZHx3J6xZybKnavLmzWyVVux7iWuhH9+ZkAQuUD7QHktomk8UefTfvKRWy+UWQYh8npLWnigTeve4GpV7Lis9e/EOOSuY4zNRz8vE8fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770541434; c=relaxed/simple;
	bh=8cWiuh0pj6TAEMbmkKZgU2sYND06PSqEdwUghE2xbdo=;
	h=To:Subject:From:Message-Id:Date; b=NIRXdp+/shplqRafLM5RzfKaMAru+aoVL2EwjgsMqhuOvfoPQdvcDfYuUYjwO7utz/3MHClP8Kxotfzcgb0VQ1+9kzVwdkP3lmB+vnGaFGD57rtz+r8UENjnIeaxF63KaI94WbKhafypaDaXUKpSsmz2cK0FnRH1qQkGDtv3Lao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5bgO2QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5bgO2QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770541433;
	bh=8cWiuh0pj6TAEMbmkKZgU2sYND06PSqEdwUghE2xbdo=;
	h=To:Subject:From:Date:From;
	b=W5bgO2QN5diDbey6pkqbovDy0ZGYbD1lr8VAK4l7mzy1T3avqbUhd89pOjj1Utojy
	 iyy6aM1dBjqBuobVJ6vgOvDekHua+PO8vFUl7WeNl3NJN34ESqzU74oatYHRoGgDBj
	 JLECa0S1fpsba2OAmDUOqof5/FCI9DsVbtnQer/904nUESI7JGJUyit6zdfj2vocIS
	 igQOPIsxUbliEQh5mXjeyfg70zdceLa5+e88RjDSDMKAAyE4Ki8FTxU2RJmSKidHvW
	 fV1h72512g60bvtRmK42yVnAZ0jwGYZRfJzhqp1I13HBMa3BKjIcr4w4J431dyUlfK
	 FBr6Du+kRZJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803BEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054143358.6039.3734838309698739881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959f17e3b394adb04b30ea45816f412d31cf935998e4dd13be488761f8a61692
Date: Sun, 08 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770541433
