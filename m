Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2151F10940
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735747554; cv=none; b=NYh+1uEekgtB8LRGK+G42agHWP95p7DaqMcjvgCkZqhbAT4Av+yLdo7MX5x+1Gbt0ToFYz2UrV7DLvDeRB2FYlpZJcRGm4eI3jgJQqqoLrDyOsS1WPZw9mV7e1F4kl6KHhc0+640vRbrTiSaKFmt5ARiZSMmd6sjnuWsP4BxFSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735747554; c=relaxed/simple;
	bh=kagjOsXzHKpRcJaCZqD440h5IS9qmEuyI4uAFKoMMgc=;
	h=To:Subject:From:Message-Id:Date; b=p4YWGhcDeI6rvx+4212VpB9QGyDoBEctULqVXYI3LMFr9S/nLKBVeFJMy9dE2MzUH09FqjA92RuDH/x5REoUTn4HgtwJN+kyQKmGT1RADiu0nG/KT9dHLZqOBiSS7WNdqkSabSTuZzrMC/cEVgPE+i31XUAxfoiSvTUMenFuCGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jccZ/oDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jccZ/oDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22A8C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735747553;
	bh=kagjOsXzHKpRcJaCZqD440h5IS9qmEuyI4uAFKoMMgc=;
	h=To:Subject:From:Date:From;
	b=jccZ/oDI00hrqrUsPpibDyYS2p5G6sNmedTRKmBRSGOQbYzKh0tX3qm+OJDA4eQp7
	 736C8OvD6wdaS2pYHcjHRPF7cBPHUgHMmTK5Hmb8hHo9ciHIV50KgvcWX800bkzz1X
	 VbMKF1Y1gl5eWfMimk8CTyw8XcPU3I39tFJOtzYN1Hi3GwXZJXtk11qJkJJZBIND6z
	 exVOqyri6i0H677R+GsfR0v43fSqu91NeGscBP/Z1PjmzWvm5q8GgVrczbdekzRbVu
	 JmdlT1qC4FOoFE4uVc+enFuHxaPAA1ZaPbwZoAVJzN3DIyK7peQLT+0cKhKvpgOwE+
	 4tMMlMGsoMa1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ECCE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574755359.15099.1066984652025785297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669540f8bcd1ead9c2deab7d988289479de3328bc54083e1577129298995a3e6
Date: Wed, 01 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735747553
