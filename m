Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4308340A93C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786192835; cv=none; b=P99tZUfP6tm4BmxDkSV83MaOOc+rOGoX2ljkZUhNslm99bLm/PCOyFd5DSv1i5rILN9/fNuvrY+Ez+pp6+GaMNfQXvtNE2prFtS72pglzF54fiW1Aw9KpoJV0kbY0F7OsTar9iUHx6KM5M7CwfuuxDZOa1Izoe4bvT1NNOp8aIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786192835; c=relaxed/simple;
	bh=eUGKKeH7OfZUDWjrHoBc0nwhe7kzqrL3PMs2tDz413k=;
	h=To:Subject:From:Message-Id:Date; b=QXPfo09P1jyG05aE8ClTs+Bs6AL9Eft6cWa8fQ/OHQoxuytrKGyBjLGWD/XLJt3Yu/RQcP/wGf+ERyjoIhaAIvFyzPbtHfyGcDPxP5P1Ap1zmhORCPZIrmIT0y481R7tqfr2vhXDG+wyI7z3Vp6/StvLUWcg7SWU5/I6NuPGJL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYc8F9cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYc8F9cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF274C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786192833;
	bh=eUGKKeH7OfZUDWjrHoBc0nwhe7kzqrL3PMs2tDz413k=;
	h=To:Subject:From:Date:From;
	b=sYc8F9cXQqUdAWbT27uNb/gc/wgw6m1mVt1rCmpks0ycqxWTpeXBR2wRK8/5QlOKK
	 NXiN9cpiLOWASHhY2INGMysHbZjgG0CmKGgbAjGPw7dak/tbF6p1Ymc4tY3/zZvN/P
	 reh3bTWzRDjlABM37rZJrkWzZTqaHm7IZZmxTVeu+PLk4f6p1fIvHVkBZwC8veSeve
	 oy5yp8D/Cp7dqc8zJVphCuQ/d2tM3BKvtog6KhCq4mjyyb6qNh4EGLKvetmX87S6J3
	 jLkub/Mc14ITP+6DD37gPln0fdCWPCpn0ehrHDWqPW8TpX9vcUSc+oF4nH3hpxEWpt
	 hIJFFtsF2H6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB096C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619283369.26251.12018760826488188762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0f5d2a6d86846c3d41895543b15659d789ad37a99c8f2ae344884d13215f7c
Date: Sat, 08 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786192833
