Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4320A1B6555
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733078754; cv=none; b=u9cjD6+GX7G4yUYo2twVs8g9l+C51Z38VviFfAqKrnOF/jgnLHI4WKLhkr7wX1LYdbHoU4oEIPmyOitG8iJfV7HgRWINMNSUwlH4plpo60sRCXTUWG+B+qbQOf3vjvm9eQc6TCssg7PKR2gGqLkveAx4V+4zkF+dDmoyeZUTDcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733078754; c=relaxed/simple;
	bh=45OJPyiaF2EFuot1g2CYutLRt7TAxQD2naFWVCcIBZk=;
	h=To:Subject:From:Message-Id:Date; b=UrFnlS/Dot/3Vfmb6OzBa/q+MMDWphFW4FlqtbAtWhs438FygUemzOaj5TBxYQ92WqF3RrliqzzxOsDoj2tv4giSK/auexV3PaG8d60CzJmRESqu9213aSakynoU0j2pP8bfwxNPMqCLXtQVk2xBg5MOM0O//LGOs5bNUuOZOtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaEw7WfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaEw7WfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC878C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733078753;
	bh=45OJPyiaF2EFuot1g2CYutLRt7TAxQD2naFWVCcIBZk=;
	h=To:Subject:From:Date:From;
	b=YaEw7WfXF4ntCJi/IFlphWRNrW7+xuZrP4Xtu5w84T3Z4IxnJj+oXem+H3qrHzXQ0
	 iykzzvPnywqNAY8LYFnsxh6mX0rZNrWiWDTSJAVtqT1Vlti/DxwITpj5rLnbe8mx84
	 +R2gzwKpUFcgwKiLz57vdp6/Eq7/v15N6gU+faMSE/Ipxa7ALjzN48myVHoVIQZjC/
	 rY9tqTmz5z6BuuXblpnntQRyz5qmqQAjLcClwxDOyzktcgp6bh8dNXcSWG5UkYR7Ok
	 aar+QWiPktf/a4jSoAaWjQCDADO4HPcbeS9u6TUiivBWP/+nAfN2Jk5x5RY99pH+0G
	 PxmwLejmCk+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EEBD49780
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307875360.4628.8819472030200347830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2527b32f08cf72b08af601f2d96d46b5656a0f92e2453439eb92a9d5973d4d
Date: Sun, 01 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733078753
