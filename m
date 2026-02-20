Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460443358D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771601694; cv=none; b=dBz45Gdu1jfBOvpwsjtVRDVrYxQ+xWvof+Yd7WlbCfZ44TnNtsuim0/I/PmYeCx44yzx6CT0dNW3hhMVuMyA5cYl6tkQTlEJqg5WuUEjWvYRsVJrQ+ZQVEsjaR3TSt9spP7DGNjcfYvjvSL1x1my2gQQmX078tOj98d1ltPqNEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771601694; c=relaxed/simple;
	bh=fEnIgY25lrUOVdMrjmB+DKWenYzpFbBLn7oRa8cNCaw=;
	h=To:Subject:From:Message-Id:Date; b=fBgfMCScoKsQQZf7Edju5Ey8oLwUss1Svxfns7NyXHUuN/I9/LgUIdNL5l0gHU01cktURwWP6rrMn2jS+XKj645sCXGgvq0yy2PRXvBRkd/jo6mu6gLx3ckmq+6t5GteQm08sV4THdR0LdId4+Nxxd1/w92nVwp9yuPfOarYuKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgqK4L5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgqK4L5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0302C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771601693;
	bh=fEnIgY25lrUOVdMrjmB+DKWenYzpFbBLn7oRa8cNCaw=;
	h=To:Subject:From:Date:From;
	b=fgqK4L5k1BufBHZrDAC1MZ8Yz4PVKGV2FJEuY/7TdcY+iazPVC7uwCffKPgmrm0XX
	 MXSdszRji2DCjPhV51+a7AoghUyW7hFE0gQnb2GCf2zghVXSzjdtdf9dpt0JjEfQw8
	 s2JXP0AKZI3ep+Jc59R7rWhUKGo4kvX/vSlBkCU0gGplTB/FkxR06S3kU5unj5Qdae
	 w/XBA+DZ0UokSuFd6826KGER8bGdzl9L779SZxJ/Sx5Szdwdupa7E1j3lB1VTyWcgC
	 1mT7ogeYRO8kXM3AzdDmiHYHr+tkQyPURP/4soUaAm7dZ0JhQC1WEkvHigsV9Cpvpr
	 WN/zI+muynPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FFCC56206
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160169361.9452.13552057630860725740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9b423d39f0e14e3ac9b329fac0663f72a85a6f21a00856751102e5644a5064
Date: Fri, 20 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771601693
