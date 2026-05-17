Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ACE35B650
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779018034; cv=none; b=qQdR2cc9AKK72AE5mnKRRDLTGDPG/ChKgW0MdLoJWyrEwGIHN5Pr/ZMl0iv88AYlay3u6UUWP/sScqqCy74Wy1Xb6NL3INZiqnGMTUapF2I0qhAB1at6G+LIx2400wlg9YLWLkN9LBuDnOUonjcdA/gZgN2BKpXo94X3PnMcJa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779018034; c=relaxed/simple;
	bh=ZnPl3Srm1XE/96pMf09NzkggL6FaI2q8jQPAzrm/6gQ=;
	h=To:Subject:From:Message-Id:Date; b=PsToX8JLsDUgLvXXyu2KuTLzdHtc+/c+W+7sZ/B8wbw4O/iDoufbzarzIktxCseTAsPxNRZDTVWzazuhkjBGQIyKjZRcCJ7tsFjSTvumrKYN1q751h+zJgf6qj3C+CcQmmnRyMado6w2braD4dRiev972U5/PeahixMgg0BN2m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZPuONis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZPuONis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D45C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779018033;
	bh=ZnPl3Srm1XE/96pMf09NzkggL6FaI2q8jQPAzrm/6gQ=;
	h=To:Subject:From:Date:From;
	b=DZPuONisyzUv/+u+RVXXrHDhUehxxKXNmalA+b/HEK64asf4ooHa4hD/HxnyqDmWg
	 vw3uE4/8cHHCDrz2kaYaeoZ2X4eJdfkrulBItHCu0lzrJbw5/qryrtFpg767J4tR1x
	 72KFxwN7byE8apC04sHcL6NVhgL2DBx+d1YB3dNQrWi4xuH2Ppr5JuZNtDrcJFSOgE
	 C+KRxxDregfJJQ+A3u+guPyi6kjX/rWut7k9Kp+fEOXsXli8I2ohTakHva3IdyFLD/
	 q2YiW2datWaiIr+JxDFNRmqZwjE/EIbkdUQNFC+hNGlZ6JELXbUo+ydth0GN/q0Sck
	 hcmnYg3YOXvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CADCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901803370.30855.6992038871138337884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f32b6c301747e656d626ab832d1fc3cc3ee2058026d6158e791c15d48362f2
Date: Sun, 17 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779018033
