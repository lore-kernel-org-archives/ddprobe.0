Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EA71F5847
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767128034; cv=none; b=hg4GPySng7VmNPZRBCXWIepSHbYIiiY2zLY6GWq+lx8yIYBcUuFEFdl3eC4jTUYWGjR4NJQ7cdNeav+9HXD8+ARHfkqw2rAJqpqTn2fJ/kWiAjI8Ugr7kCZIh8kCYtwc0MdC4UYmeRq8pHqxy8MW4VapG+fOrt6GnWe/OLLhKw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767128034; c=relaxed/simple;
	bh=zwTdXwqOOPtGEsItxMCxNxi5cnVFOcfwB8f8pyWZzhc=;
	h=To:Subject:From:Message-Id:Date; b=dJtVYVZF3ahiGBwyGVq7AQZZP2LH18Yjs5Dr7UsnDzsCBAwc1X1adKLTWVzTcqqrrHx6uYmMNTmZMIzhilOxtb7FmgrtvMoqnP5aBuYYbZfrbG0UjagYEZpSBZjq2lu/FPZVju65VuoFeyqhoPDOMiFyDafxUMb8j8fbsshnqY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcZMSOny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcZMSOny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8411C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767128033;
	bh=zwTdXwqOOPtGEsItxMCxNxi5cnVFOcfwB8f8pyWZzhc=;
	h=To:Subject:From:Date:From;
	b=tcZMSOnyH/M5xkYJuRxmTS2SpOlQ5uxS3CmqLIGsN5pNBVeSnv2NlMdKT9A249Hm9
	 tno7LQeCwznXYzGQGTQC/MAMO+30y/FuLk8xHMeOti34i345AlP2wZC8KONPcgGGDP
	 59vsv4z9pZ40nH7leNPdiMVr90IsGerAEYeffD0wV7DS85ve0tG4lZt0bxWUlbgQIY
	 vucCw5J2uddmbv8IHO7O4aEP4MmuBFeEmoM5exSnuJg4yZOD/rUB7gfWlODRnwrOR6
	 iv+hO2vL2JAmqX0TrIGL5PZWeVR/LXbggEqdLMI520ew3jUjEtuO6TL6p1RmvmymyH
	 m3rXMHMYOMgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBAE95A98
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712803358.30445.7915299354775790871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe24cf1b65a2fdb7959b7b0e0936ee90dddfdea6986be0b6031e302ace5bfde
Date: Tue, 30 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767128033
