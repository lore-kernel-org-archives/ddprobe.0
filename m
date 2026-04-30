Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1766F2848BA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777523854; cv=none; b=U23w9BkCYwmj9mK2un+AZcHyVAXPrLClbDbopdOdMre3oQ4IVF40lXVV+zAGa1MeGbStw+P2s2C4DTyjmu32hXsv2IZG5twPqQLs2cRfGGmknVYepu1iFcMnRPAjeqmGVFjxTzJf2WPcge0w+aya18uC24TILqVUNj47ovmjLAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777523854; c=relaxed/simple;
	bh=0x1sDW1lHm3I75FmUyOcJ17Qu3itpeSNwNxgJuVSbmM=;
	h=To:Subject:From:Message-Id:Date; b=b1yMJCyEgVdkQb2EL2OyFTM9+a/oFHuRc1+arcBgaq/6TMlZyj7OacdKocfV8ADJd6tiWkXeBJuGE2jPYiHbtINn3CmUseLh9mRzVZCU1BLoTzJ6tNYU/2SspkLvHnv5/WoS1Jnz2d8CtQsYKHxpK0J+6c46SK/vPCSpekbeobE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTKlvf4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTKlvf4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC6FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777523853;
	bh=0x1sDW1lHm3I75FmUyOcJ17Qu3itpeSNwNxgJuVSbmM=;
	h=To:Subject:From:Date:From;
	b=rTKlvf4YoyNESmCZSZtA9hwd/g4h6oX4A3w/G5vbmz1tGwfsXiCW0MEHh8XTITZME
	 nTYuU5/K2wZLqKwnIPurL64MO3ssU1zlpVoGlVFfMqCfI+EwA/LwiXy0sbbOI6TWJA
	 voaZPcRpMnVVqeHack4FdC+PVpjDUP4OfUzCM5e9+dYafCRyoTXIkPae5PaZPp5dp1
	 jfsZFjOCnDHb7U/byi8G6bOrIlwChhZ7624OSvzkPGuS1TlgA1fNdJ54V9E2Bc7CfM
	 GkBIUCGLUePl/8Sv0BQ6oN3sxKGerosAuoz1wwOxVZkYT3Lo4C9GGN9zgyOth0Spm2
	 g2Z2kLaqjG9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D1FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752385368.14485.16425570851592355812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4247e1526cafddae8e97119a35c1a40e60557b0b8a679167ad0c9b9b6f904c8b
Date: Thu, 30 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777523853
