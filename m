Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1771521E091
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758817794; cv=none; b=S6qEJsB5Ljy9Am0uIcCoATFSgIAsQYv/rdlaYJ9z4phjGBKUj45vbrYXaPVeJ/Wyl0fmk0WOWmgIqorwys7b0KsxlGF7fkMdK3KwuifcJ1eg25Y1Hsv/mzAAQHMqInucsynzcLXlezaXO3kIaM2bmwMeQEL8RPGWRKvi4sNi3k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758817794; c=relaxed/simple;
	bh=ArShqcmejkyhIT2BAqfa2bL3OZVytu5oCSDUYwGM834=;
	h=To:Subject:From:Message-Id:Date; b=NlaVL1yFAQgMftb9250f5WNHMsyDRahBmCXk7VFX+vEPeFFAjMgAkDI+iEHXJct6N5OYUE+wCf2vb19aXv6BpO91LeuOppH18pdZJ0rfxwSMG5vpBoyrVDYfC0byqIDTm/AUlCIYMI3MN7+vQ4/au0aJNQ0wzDoRdl2DBecKJsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyFPs/10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyFPs/10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E8DC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758817793;
	bh=ArShqcmejkyhIT2BAqfa2bL3OZVytu5oCSDUYwGM834=;
	h=To:Subject:From:Date:From;
	b=cyFPs/10MLWhhYVmne8+Y8lSgB13hQ5N0hwKZuH+qXpxrPzHcCnq4ipNOLaUvlepB
	 dn4CqY85mSCXbkJuvpq0dA3Jt5VwxlaGmL+PQrsGAZU7BHOebNUqhzUN4ScOav8+bL
	 rMQpFhJRoCLNqPqcTvAu4rvXNN5+4UfJa02e2scrbGwsWQaa0MHZHRAsnVxOd0qoao
	 XGoi1mrr1fe1ZnDpsXPIkVTjb90Jesz8vngd+pUegMR5/KQv2PqsM2v2AmWp6pI3Ve
	 mVfUOk0IDWbNWFKR59vrjekfPxdVhcbAOsQNOi9fe84vvTrqEHGGYMnaUZU7ol8mL0
	 Wz8xC0RDcGmsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A6CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881779358.31382.6747184479229719459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb40c031564470b698d18003ce2876c38821634ae29c4dd349daef390ad25cf
Date: Thu, 25 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758817793
