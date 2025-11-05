Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4C721885A
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762364994; cv=none; b=gx/g+Mmu+fQmNgXrDHFB1E+xiL2+NqMs47G5cjJpWTMG+Ijy4a299DOL5rIcoQcxIzWerl2kZbnteuJk4lSZzwCPMowwRKoxdFYxf7xx6Jbq3A0S+nHfsLlfBcJA3ArKruPNT+VVMROwfRcAMj8q+o5PXyNRiWWqJrOG6/MCUIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762364994; c=relaxed/simple;
	bh=N6Xjyps8JjuNF9eccBRx3ZjuNk2TgaeFwXyh6XDMXRM=;
	h=To:Subject:From:Message-Id:Date; b=qcGnNfAALEVZCXg0UgnTjRHa1D4jPC8J2XF5LuWEVyXHrOLA/yyhWGWdFtwKyB4Kycy1ExpWyHpSEBAqo+Fj9dmP0QpKxN/1XO3LsyvZ85RMCBZ4kmVgvyRX6xVZWfeYFlUgEvAIL3pD5MIB12cJCltVeRF4FZLWYE3xqNxGORI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qht5NOVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qht5NOVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7E6C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762364993;
	bh=N6Xjyps8JjuNF9eccBRx3ZjuNk2TgaeFwXyh6XDMXRM=;
	h=To:Subject:From:Date:From;
	b=qht5NOVoyLVuRXArWyyHpbAdhEoHMy3b0C5k+maRPVCwISxHLBXg+E5YYNJGX1lsb
	 wxoN+kp3etfalcLFxzw4fektO0FsPqNEWjmy3puA0aATPqGgo46pgUQd99XpOIyR2A
	 EwiDkMMdSphseuwd+8txFSXoAPGtPuFWIAsFZFblSx9Eh3j8BByFrSm+hLdpFAiml7
	 OBqFixvgydczEVlX/TZkYBCHzIeS4rYUPs5RzNeEgCLEsMqTGOHUH3l+yYRMnGyR8Y
	 DspwToWZmd4ZDoizrMQgh6Xd2R4D4vtlzJXcl9TfjYMdXc9adOil2HPG5LQCKR9+2U
	 p+JYiUDO36JDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47ECCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236499357.8778.15009887503460390352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684e154a2ffc9b2a0b4a4fe7cae82c7ae96a45c888c122f1691cb1a73dd995c9
Date: Wed, 05 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762364993
