Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB044469D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754008793; cv=none; b=S3IWl7lmqEA5ui/5o6joHF0VdVK5QkAVYVQNCrIITYsc2xhV95AOfgtsbA6eDW51orme4VNBSzo/4eR6JeZ0l+TCm1vdK88sgS6YlHDnxnVOsAtNZfbBI9wpMz8t9p5PlSVgm8Tm7TMHRFNZXsQn36PfI9Xp2NiMH72TA1Wf9uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754008793; c=relaxed/simple;
	bh=it3wrZPIePAwAfqKkKewpbzCfBbzrlbYokTBtMIpnto=;
	h=To:Subject:From:Message-Id:Date; b=cTw+FVkuLAzpSthYO+uCXxWr6c1WCQCBQq7l30FYcR4S8fTECFSTtBqwvEdybZ3Hh+m3V3wqeh+58M2XZBvllD/5ohHg1jHqLa54m9cTmWlTCNJ2g0uL7uqNFUfGnfqb3xNXgLk6/3ApSsQVmmSEjCeveMpiCx8VmRRQkNMo/8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCHJiUjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCHJiUjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA2EC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754008793;
	bh=it3wrZPIePAwAfqKkKewpbzCfBbzrlbYokTBtMIpnto=;
	h=To:Subject:From:Date:From;
	b=ZCHJiUjwSIjlseQtXHVGppVVVNk48c+d+JLnhZ1bJv84ld3Bq56PFiwiz06Ackw1H
	 edaOSUQpxnZEbAKQt9BzLPaYWZ3CO6H52+CmG0Am4IUbbw7l6zx9WBDbaQSSGfCSnS
	 ZxGfFKiPjiQPJfTkuF2PcxWli+A+rebaU2q+PtZES/oWVSz1ivuqVoqh7w+BIwBmfe
	 D5MC5wNh3aRUE+5NQ6fKcXw60jrMkHabZMW4guOF7yf8hl4NBeF50wH6YOXdOTU+L3
	 VS2Tg1+mYU/zCm667GaZkw8ExMO9riFZfSWQxJ8z67C5fOgpaMwK4ohNa5DsAQbCuD
	 aMzJ+2/t7/KrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135CC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400879358.9931.7359664169478007970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacb01c3ba33bbf1106ad33069e566be4f7e9ba8943e2cc123e01441419a2e4b
Date: Fri, 01 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754008793
