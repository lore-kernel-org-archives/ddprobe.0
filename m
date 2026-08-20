Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51906261B8A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787239234; cv=none; b=WJg78mQgE9sK+UVGBhZK/qluXn+IL/I85xVAGwtOaBJr3tIJog2hrDRsJak1waP3H2ZeZJ4+wz3DJd2McoO9jo+YuNpsW/XvJkYE1Evjvn/UPAw23/2h+X6XK8rd6eL1pE4ANS7lPj9eU+veC5jc+QcdRjw61XomHW1u/Y+d8p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787239234; c=relaxed/simple;
	bh=I7CISlf+MS7ykk1VlC3Fpb/qSVj0j8nLef6dQF4PbMU=;
	h=To:Subject:From:Message-Id:Date; b=oUmxf1uYP8tCyF7h1iPCkaIk+SkTYK5epkiG2qZOujjVydKvH8nCqZVthj4SSH0Pp2+JbK2SbCJQFRGQByzp1xecYRRKPK/3dHD90O0PsJHTnUol1ZvZOrwJ5OTj8mPofEUc7fWH/QNqklDLrvKf1hXg+ZKRG0pEL0JzeUmJjJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8yig0o9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8yig0o9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83E6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787239233;
	bh=I7CISlf+MS7ykk1VlC3Fpb/qSVj0j8nLef6dQF4PbMU=;
	h=To:Subject:From:Date:From;
	b=M8yig0o9FAEWMMgRmMWd1fLQ75oHExOQQJcZZrndmMVwyRIvaLrPD3CcKkbd2zER1
	 Q3C2JDrbS9v9Gv7JmfWzM61v33I7soGOrplZ2Hp/ASDJ3HR9zOa/RYUNeps9QtsKoR
	 ThZHXqX5zhqTPqNLdZoh1es6mlvx3hVwlQ0JdheUIdfY9kaVfw1ptez7td1TPf0PNA
	 sMkSji5iz53HNMtN6Ogzkws2uQJo6W3H0XnKtrW5cn+oCX/+4QY/aqVl3ObEemq0eC
	 eiz/+bFd0EoyuFT7FBW2b4jwpPly8+G3iEQN0uN+ZK87KILiF069JnXk5bWBDPQEgZ
	 V7eNMMTUqcfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C6EC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723923372.21503.1566517309871036808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2b6fd4863da84787568238f5065a3f098d5549eaa70c28a60ce699a7bdeb6e
Date: Thu, 20 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787239233
