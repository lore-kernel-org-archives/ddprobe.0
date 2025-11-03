Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492542FF673
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762213194; cv=none; b=XZFcUGnJfIdNrKS9Ae7b6SAmb0gODWwDYkbsNcI+vVqssbBL/MXVx4s0sFOVJfsEuF/B2AM1TxQmuMBju9/gOABMqoxL7SFWeUjS1LRCrYNv2RZH8kAfrCjGZ0yaDEJWT2SM3a9H552FnwAlThbWQ7QHe17D+cimluQNNyWlOyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762213194; c=relaxed/simple;
	bh=L6B5blz/+fZp32hvL2Zu1PYGHrZDQIDMeVFwIham++A=;
	h=To:Subject:From:Message-Id:Date; b=G/eANjSJQX+QSXs2QoHyF/qkSfMpdo5onWYVHCSjkApvFzIWUvfNiNXoVx4thu0MMwpPp1DXlaglzzHJPc+aLReDLNcUtTlXECLDUgqQ1HsAoPgFFAN3DYlLCHZTlSR+MA49piEEfg9doCGy/UTa3bCLOvK5fwJhegKfMrqGk4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTgDxx52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTgDxx52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BC9C116C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762213193;
	bh=L6B5blz/+fZp32hvL2Zu1PYGHrZDQIDMeVFwIham++A=;
	h=To:Subject:From:Date:From;
	b=oTgDxx52Y+wk3PV9IO1pbl/U00bSjUbJZY0C3q+2AWZohRUnDgVTQADz8E8ne/DeT
	 GT6/i7NmqwmW4OH/anQDfFeqvNy1UQeiLOkvEQ1POc0y26KDExqLemR+ntaKjb4JiE
	 kC2YPtFguc+cbkzI2HAhd+Ea5CFb5MI4KFIK+d+cm83GFumyax+56rZBZZMC7BAlme
	 pHMfKvr9YiKLrbo1dX6kY5WNjBwcICfV+Y71YTQmzqg317U2zxq8kUHXE92PIEbxX4
	 4emgGJhrbtVgN2m+av0soVrsa9YPjdMvOkvGwBGvuHob844TO8Q6Trk/6mp3B2LzX0
	 LCOYRr0YbXA6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D18CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221319365.7514.17129563017832092301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fbde766bfeae45de7d672cc4040fa839ae37a2ddf7cbb66697020aceb64df5
Date: Mon, 03 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762213193
