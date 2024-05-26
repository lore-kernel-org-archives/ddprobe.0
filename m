Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69807DDCB
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716732863; cv=none; b=Mdsc4o5vKindAkyP1WU9qFB5moetnR45sZ+LoEdKYid3PBEOsf+gANlJqTjQ774R/7VkSyRy//AblkM7tZ4W6Yu4TgVZPZffOD5ZyXvqcRAOS61DJLZFHLmKR53/rAsaVG6BO0OdvuEBTQMqE/l/hTIFsvEZPdyM+tQluXpms6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716732863; c=relaxed/simple;
	bh=QE+MT2IOTzWjCkpezYT71J7nxZtamYcOeyVfVf5/dOE=;
	h=To:Subject:From:Message-Id:Date; b=o2iFMZdiy7LaUM/F7IADOhqual9ij5jpISgZQYsE5PpaLHU4xKSBWGr0oMb15SxeAuzOsT62aOQNTOmX1mOvYCAzYuMfYAXsZygKz/4AeLP+XqeWceTXlYJoYii8DVTsmN/dxeS+Ic6K6k5bCtLq0joR4l6cKl4QNDPpKlhzmGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmokjbV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmokjbV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80DCC32782
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716732862;
	bh=QE+MT2IOTzWjCkpezYT71J7nxZtamYcOeyVfVf5/dOE=;
	h=To:Subject:From:Date:From;
	b=PmokjbV+6U6euQOy7VqzzEE4Kcl68kdU8FAMEynpap/YIGN21fVOgq/RCyVGHBIyL
	 RCanBR9Fx/juEwVjzq9565JGDYg5mg6JlOqLC0vP5mGC2Z+5Z+WIEk/5FPW2sbUce8
	 1KzVcwbdN584OalHoCoSXgswMCzQjYyuzYR3BeTPGLJEjy2RpQJq8AlJDQcKGjELUu
	 bup9c5lLlbTO0a8kl08TLYpHmxdjS6EyL5jqtH6tOCIIo74+zKjapof1Eu41TE1/hk
	 1UvuRpGSPiu9bjN3Voyjr6o9vK27URWL8BlSJ/XNJYMB9kbQ34TLeeVNo9RXwq4gX4
	 Dnnpy38Bt4FiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1636C25B7A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673286276.22417.14388756314152272375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c396a897b1107834e755952ab9d0dff8e009e962403e9deae4b1a13786ec0614
Date: Sun, 26 May 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716732862
