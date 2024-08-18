Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171223AD
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723956954; cv=none; b=HmJtJOkqgAE19LSETYKD/5rcmtJ+V3/xIT/j/LnXwF9xvrCCcomlMI47GQuzDLCsOhuj6HaqQNMxk8eT7ojRD8ECdd62gStJ15TbQW58Xf1Se8LdPPCz7Xh+BsYPjoctOkuTPONvMaKAh2g63C3ahVsWda363XQQZCw+s6FMplQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723956954; c=relaxed/simple;
	bh=v3ZoPCcbKVC9gslvJAcXiURUeSzYgJtcRSTusJgDBSk=;
	h=To:Subject:From:Message-Id:Date; b=MlUWJL0OwsPJp0/mSlIsePdr/oTPNdI6M0PQJ1IPwZZrdM8DHvepSQWlUs7r5jXuRv5cAVS1GB2nG+BBr/DaF+x7tpOVasHKP8Xbf8kqg8ka0TyO3SJ4nkOxfS7G2Qt8yaeVZhKXD4zdoNMOU5QoHAcrTqZDBv5YNj8S/uxJYOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHl5yc7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHl5yc7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC7EC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723956953;
	bh=v3ZoPCcbKVC9gslvJAcXiURUeSzYgJtcRSTusJgDBSk=;
	h=To:Subject:From:Date:From;
	b=uHl5yc7Otzr86RA1CSCybtEUtvzReyaOoLftTwOPImWl5H011zoLID9I4eHlwXIHg
	 vq6e9XmY3wvRFOXhg1cTtt5lvAEmOWjpUWJfZC8woMKq5+zUSh0nQ9i4IawgNCq9fN
	 Gp79ZYdBaz2PyoMKvYl1Mq0D01ZIfcPhwqfDPvF3mYb+KVd604dVcgdVR80l7ifW2C
	 +Y+SBbPGcDmB1UTMMr8nHi9CZQ8vH9+Epaf76bAW2VFZV+pPV9X1X5hsUt1tUGH337
	 D2A6dayo5l3ueMZa2wQtUVYxV76qerjFBf4lRaYGC4eZtR0Jl8cn7xKtodIre67E8v
	 GSWFWLCpZHotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E5C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172395695364.11938.11437621936046346850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda30c0e20c96f248855ba67269ae576a409af5ed90a86025fda581b18ab4311
Date: Sun, 18 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723956953
