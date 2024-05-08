Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4CA8F40
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715171543; cv=none; b=NEnrakeZd6ZGAD4r1C55NO25Nv8c47JewwNHt/U9MWY74nj4bg8znq8T9jWPVxt8VCO5m8ODg6ZuldD+qPu3XAW505yavJxuMB1Sd5wmcK8s87msPoY7PvMaHGWOqG34cVt0kfZe2dxHAAtVk9Jqs4Lxth+R7DUmyeuuvnqJQBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715171543; c=relaxed/simple;
	bh=vyNtEaBV/Tpa8kDb3KqbOBeVmwyt+aXQxDAeS4g0Kis=;
	h=To:Subject:From:Message-Id:Date; b=J8wwTTEcxwoyJkm6kwfPCq/6wqIsGeuYIhB1TaW/mnIBrlW2scFyWxm9BtY873ZpKqXHLJnRHqI8z7yNpzNXqVRSy5TeHM6bTu2KL/Unxweu2EKievXguddYIdaUIVFFEl6Sl/5vXOtn9Khs8z8iK+hXEntl+6DfhjWE5+AoDVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H637f5Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H637f5Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA042C3277B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715171542;
	bh=vyNtEaBV/Tpa8kDb3KqbOBeVmwyt+aXQxDAeS4g0Kis=;
	h=To:Subject:From:Date:From;
	b=H637f5IqXZIWXlbVpq26m4D3hO4NvFTfERER89EDkGzmTFnqpi/jefgCpdCN2OELI
	 G1SiUTcBDIXCiL+pkl1+JARvfxuxWj4rkQSslfHWql6sL14+6EW+IXouIo/7xCvXgy
	 Ow3MwLfbca/g+kn2sDolYM5KkSNR3ethhyT1Hzhu79ZQ//nufb5LBO3hupX5emGhTJ
	 Q5Oaye/29Hr9BEFfGlOOlM6sXC/abbhtlo38YatM0xG8pyU1QLy1HOc4ISE4MlJIsP
	 l1G5iuQEGgN/y1jE3amk7JyrUrgVh6Fckm5XxkahgfLx2EFsDNci2BhSz2f44UkUEv
	 q7QcObjzJZQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BBBC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517154277.11728.4851991878452470089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90831337a67a92f3377854fd34f65531c490d3486e3d83288039effd0cb29e4e
Date: Wed, 08 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715171542
