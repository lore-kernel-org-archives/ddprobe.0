Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCE530C17D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780494274; cv=none; b=FTC/l3EWDuMncHkjffIjhNRo1r8LAuu6O1gXXOrmgg/ja7oX3W5APmcnPHMbXz7lQLi3CMQ0PFf9w3KNQV0meyROiWS5MdikvuOWS+gRxD7CEPWrMFVjKOOktJy13v+CvdSeDOXhP1MjwlCfMSfnDCD/5M8AxxVepJusdoHwvxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780494274; c=relaxed/simple;
	bh=pHkqlDESexCE+dLslb8rjdlAkEOxZi4Qk51jIv8bOgM=;
	h=To:Subject:From:Message-Id:Date; b=Gulxx1Gz07uGsS9jXqgy/l/sp1O43PPYeZGzOAsNW5kmYDqF4ekqGksnf9+UX5MyWgEIGbVSzLzg7BWrcEHtGHNXPAktcldzskFEdrXFlmPWXkWR1X7rKKzp+HbDAHfC+WD+HCvskOro/0bLkbsJ75YesJ5x6EmJ8eLtimZWeO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcVUbrvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcVUbrvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE753C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780494273;
	bh=pHkqlDESexCE+dLslb8rjdlAkEOxZi4Qk51jIv8bOgM=;
	h=To:Subject:From:Date:From;
	b=JcVUbrvC9tsqC1UDrcjghQ0Oi1RimJVIp/wFSe3z5D8ZmwDkWQv1FkTEaye13uWc6
	 wBcWM/HsmQq0rsVFhKsdVNf+oVgcKFlNeLXZr4LtMCkG2vDqByie99r+qmn6FLzOsW
	 kJX8dRllxYaEipxDOhws1RbTZ6l3c+PpkxkeN0kyMr6BALaQf0Rvi5rvqojM30Jbbd
	 Us++EbXFbAlVRr18ZiPRca2yCtVhjAJJVuKotw4JcE7U8agAncNKiwKwUAKEvAsD1O
	 m5HrQgQFoUXF+pZHXA2o1DPa4tIlGs+sopbLgoLEevwuJNpXfuEMTF/nw/E7qc4hDr
	 icLcEX54STfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A803CCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049427367.3224.1093827221977077617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab1e381e1a0e03cfeb0e3f6c6a96df07a6da0dd760dfbf9ccf6e9b744540abd
Date: Wed, 03 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780494273
