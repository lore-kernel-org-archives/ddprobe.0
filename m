Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345EB1854
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721526954; cv=none; b=EnVKZayJa4MpiSd6dYP3BvCya4WekDnSi8Ayemq6TCI4DwT+L+Mdp6z5jQZPwgDt/fLBHnU19YkAso/xXUh2/VmHO0sHZqPhhWFIchKEUQ6wXHnazmgWGD96SzPV9HS4SsB7kM3g7GiDm7w4RnpblACTpO3ICGDwzr0Sp0QkhGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721526954; c=relaxed/simple;
	bh=0erOsz/zd316L/1M0aApp+xBvjH6sC9471E0xCUiods=;
	h=To:Subject:From:Message-Id:Date; b=b0qPoEk8UIVmK2+2UjFA2d1ukR01PCDkew0GzwFxlvD9xUTlFqqYJj1kt/smS0nPtS9QHKdnbynXWGoTQ2CYCIoO2ZEJ3t/cu94PkVALUQie9NlR529GKIadeAL7H3ZsF9oyrvyuKM3Bt1xtQVPPEfXULUqYEln6Nne1VAhjNP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOphXlBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOphXlBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58B5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721526953;
	bh=0erOsz/zd316L/1M0aApp+xBvjH6sC9471E0xCUiods=;
	h=To:Subject:From:Date:From;
	b=GOphXlBh1/Cgah+btvKtzS6t1H3RA5xExGPsmpMrhFGNtxGDEXR/Nmg17xQgRjs5O
	 ZXgFjhGSdLq3YfV1FYLV2uqk/yO4C2Cvm//ZC+4MuhH+SmHNB9gte9XyJxHTqdbXio
	 QZtHI7hQiskcrjx1ZjuIYPu1hLKk+mDwuGZER9Lf4rZeIeUYaAHV4XEBQRGpojt8QI
	 fX4d5iu86QHK6YqyNHZO+n/9y21VKpg2gvvUKeBcQioWZTVW+gYJnd89SmJSFCAXIy
	 Vy/zHq+5mZt6erGklZCyFQHkTCkM0Bgkq26lXdlJewPoqd3FujaHMMaUCGWvHj0NaF
	 mfJj+9rbrthWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB920C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152695365.10770.2656604128714326944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fcdf8ca3dd4aea3c2a548750bac969d7084ab70993faf82fbcc051cc643ad2
Date: Sun, 21 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721526953
