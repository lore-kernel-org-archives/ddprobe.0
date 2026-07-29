Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AEA484229
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785333634; cv=none; b=M6+yblfZ6GA2JHq+M9XdDggLPIB4UDCKbnTog51LvkC4PR3MqsxU0ceGUE6kg6n7vgBQfpw84nGdIVNw5/wuYYiatjQiOImJ54H4c2e3k6FOIUxjGDzCVklAz96J8Yv83yCFfACVcVtUP85vmG8fwOD/gPCPYeM7m6mnofwsiNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785333634; c=relaxed/simple;
	bh=g0ATdDsbYgbBTgIykUcVRwptp3qJRk+ExGRwigJb87A=;
	h=To:Subject:From:Message-Id:Date; b=M3YugMsE0xcpqxw7VGWBl4QnKFkySHQXxQNYLaUbbtw27JT3GdKyEc9A4HwiekfVUawgQDRlHXt1XwOQgs6oN53IIiLPiuviGlpOEyX1pcQ/iWyubF13DzC86jotdCEALnghCf3bOKGEZlXmMnR3valqwsUuMyZB9q3PUZAdF1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noj+MdaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noj+MdaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB52C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785333633;
	bh=g0ATdDsbYgbBTgIykUcVRwptp3qJRk+ExGRwigJb87A=;
	h=To:Subject:From:Date:From;
	b=noj+MdaP9phljFayXYmzNB94nHz6iQwdmGNs+b4RIFsEvCyC9k4/tj2gyKlyc2rew
	 4i/8pP1ycioTES6kpglYvEXGHPNrxAncxFDoO5MwUEolb4UhMbzhAcq+oStjs0nG+U
	 rxQDPHPbimDZM6MrQVCGXx8o8AYbMC+2ZCT7AV9+aJJ4EWTKzSz2UbkxVl4LYJT3Ci
	 DSL7pqCr9M/i2qIDUz/IyBZbz91F0vM+rj6W09YCggBrry2hnTzVPcoVf/SYfMAfum
	 mG8BrG3/Cnw/DlrCEsT/iNT4VzhsJwC70FusmJdslHVL/y6aXQvOvW8KqVjuAq6Exk
	 FFOT73CrJbYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA331C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533363368.22816.10565071425452643303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e279dc14f1c356179b4c3a77839f5e3dad0bde92341ff5db532314b8567d6f17
Date: Wed, 29 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785333633
