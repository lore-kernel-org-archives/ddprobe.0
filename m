Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FD8168DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726316754; cv=none; b=FR8sH7XPv4xJKPqDBGqt05YgMNDBLKK772bN25FC/JVuzmjUfRPPqouR6MVWUMUcz72ACK/VWhyaSjdX2hlTR5/hDBT4jcxK9LSdGbUfnLCnAvSdRI6KxTkwxmkeskR7aXpKpeJEa0qoz0+Bo0DgVARQFybsTJqdUG8VtKHD6cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726316754; c=relaxed/simple;
	bh=4XgIVgLcnMstl2R/YN0eupYKNDvrmBrzehjAFnBoxhY=;
	h=To:Subject:From:Message-Id:Date; b=PrDugODGcerQ+mo0vzM2jbOnjhBIxIWJUrS8ZkdTHzscdwl+TxegXr2nKa+ROFb+kqE0lnZ4qOx1TFcWtVFP9iwz1AbXrX6hW2FV/Ff5Q1BW6jfXbsJL5vojkP203pYBfJICYp3zDbpPAlRGVX9kVRSIVeLjwKjUsc258FkSpBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSMMSygS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSMMSygS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE251C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726316753;
	bh=4XgIVgLcnMstl2R/YN0eupYKNDvrmBrzehjAFnBoxhY=;
	h=To:Subject:From:Date:From;
	b=gSMMSygSPcQLlIJaNsKKv1aYKTn6lhShYhXlriZaTHTCuQ7jj7XiioLmsy+7SgTu1
	 rJK8kaWC/KIat32rzXeyEeZnNDg/87evjgu8Mk3NTwU/8gxbTo8U5E7PFTIL2hIQLq
	 w7U+9XMP2YjPac4jhsXL2THpnQy72p/Jnh+4a+jtu2zjLpIc0K/FBD1WdhBY7hIJQS
	 +urU6zgiEpjpCyiCxmkblYpjCe44YN/narZy2LgtKT+dUSI2LHJK50rGUQwVLkFPMq
	 nlaGCV/jNH0KEhx3Rg/vWXcvuJo6GnHY7WAeQ+IachBJk2Rc4CS9ulmyLXJgn9fl0m
	 d77tQoeUZNZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98225C02195
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631675360.32035.2383064178886755251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ca4ab06ee4e92965155cc0092e01b96cf778165c171f6c69d189f0bf058f5f
Date: Sat, 14 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726316753
