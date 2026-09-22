Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C76D52269C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790063435; cv=none; b=IAf4Z4eMrz00U/KTtO6eLRPGNdG0XtPj0D3pEaUA9fCrszG3FBO05V0OAEyIJApcXtjisJTdD8u6g4olAiOz2utVF8O3mBjU+zoF4u+GEVpMsF+gIRE7wTRVEJpeODZPiZE0d4Blo3RXIdd0X9ne064F7sruvNBrSrtzmes6Ku4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790063435; c=relaxed/simple;
	bh=e3VOIBdQW/gcTLfmIgSdB6/g2OuB6G4TB1LPgFxLRTw=;
	h=To:Subject:From:Message-Id:Date; b=XYF8bbnc8Rp5Y94sBKXuXVbF55utxkWklGrsCA5poGclKmjYudDTErq7VlKfnUVyGSNiODmUk4zl5nll5cG3eHtDqi95IHqcF5OMKvEzO9G/i2ZtF0BXELKnbiXMekgvxgoPsDkxDrSibgASdDMy6znnHA68CEiGAXuYz/8Xjsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoXdNTlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoXdNTlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D24C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790063433;
	bh=e3VOIBdQW/gcTLfmIgSdB6/g2OuB6G4TB1LPgFxLRTw=;
	h=To:Subject:From:Date:From;
	b=RoXdNTlo5zeZH9Smw08/f+82aNcUp9jIFbMVDCj5S31F2dBNQfS/6UYDQQsJhy1Lz
	 NeQxmJ8Gw8HiN//zlB40/YhARrhsPy2MjUDWuk1zok0lcmjKiju6GvClcV5BUUv4JF
	 dLVA/X3rZ1DVdYRwFbLhTMjwUep8fRUfH7TeSkbsJ+FQeqh7S/zQ5QiUN3kfZQCVXw
	 88kHA//KyfwMh/83fwomiB/nAxU8/VwVRqqDvyFUakB0tNzrBeO+pv3tyyJulXnTVv
	 CQmk5nc/s8puktwrPbEl43RVn7BaXki3/+osZF7OQocOi3GLNdfp1K2XdniaSYRNb7
	 sXTwuflGAXrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD64BC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006343368.30149.13069936177573695351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901a680891a3fc3ed51c060267053d24621e94a5e9f33b72b3908a163b1ea469
Date: Tue, 22 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790063433
