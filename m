Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B1B1547D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761475194; cv=none; b=Pg2ANCk3LkW8DnArdeidUdsQBk+K8qNT51tCoJKxfU2U2I8TcoDeEWhMKZuTDfubTDlbFAT7Qmc+uHiX+I9wnln8UhXCBFZoVxJ/ZfT2JVwFFMRn5+n/WvHzs23hkUK80EOCwLaw82p5RnlpG7+r2/NM9RG/l1Z9AFELSWFcu2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761475194; c=relaxed/simple;
	bh=f9qhVQD9kzTsDt06bx9KCi0jg6WeJPIMPx9R8eM3r+Y=;
	h=To:Subject:From:Message-Id:Date; b=JnuzRGFcO03RnHSRbI253jPfSsDMuxgshL5bEp5sQHoreCEx26MjQyVzraBXchQ1smj9kZmmPrDlyNQyYmCPPBxcRCbHgJaBi4uga4wURe2nhRCR6vZKN+RTTZ74k3fciojinhHUnHTRpXtykpvOq8awcw6rg1NZWz7pwIZ7a1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3rX1INT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3rX1INT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A45C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761475193;
	bh=f9qhVQD9kzTsDt06bx9KCi0jg6WeJPIMPx9R8eM3r+Y=;
	h=To:Subject:From:Date:From;
	b=S3rX1INTQxEqCmxfD5JBW7Q2OLhu84ZPZBl5PDNx/n+gPRhTMLSeEUmBlgzSOTgQh
	 dc/26kEu9rrvfo4eV50THW9UvL+wEQ/YpskrRScQ6xrz6kQJGGx5sxBASlVx8Ih6eC
	 4nCzk/3Hyn1hm1lpW/MBzWlSJrfGW/0qABOUyYc0k2aOqx2B71oD9WC52WIaQcVxXD
	 Zimj+1gOeo7oY8+qAupb1/EklV+HJESEN04izOgf1kr5wrLKv/BT2a2CRKOkehCIhm
	 BgM30RYMWcEaV9Qn82ct+PTJkXOegKOJsjzbxzqqSr7kCoT9kkZL8ctcCQ+irQvTB7
	 Qhefle2Hvmhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94982CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147519358.561.16805842829016310857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b42026d5bfafba465ed9d2efd683ce3d34e11f247ebaf698e7b39d484ad311
Date: Sun, 26 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761475193
