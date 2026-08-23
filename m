Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B34937F8BA
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787511634; cv=none; b=D66ONcR5Uo5D+AWwsjngHr18t+TbReC3Er9hg1NDCMiFUo6vLq/CAhAj/BtVTLa8VOaZogcaIdyZ5v7L/1agr5YKPwyd+Ccn9xNupSLZZYOhpDRROjX0vB7W1We9LI3Sn78kvHsBv2pxmt3ehL2NroZu2B+9I4cHab+VAQDGXzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787511634; c=relaxed/simple;
	bh=dvINZtm3Mb8R+OQPXLZvSyp7XKlklNNeqsb0y1VHk04=;
	h=To:Subject:From:Message-Id:Date; b=NoFkbeTHKO0/M3OpQcDdxI5JTqt/mFflFBrbdLVzAnHv5qD006U8nCHBQVNPKkTAmH5WZxiXvNI9LdyN/1XuoEsz/JN9ICAz16NRPAQz1naXJnWNarOdplJ2cxBuiirvcvixXEZv/ZQq4vtq0Ddq14Vm1QTRz7oXrgiPNccdZcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6nrxC+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6nrxC+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF920C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787511633;
	bh=dvINZtm3Mb8R+OQPXLZvSyp7XKlklNNeqsb0y1VHk04=;
	h=To:Subject:From:Date:From;
	b=Z6nrxC+oCN5S6Z0J/wjEweKu6q+ZvoJdjeEonrl8/FkPCpDS46F58UxZ87E+TTN1b
	 M9/y3iEX46z0V/W4U0KAc5YD4/JcUbyP2IXXB62SxdFlL5EKUu5iJtT5B8XUfGnx3E
	 LE8jhjzUtefqBq3bB/yasF2Grg/acnJLpReJDV6aE9ktdCO6AiO5UHDbmyRMmQk8w9
	 nMs7SQ/MKBExQO3IVz9gz/svZuUTDiyV+H6KImDCthqsol4wuKkuzpw2TbZrDICCDw
	 GI9215AWdvC80rpWT9tsIYpQ0A9WULzf0rlpdjtVu3UV+HRuSxQ1ldbr52MPD/5tbm
	 VQhVIolTAOYeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB153C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751163369.10642.638238048588983006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707ecb0450323425fdafc5851c98e8e19f903e37ddc3e69801b24249657c3a0c
Date: Sun, 23 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787511633
