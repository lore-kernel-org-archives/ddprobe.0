Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFB13FCC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769376834; cv=none; b=mndDL34I6gZKszaAIsDuOj/hnBHPLlipOPaYa1q030KbylkRJz3V2f1dLonl27+C11lyTLWbjoqMIQUeVmVhiS7raBCt1QGSE7lR5hA/86XJNPgkXzDAfDrCV1PVSgiHE31QxyRA5JSU05wQT6MNVlXvbuDGVR9oZ+APx8vk4lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769376834; c=relaxed/simple;
	bh=hSAdykJjHSxEEbmi2DWbVWpisrLFUvgo2IHWEA9ew+Y=;
	h=To:Subject:From:Message-Id:Date; b=qe0wRQ8WwwYoYK7zshlQe+ifeRgeJVdNPcVDpMopzHbU649gV/X4nr9NfHDPWLZtyPvYF0wl2fkP9TZ3FQXyGQQHs5S2izCqCWcMOHLKlIPq+hrrvbf7fiI2cg6SrSU0HohmS+x4mmuaeClJqlmdNcbUnplGphhVwyPHH5L6yhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLGy5svL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLGy5svL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A374AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769376833;
	bh=hSAdykJjHSxEEbmi2DWbVWpisrLFUvgo2IHWEA9ew+Y=;
	h=To:Subject:From:Date:From;
	b=uLGy5svL+9Txg5LyLTmt0rMSMysoquLP9BGSUEWMOV0pYd2gegxSRo7qudV7VyxJY
	 pgEYTDntOulGu2hij4E+nEvRlYaALoZwKbC/Pvr9+moj/6jtMx88B63cCYVElVdW9T
	 e4rny8peO+rNoqiWgSXnRsTB87MUoNeqJKcbadxTB4RJzL5SYxIygp6khAAthbAwFZ
	 Kuwov9qEqM3mXdAqUYXPsSBy98H5ROBDKdEvWelbGASYXFRroepESjaemENUsPMg3q
	 uHfgrSqsLt9KDuFO58vtvQcH0q/7AuPZgE4s6nih7bTW0A6AhLRnCCHyr3ScWyvX3i
	 nwuWN74ZYCx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A31D72371
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937683358.1132.7760316380746348678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb302feacca39748963ebb4f93b68e63a5f7fd0e9ce87e10e6444528b02e8e6d
Date: Sun, 25 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769376833
