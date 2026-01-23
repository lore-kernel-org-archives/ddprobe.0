Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F8C33F37D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769155434; cv=none; b=uYAVnSdgqn24arZTge8GWKNMPFSMbcqju6/Mb76be9VAVEbmnvXM0ACAMJqy2IZ4mpmVdoELA1pylW4drKEqCduJnoiXNr8rrsh81Cd90DXu7XM1xT68XR6f/UQ3AVe2xTcEGWk3NYn+HiS4a24bwPD7EtZ39JWN9+KYTgVTfbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769155434; c=relaxed/simple;
	bh=JRjzMCApKgK4HfjNVINhvJQVmLQll/wnvXmdcQoRh5I=;
	h=To:Subject:From:Message-Id:Date; b=KKp6GKNNLnQvH3tD9nVOFw5Z5RWGZgtnmQAA/BX7uL8JIY/FqOTQ5/QOg0W6zNQ9UfyZXjCktOHJBMacEpr22IdI3rvw4s4Jnh1lxnop/Zok688gvTcvlCy+B9vLzapLW/Fb7UekUbw21vSm8pH1D04ElAw73VuTmhtxzAy3wbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8XdI8Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8XdI8Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769155433;
	bh=JRjzMCApKgK4HfjNVINhvJQVmLQll/wnvXmdcQoRh5I=;
	h=To:Subject:From:Date:From;
	b=G8XdI8Gh+VaYiHJ0li+lek8+2utqyBECUwwluJxt65/LIwv2wvW6XR5l+xx4soLL5
	 uJZPNOG06Zk8QpAdfW44CUmkeGX2xmzGnZsw7mt1ppT2OAHYClrqo53pH1PwgFMSBf
	 wPL27nCwfIsbvJ6mYOqUr0txhV4yOMjBpUJS7Mptw+XmkhOsNZa+S1EngM+qkl8hhN
	 gh2Rdy/Axp5RSicxxxdhhQUS/jyRPm8WliThUP29dsFEUnVaCb5ejtGy9u9HQmZCsQ
	 zr6U9Pc3Hfy2hF0JCgr+zn0/zehXyAjkD9Ahd4EIAMpUAhvy4MHmmOPEK5EKnUVt5D
	 Cyahd//WZVHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9931CD72349
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915543361.30476.1587066677547631143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9ddc0f8876f2a5b55aab49b7a152456166a147bc7af0efd375cff99ff94c6f
Date: Fri, 23 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769155433
