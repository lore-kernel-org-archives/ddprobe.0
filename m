Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD9E1A38DB
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711180697; cv=none; b=EHdcqoqQc2U4InEPV0ihIevL8Gy2eUUvTCrSbfbqdNblcrv+6ibDulJJ5MMNqGIFlyo/++LpHFEG8W2EWuH0VrVklwQbQ8Nj9zbZ4SSh/nX18s6ehH5gR0Cfba3HFCRDZmg3NsUOWnY04lyLi+ioDO9K+vLYD2u62NoiI/WbQfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711180697; c=relaxed/simple;
	bh=TpvIwg7jVsoGYEQLhXyZecWHtlgEsBNRVDXQhnqQUmc=;
	h=To:Subject:From:Message-Id:Date; b=pU7ORfg45kB5DtG0X2rFKMPYwenYsdHFk9IRzF6PfMjv8XLEJMQLA6IKYJOUM9jTvrS/DxSmL5WJO8PiZIx1rfOgPUEC4okUGf22pgFWMZHqnmrw7ePazQuQkW3d+CMA+1wPenotlEQfHob3m7Igt2uidialEyE8hhcfXYpE6rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUtQcnSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUtQcnSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88400C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711180696;
	bh=TpvIwg7jVsoGYEQLhXyZecWHtlgEsBNRVDXQhnqQUmc=;
	h=To:Subject:From:Date:From;
	b=UUtQcnSgAIZGr0oU5Ng2R9oSgfhSTKj2K/jojlEPnDbkXnX83ON6ZWrJShHL0+wy+
	 HeR8vZfbdRtfU8p9Awvjffd2FMnw/57DQ276DR03obWMIB0VFRj1OARU8rSPSS8ur2
	 /aCiCe5KbjAxGX0958RMR45Vf2lrAwXyEWapl1Q0ReeFv0JmWB6zK09UFQbK8nrMOy
	 pSPr4IItF+5rqBawk7TJG7ZtG/bSs9UTxWlcIbgx0DEeOC/a6T6C7GD8HnSKVThhxg
	 I5qaIs56Sxdk2iVV/C5LG04KrVqTg/E2iZ0NvTo0fhd3mk6ddh60FnNt68UYbgxa1p
	 8HjNJtJgl6/1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E5C9C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171118069641.8135.2309522869069103857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30f65e47b5a4729e189728d6abf196887ca6a0b63d3e29662c711ece44ecb32
Date: Sat, 23 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711180696
