Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2F720C461
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759654794; cv=none; b=TnL3TBIvA0mDf/4cKIjblLydTiilqM1TmrmzuGYOseXPznFE1H7YtOxccbYArEE0NCePUzQ3L0MD8lDq0iduCiX3A+DiBBSs3DJecqMWBExUnu6wJ8eiuJEWyGtDwl/IkYWySkM75XXqDDprEghbgmVFaktUaMB8FIkVdx4T3X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759654794; c=relaxed/simple;
	bh=3Z0qfFhuAIPXpXg/KyyQX9Njnfag7voOTIYfXt/Nqjw=;
	h=To:Subject:From:Message-Id:Date; b=ayy2oui5DLHRLkDGWcDzls+dwx8KF3o+1bwFSsEH+e+xiCpfVd4tfDoTqPF+3LFEPMcypSDD2XCcHaaMDrfzad7W5UzYGYRS4ZI0KwtPfT+j+i4fUAmzeZ8f1banjLJclmAdEyj/H0QoDoZ8w5dxnjTWLrn/gKkyCecqDzUR08Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7QyMWK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7QyMWK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25AAC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759654793;
	bh=3Z0qfFhuAIPXpXg/KyyQX9Njnfag7voOTIYfXt/Nqjw=;
	h=To:Subject:From:Date:From;
	b=S7QyMWK7H0bFC0jNPXTSgRBbId8G3i6ecIRCub/w4mNn0pnrI7VdQS/on3nabevqF
	 s2GUccDJ8oEvQ0GBYQmqkGR9xEnF3xYEGbAYnwih/HMagJbMYeJ1j+EZxVb5Iqs4QE
	 8QSL7dj8s4L2CMMPSmB/EfStmLFdmOYy4mvO+pGcw1KDtI/b1PD0f1nycJhPMoZoVm
	 4iagi2tkHklo+SP2hC3XQTD/y3Q5dyms08oY6CNL73dRyaR1R0yyKxfjq/hL5CCVGf
	 KW+yhq5id7mUEMotLxU4DmPGHZcT8p+SRFT43VMIZlBb+D1EO0PIlIq3t3scQthcJS
	 sa8jocArPkexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90124CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965479358.29198.2525761692186750346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe038528db486f1f614f27891d33f8067af7db605fa33ab7ff2ce51d2432869e
Date: Sun, 05 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759654793
