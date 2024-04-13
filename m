Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5761E491
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713010763; cv=none; b=Q6iQcx/1sDhQKZi7oc4zK6nsjTtqnPYPRsiumiQ9x3I6mrZmZbz6uOOAuSGJZqzwEaO3L6EUhl4ygIw52dHYxcMrAV9P7yRh/gwA/MoGOOSnJwBvsGH08F0o1abiL8ycb6ClrsF9kIuL8LfyBQLpelqszdIFTrw5pqOT3AzChbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713010763; c=relaxed/simple;
	bh=xOaNjwlsYS7gBiEDaQYClZ2vh1lWbcoQZji1M/RGjGY=;
	h=To:Subject:From:Message-Id:Date; b=r6iAgzZUDRPH1NYMSsGmDotT+OQLrCkwr0gsrDjR8NEPylLzdG3FddCK7nJIlZfEPKSjWFcohCv5CZe5G6FDRQ2KM9q9c7uHB2TVfzMN949m2W6FJNMEP2oTPGFvEcAGAgYhlsK4KJ8/01K45qxSXZDfNKzNBbHYdf7MI6bkXu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGK+spfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGK+spfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF745C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713010762;
	bh=xOaNjwlsYS7gBiEDaQYClZ2vh1lWbcoQZji1M/RGjGY=;
	h=To:Subject:From:Date:From;
	b=MGK+spfCK9zfDpuTdK+9K67lc1UVKFDPMSZMes2tdmJXFaDaI7Z2jN7sGtOaQO/do
	 Yg0GKuRQIFurimoCmoVn+uX57c4ruYhmE4jK89COqq1GungvN/bST/cUrP1J7VOwtw
	 2lqtr5p/IwU86fOQQww/t+eHaQcNclkt0eWL2gpzdoiWa9HDjq+qboB+r3IvrTU/jh
	 igjR591fmXPwy+UhX4kM/kifekWnV03/EhVSRMuOuqPueaV3XYTy6Me8tkzNyf8X9x
	 ZmD/eEx/CkV8lLte+E7+9aOFq7MdmvAyDe3Gcv84Q++KHsuO7n8eXdHPKRwkaaAhXP
	 t0uM/ly9dXg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B4AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301076278.31280.17232662508631888851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6886ed75187d93a8f900e4e84a38f2bd1c5619a1522832f61bd36d8df752eee
Date: Sat, 13 Apr 2024 12:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713010762
