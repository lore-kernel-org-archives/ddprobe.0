Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C811DA23
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774153494; cv=none; b=s89S6CXCCOgqknuozD1zTHUxHVUE4h0OT6yaKHpnKA+C3Vp5NtkLgB70vvPT3TId6bMBEqlq4UJgopq9MAnb2kxIIy7rs5DRKcTDCS71pUE+PhV5XSug+fXZnMSsBva5eUIcqh6fN8wUGBtfBKGbbsykjMv4YOm/FMKBhPHYI/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774153494; c=relaxed/simple;
	bh=NtNAdDWD09KhHvv95n0TVloJNcEy3R/iwDhgxiwSoe0=;
	h=To:Subject:From:Message-Id:Date; b=JdhyMq5KK/2l8Oogacm5XajnLPp/ntjHYdcXpcuESwYlJJj8b6NlehxQ0lvidKFirbI64urdhz1SMTQC5x55WYx9Q5I4CvGju/+QhBTqGboGmfv03YEsMIZIqDz1MA0e+1Rb9SgvNnnt8zHuECinl4wwl6SFG4V0KscnvUi+mdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLNuUkzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLNuUkzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F86C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774153493;
	bh=NtNAdDWD09KhHvv95n0TVloJNcEy3R/iwDhgxiwSoe0=;
	h=To:Subject:From:Date:From;
	b=JLNuUkzieyhNYrAj8uT1puLsMGyqHrLlQeTBWFSfjfPwP2s/9LwxxdVXie8z/qBSB
	 NuuowiPXQa1gzecURSrJkH/AljcgzfER0A4sNDcC2xArVKX7V05iiM4SozAzk13xcr
	 9MlF4wnY8Ex88+En7yV7pbt1ipXtWnyRk0NyFptLmq4azh5mVMKsH95h1Gqm0VvSb3
	 Q9beY+fqSNDexEDIUOrTxNkeJOx5OfccFjgGe8G6gOvDpk/ew3444xVYXTCmdf+edB
	 RAcylxoKlLTndq0Bl/YdUzqnmTX2e/VIQMT6U78+Jv9FP87WxYhRrKZL2fjp2C5EGN
	 ZFH+nLlYRacNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94813FC72A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415349357.30756.15813352970826343906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a789f1c3debb33734dcf132a39b6de05ed3b0924ea6681a76b00e0ef457e2d
Date: Sun, 22 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774153493
