Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123172BDC23
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755886194; cv=none; b=pxKoh6dmYr9VmD/lcVs8XfSiwGvGyMpNWTC0Hck3y/U11chASi+O7ak5PXdKbdyZ3/WwHtBMvjYRFInJPEwFVfgFlYPu2Tg/V29j72OvALYUwc2/5xAFrhK4u9CYf6iRnm3OBN+HCfgjc9Nx80cji5f3ikquK/rpdZv3tdvITUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755886194; c=relaxed/simple;
	bh=a45YGhtyRZGTGaxl5UEBfrip7kLBgj0j1zyaW93zsLw=;
	h=To:Subject:From:Message-Id:Date; b=NVOheRqJsPrmh2j9RsmV0Q8Feod7EVbDCZWPphxT41dz2PYzfhbe2puG7f6gFfkAhlMDUdFD8arA//Ruf4fkIqYz3pNJLZgRl5IpZnKOixugGXXcX3vGyv+3hS75N6c5tzHBbUYbsFI5e8MG1QbA3gchHt8OiABJ+Y3zdePDqUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzsGE2Uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzsGE2Uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC1AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755886193;
	bh=a45YGhtyRZGTGaxl5UEBfrip7kLBgj0j1zyaW93zsLw=;
	h=To:Subject:From:Date:From;
	b=IzsGE2UzxpIIIY0wBbbBoFMCtKHSK8BemkVQytqGb0e8tN4nHok8vUNBJmu5qU929
	 Kb3PLBuR5YBNHthJj3qW/c5nhW8YaucvpcVpdxUbrSvHX/puN6XhGMmfZWH/U75zql
	 /ZcaYpKdzc2mNbrbfo4C6bJ30TNrrRw13Yjsm5j8ABqKYibVukAqqcFQo5+Bl2VSqz
	 gg24UEplAWYhdTTWvHliqpyH5wQlyipoR8Ca0HLYzNoEnMTrAyge1/mFRyqYTKGWlF
	 ZBhoZSxoFHJhZXEc5FItVmK1F5rbIecK74sr8J9lARYGVLktFUnJWMK6ALxMs3YvPQ
	 QQpUuiu//4iiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8DCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588619357.23820.7387907127953533206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fce2b9799eb0d2505b0be2eac17d81aa74262b65f60386b71fc1fffcc152d74
Date: Fri, 22 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755886193
