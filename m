Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD0012B94
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766115234; cv=none; b=Xe17ODA7kSQRPc71oge0hDfsSSehk/fbqIN2MykdjtoHMc7b7TbLUQfYGYm8IEBhafNWa9aWyoRtaXlRyC8025LOd5f3Z5EO5sbn8Tp8WdB6zRBkQzf3dMdOxXpum8WCqZdJQBIyKQ2dFaRJjHIW9oF9qbT0MJIRjKSnTHDrsDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766115234; c=relaxed/simple;
	bh=0qG01plZ1K4G5iMEZC3f0mbb7UoOhfb9F1WPRtoyyFM=;
	h=To:Subject:From:Message-Id:Date; b=XUI9WEXD38s0p6oEWOaRoSk3CKfRbXiM31J/sXGEGXyUI9KDN0NMPz6M5xwsTy1RKH829aCkvqc/wONi/RC2Z3Ipb7G/tzYspttpknlEX6A8T83nvi4cqOXncP11YZdQ2P793kSb43uxpXNl8bkleO472BuynPfrsMhxBFnhGac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qb7pmzqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qb7pmzqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766115233;
	bh=0qG01plZ1K4G5iMEZC3f0mbb7UoOhfb9F1WPRtoyyFM=;
	h=To:Subject:From:Date:From;
	b=qb7pmzqiM2eNLsTtW/EMcm4Zs9pTHnJivvVmNEwAViZdb3cz+LQ44O9lp2Vok03F9
	 9W6PBWIAJUvOM9MjpaTd82umj1pEhzIJSMN9qLCKEyQCxaVzoEhi+6sVZN58T45azO
	 i6r6flSt/y04oc+/tQeCEA3wI2gnhaTpkdORypHKaCU3fDdA0L3cNXrlnP/Pzxm9qg
	 QJ9Z2bYq4L0VnkFO8J4C1TBDXTGVmzu3yvLtON/5x28ZsodryFo6uiDKwQAidfot7l
	 uyRKey4TuqyhCFbkQ86y8EyrFPN4Tu3INgst1KgRTRwQuT3ThnG+Gccc6PLLiO3Bym
	 B31KbVcV1qsNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92549D74951
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611523357.15446.5981100091890996289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab18fea44469c24f0784cdc30eb84237e42228b825587b299e052bdd0e51eca3
Date: Fri, 19 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766115233
