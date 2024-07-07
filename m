Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728A06AB6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720324583; cv=none; b=D8tbts3nCA5md+VHjsUEANkRFYwpLbfO/4lEByVkoAW6afCVPmQAy2KaYEnebIkO3eZAGHg0ZYF0TOHyjtOTPPdM3Ulbc5N3UsbqEbPNnEnPIdRwZvn5K/OzJXxZgJCqGV6JFlHki/xAzNUr1ZQ50jbKRlwPXpp3boHrHPPGKOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720324583; c=relaxed/simple;
	bh=dPtHEK1g+x3CmBKTqhRZOGycShEUUEabIcMfJHoLbuY=;
	h=To:Subject:From:Message-Id:Date; b=YZ+r+fAOzEpNqS0s6pZXo4ouqm6SNbdyro7polyBEzsbvxJYWiRIW5x+iQC0ypVuBEnsqBSf/566u6je0y6SRUjBTHU+DJ04M4v/OOP2t1BvWSTqOHn+QUfIjJJpI1aEQfHH5sv9//eOCs/fDr52ty2AdHT+KmlQ3iQEzUwmTEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9vKpXVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9vKpXVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB18C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720324583;
	bh=dPtHEK1g+x3CmBKTqhRZOGycShEUUEabIcMfJHoLbuY=;
	h=To:Subject:From:Date:From;
	b=o9vKpXVnxhtzfqSnmoPXtIvDDD/9xKbNN5fLgHSVLFSsJ1ePIFCRTLy14Bt+AROHI
	 B4qrkLujzL+AGj7HvYC0zcgAEAioq7OCChOYEYeprPRi0+vuqUuRBBKHgCd3aXnqa9
	 i48+D269X5w0yEUk7imMkSwOPXnepeZHdpAHBQ34m2fQ1Dr7Oik4GYNGG2ebFId+6p
	 wm99jIhGtTR6mLsJSjuC0JQmDfX+zNESd7DVjrUWdmweCscEOlWxquUKZ6qK3YYjxu
	 YLQ0vSQYX/azDrJzNWeFvEdIEnzQEJcZspTfnJ+3i35+P6b1XBtmSWxk/WOigTp9i5
	 vbBEoBipaWiig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C887BC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032458279.28003.11954395913949502652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f4005b08a615cd649d794337300742d21fe0adeb8b46c1eb8d5bbc6a1d843f
Date: Sun, 07 Jul 2024 03:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720324582
