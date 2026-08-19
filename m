Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A691361DAB
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787179834; cv=none; b=HKasdweAEES/BIV3klvPm+En0+bnirhjoz2aY1mBRVy2aLl3hZPs9ZuZbqEPO/86a3Zid8YoZepir+NWwk0kVRocP5ZGRlA3N9xLQcRvmsp1SfNJbyamvuR2Xxj6AeMTp/q1IOXP7fP2UUa/W8nTEDKq6cmkOa9wed/NozYvX7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787179834; c=relaxed/simple;
	bh=2VnO/oF+IWqoavuCdhaiVnce3dua346Zrg7BEgHSPc4=;
	h=To:Subject:From:Message-Id:Date; b=Ddn9GOM2gtb7T0nAuEejQIJDiZLXIIDHgq66aG+FLvGGB++F7KGDt9BssLH1tPU+uCavwQi0GLA+TcYLXx3tnIFEV4J9pDqlljxOjxbNcNzgTvJ6SVi4WfDnNSSG5i2OokqlPRRN9q5OrrDRV/u1zpq/LyAzY6fIMFo0bEJo5qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6tjqDjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6tjqDjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7C8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787179833;
	bh=2VnO/oF+IWqoavuCdhaiVnce3dua346Zrg7BEgHSPc4=;
	h=To:Subject:From:Date:From;
	b=J6tjqDjytPdf3VyiYsDJUumdleGhKf1Xvjq7jzw4SSbDmAZm7mhX+93S6jj2HPDC/
	 4is2NDLa9ZNygDDfaWFDX1p6+4ZG2PiHnqvf+AvAKwLCmCKmoDV4ouH9FGH/kApmDd
	 15i/2W3vqtDLhHZx/TPGptWVphPOnCrn4jeJ4nYZGXaEH0hn/broB0jr75qiZJj3c5
	 jQSG07O5RWdbjgr4YqJDvEt3C7okaf9ExDwYOVsxrmkMLREV0FBpLcAy2f/+LsAVlq
	 Mct5OGmToz7EymXGdE1c2QT4mmoeh8vy7muGEkokypNsct3EYmnwTL4ghlF/gGeS8v
	 oJ+M2viQL3VNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD07C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717983369.9910.3889705838927274740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21186fdce55681eb66d825923945030ba4a1f541d0286871d27540c50574745
Date: Wed, 19 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787179833
