Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E43E2628D
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789632034; cv=none; b=LdAJcunFYauqMhRbTivlgSBjJlly3/l1IwOjhvYxkOns9sKNh5kvwKSEjg2ZaqbRhrDxIRvBOi4aSECQWR4fVLezmKoSEo5XvKSonOwkvkIdZPkV7plL1C12AuwgCLDHoWXN8vN/H4BOvxHbvRGiw6wJbna6Ro/UtyguFxrZj/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789632034; c=relaxed/simple;
	bh=K0n3h9P6Ew0nV2v9F7rxMOzxj/paJK+QMZS4X96yJ+I=;
	h=To:Subject:From:Message-Id:Date; b=X+PDSmwxPAlgygwQcxu7MzXCWrHIEd3T4dT3DnhSlCWO7I3yzMAbad/pCV66teWgxHaJ9ETgEm/PTvEirydQAAIS4aYM9nRYCNDVCQsboLEShNdwHRhUhXly1Xt0gJUNmKuNZKyElpjjDG98d2WQXt+OOsblaj2OqAaAgYx/v7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwKRga+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwKRga+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBB9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789632033;
	bh=K0n3h9P6Ew0nV2v9F7rxMOzxj/paJK+QMZS4X96yJ+I=;
	h=To:Subject:From:Date:From;
	b=pwKRga+niMHbvDT9Zv8ms0G74izWkSwux3fkt0MVZOTjDUTxeRdFer+A2XoiJKy9M
	 sfP+zDiSpX++yijGrHOIKrI8ICh0CbPHDqMSK8DB76ZfoH6Z78HU3RnBiYUq+TLTKl
	 lQoNh5MEfgvM9lXsd1aghI1/QqzKEjlQXOUo3UiwG9OLpCZtMx5mT/aGr77tMPTMbt
	 xdvXJ9ee+bIBiFrp+WbdxCoopK5Ahj6HI+Po/A5Oob3FrEDZTZzTr71vQS/p17bwPb
	 tvWnLKdmTd4d+SAjvRiDub4oryWK3NlBWO37bt5dETRJEOo8uiyQ+m4gh+Ps98jCbe
	 46x4Me9LdAknw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FC4C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963203372.26099.1127828439622681812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55e341ac36dc8a537ea6d6308307b7d56bde257a94189662ad80908e6750100
Date: Thu, 17 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789632033
