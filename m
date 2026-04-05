Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B32224AFA
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775369734; cv=none; b=I082PGU9u2Fu10vOswWpndH2UUHM9tPsuHTGAdhnI1D5utUtcvya+A715p0FIFjKPfCz/XXE8LI+35/LeVWLa4IvAPk6OCFYA1NzyZDTEKuHLGlOC+PJfU6NQ1mvlb+Lj4tc9tkNrZoHohmorsbdOKwpA5n6uFSVuxkN+5PIPLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775369734; c=relaxed/simple;
	bh=/fPUHUC8eK0Gjc3hFd5qAhlpoiDrGzdArj90teSTDeM=;
	h=To:Subject:From:Message-Id:Date; b=djbRl/bxHnGkH48PO5N8kDnrmx1okn+hfPaG10JIF1dLTYL9Ag6wAc7jmt7JjSzBNC7cUhTLSrwKdSTiQa47JzvPFQqbRMQhzNITMwBtnzMYX2ZmFpgzToEBjXeatz2SZ4Uvkh1HRgv2gRQFq6pjBQx+Pe/WSnJshGWU2Mx176Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/k8h018; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/k8h018"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F24C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775369733;
	bh=/fPUHUC8eK0Gjc3hFd5qAhlpoiDrGzdArj90teSTDeM=;
	h=To:Subject:From:Date:From;
	b=q/k8h018QTV6jWahR3KJmzWQ0nKvxrRrUcS+AfUlWq1d7ZWFwGgX9SfuXVeTWz+D1
	 xBG6CcLYcCpp04RGDm/bv1oCL0D+Lqvy+GWaxE5tiTs/NudbyLhUaKUprutVCpDMXe
	 sd4m3YawccNNfJ19z3AJz/uAWpx9jz/RVGJXHM7MqJ8wwx1thJoVOw7zlsUzIWIwNN
	 NBZTj1urcg/sWMxqS1NxyAj25ZqQU7J3Mmn72I3fF0uYDI3FP1v0MrurnvGs5DPN5j
	 0Sn1zDSaxe1vhCPcwKtLxw70Ua86BahC2GY5CciKsg9jowhqvkf/m2d7vB8xmNEEwS
	 iBGH90Qud1+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1217E6400F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536973374.25336.17106351848628811820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba010d654e0dcf40ea9050212871f9bbfdf851c25c8a55eb22171472ed1f108
Date: Sun, 05 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775369733
