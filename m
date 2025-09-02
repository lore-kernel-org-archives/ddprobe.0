Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E53B220F5E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756812594; cv=none; b=b9xyGMXo3ioX0cXt7TCFJic9pXW3cuZBblvRQk6hm+J8poDRke+HOTddqKZyaGuYZJdMO1VDSleJ68TYvkfMCK+gw0vMm23QxGuYYWqCDseHFxLkHprcHHi8qrJ9VX0/ENVhHpmc+gCmnVQ/I7LRVeZpqaJMstifgU9J7CzQohA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756812594; c=relaxed/simple;
	bh=aCFTk7uTQ1CjOw+1L8ucvaXy0ojtgMAbr7Rv1Tkh/jg=;
	h=To:Subject:From:Message-Id:Date; b=qd1fZW9jUQa+D/3ZLJtIqSPUsFl4SQuQ0lO051ZcMQ7fYs8z0MYb2srT7CLu5u6th9zDynTuUrPj45FDwfYtfJsLugGJbdiDbuABQUfWmWzIEaD5nrelPkmtUlsCIde4QNrJI7ebiV2zlS4ocl1DgTOxI+M9jApnyPn9Ti9qYVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHayjtUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHayjtUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F1C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756812593;
	bh=aCFTk7uTQ1CjOw+1L8ucvaXy0ojtgMAbr7Rv1Tkh/jg=;
	h=To:Subject:From:Date:From;
	b=EHayjtUjsTt5pviZ9W0sTvAZjYgSPV4gE/ZdUywI9wRnpi22AZRvA4V8+kweEPZT3
	 R9I5Ej5NsDvHhG9wIXGWVdBxgudfVfDn9xGBWTWy6xd9QZYr8asG5DWbZCil2KQJg9
	 PzR/U/4OTBee0Kw0IJrX/sUSVDoekX6K1hpxnIkKY8UNUX66MITO2ZPpMMHJasGNDe
	 60ma/93DZ2eS/tqD9P0kRPK1ZJwe3eKftCty5h3a48L+ZbHuLKJzSEt6vCMmC55/hm
	 +ey7XiawkpI4giHg5sj/WwwDAbs6oPh64TXd1hru1tbRmfC10VmvZOsVVSDdjcPsYn
	 9dLDnat0gfKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F302CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681259357.14125.7882465716611859876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcb8f3705124a8e336980135f1bf38e40008e93d8a8623d5da92e0dc68be782
Date: Tue, 02 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756812593
