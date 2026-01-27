Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103F33164C3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769534034; cv=none; b=suc1fQgwfMTV9OPaiI39fgNM5rYCp7JibMvTagPznkW9k4OU3Fy1oqkZaOVQZME6HMgSM6XRHp1xsOH04424JxAjFwTeq+TOWdr/4SjWKdh2lbsZVDmQkhhhpF4gI5IC9/MRMwOpUSdXW8GeIJAMncL+0uBlUEps13lnDPPCrdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769534034; c=relaxed/simple;
	bh=kUns7zAFeBWoYf0h+v4RS3YfCWFjVHQ/DW6W6D7I7sU=;
	h=To:Subject:From:Message-Id:Date; b=ZvBgIA1YN8IUBcUEK+JAP33CS1aqUyesqs0OZzByn4/JDJ9XGAQNUdFHb8Gk5BNbvM8xGaosgbKvwmB9ev70LFQBfqqaJKeitaewc4NoOtnn0O1S8hdKnf5ujGNiX8P2jHmkUCFdrzHPxY/ys5UUaZi6OLHBAx+um8xgABxfCfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjAz3Q1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjAz3Q1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEB0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769534033;
	bh=kUns7zAFeBWoYf0h+v4RS3YfCWFjVHQ/DW6W6D7I7sU=;
	h=To:Subject:From:Date:From;
	b=AjAz3Q1OXpp9WOhZJ+Yaas/TJ2Nr5GYy+4uclub8rwQNtIIExlGdmFtwL6WuTm/vI
	 4lApGC6FBwnABn77tkdsseitDxWAyGtO+D0ZIohkAGazI5kWMarY+6hyBzjB0Me8RB
	 BJHoIal2Gj/MEU+LVczihe6bKcZwAK52/mfaDtnSgxi7r86iNtM7hrB7Va+AAM0L/V
	 X6sSmVTqImu7Yqr3Sf4VX4/mrYWASpGPe75IgoxE8iW7rJrzxXEdo8XG3liE4W20bx
	 ABXX/DeDmKta9tqTTFMjs1QKEiaDsQdZC9WsNoY9a1qsZYZvepqYs6tgh1lX8k4LDV
	 nvES3zee0HIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064AD2FEC2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953403358.22932.9598235120530912849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876fc30a01f94ffa1835cfa82a33826ea57190cf580a719166bcf7102e38760f
Date: Tue, 27 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769534033
