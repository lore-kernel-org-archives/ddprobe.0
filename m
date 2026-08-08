Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F032DB7B9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786211434; cv=none; b=IIh1C2gP+AkVW/xlQ2LJkvLz+Ca1wFOhxnt8UBOHHPz3A8WnB/pE1tKb7oYdW6RhAboHLozDFVFvayNcK3jo1gGVHHPi/KsxonaaTuUNFt/V6/N4KJhg2rf3/fM11oiz6zN7wK4lnkt5sK+R+TLmsOp372VVBl5g1mdkJzr5SeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786211434; c=relaxed/simple;
	bh=xb+9umweqCWkjH2giAgedhV2SfdTPYQRWbkB0PZkDG0=;
	h=To:Subject:From:Message-Id:Date; b=BvP565kruUGKxP+9TqZ+wqdeZLU+LXekXuxLXjyO7yqOfAJY0pit8DYoffiOdXP9QNabksPz0RjTy79iLEq5nV982zAuH6IxrMBw0eocRGgadVegRSLfLNDMLmWDdo1rvaXuRwGGdXbQoB1n+cxIouCYtWR/1jcBUUdregxfYLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEIdzW3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEIdzW3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF771C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786211433;
	bh=xb+9umweqCWkjH2giAgedhV2SfdTPYQRWbkB0PZkDG0=;
	h=To:Subject:From:Date:From;
	b=VEIdzW3QGh5SmF2LyYFf8auXIH8hgryjlLSxfbOeUDTz3LVwIHHzHcVSKHS/dJKd7
	 kdDakZyRDJMmQvMjNtZWV3t0c8hzoiJISVB9nLCPNOHbekw13QMf1AZtf+/dwV8s3g
	 n58d4Y4G6ohhrVJXLX2ctmGXQAO1ok/TE5lvQ0SDdh8qmwOZlfIop51V0HsGT1aFOU
	 5ZK5NjYf6SowrqQWy0oc7PAJQaF65K2mwcASfjhpI/Jsh6QMDf/m73puPEZ/a009ZO
	 I7JMu89DEhdl4te7lYqLtBydr32mSICASTYiv1DRQlfExRnWYuUfV4RBOWdMeQtOrk
	 Ej4Ow2v21KGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCDFC5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621143369.1913.11390158028634749641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2441d0de78572ab427b168475ed6ed996332854b220f2892a9fb859274e74ebe
Date: Sat, 08 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786211433
