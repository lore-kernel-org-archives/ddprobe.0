Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225B237C0F5
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773613494; cv=none; b=qkTHSrzSRyxNdlxKTM1vlnKLaYx57renzU/x0N+bMDuclrFpKaca4nDbhGEfeHRtlWfaF7goiuHn8+fVlknboQ3MGrJMif4ocj6rzliabV91pwRbp1auy6X4ynfy4Mg4sx8WGD4S+xkIpBVh/2VrzFVKiOwp7EWh+SKA0xsI8J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773613494; c=relaxed/simple;
	bh=A6c+VFCQaqXBSjXMsrCagxCQ6i2y8ZjUuuD8ybDfTCE=;
	h=To:Subject:From:Message-Id:Date; b=GXUFf0qfI0NEGGdptKuFQclTJiMHH1lPrbLnSe4dpzIPyDuwriXTA7KawGSHAfwGSx13fVBT3FsosL3IiISjy9OqIjvPVad1DcDLpqm4FfROnROSh9GIN1+ZP4ZHNoFsbuSMHR1/DzkwsvjlxKm3sUfTIrQNaOLzpTTqZxJPoww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkClb4TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkClb4TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A987FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773613493;
	bh=A6c+VFCQaqXBSjXMsrCagxCQ6i2y8ZjUuuD8ybDfTCE=;
	h=To:Subject:From:Date:From;
	b=MkClb4TBvonvBwzdvo5s0Cm6ZgVy3NQCtPHSIZxBTorl3FJNvWP4j/KWVhu/BicO5
	 R0LC9iGO+qQCvjG3hUF+U/usqvGr4/dYq9s75BfbYnqJLLMwYFkkcRaJtwix55C2Ii
	 RHdXwbZLsEyasbTQ5QWQvDQPGskDH6lxFHtv06GOel3I2HUUhVH9SnogCM2hyJsPvc
	 0wKz5IeWTnG9R3A2tpWDfy4SgjA7kdrzRPXhHuwJ14lG+huWInpb+56H4jng18y5iP
	 Vwq7nsQFoHhwr6cGyAg45td/OP1v8pEAS7sfgfrVybUH+hFYAg6ChtdfvjEHXKEOcq
	 yk1eeJPEJ9zog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F0F3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361349358.25470.5546418343548745209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd0d0788813dcaa6c70a27443081436231fe4f6d95d6a356955304cf8eacb02
Date: Sun, 15 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773613493
