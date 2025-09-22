Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140152F6561
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758583194; cv=none; b=H8PDCtbLRUVDZjzNhSZeYRescHr9gw36Y/L4YJ3qh6U3kOoQ5YXKDfjZlNjlRyFgASMQZjCw+Sfh5ZcAVeeekoWa8idHt+p4MAeJml/TAR/2A3E8vuNBUVfBB+yLxJkHaq5SWrTfn5fhsFyNvRSYO65N+9LgRAdZLo+j2cLyKTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758583194; c=relaxed/simple;
	bh=/tN1Qfpn+VgVLscZ+hHUpbGWsTHjFsCAcI90f40Ovx4=;
	h=To:Subject:From:Message-Id:Date; b=DeA6/3r0H3OZ1BWFbwkWeGpQYwer0rT1eDu90kztjIG5zCr8utidZL0VHm8eqxjy/InAwl289QQYIGVySmtXZFYK8qbN1fXWlakZaajHXHDomsW1xqhOQ3DCGvWtOxqyKO8geb6ySf0GwMQCfpDmM5l7e0TYC0eRLMt7wMkptYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwoQJ21Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwoQJ21Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05EAC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758583193;
	bh=/tN1Qfpn+VgVLscZ+hHUpbGWsTHjFsCAcI90f40Ovx4=;
	h=To:Subject:From:Date:From;
	b=WwoQJ21ZPq24mgB8ZffjFudvSudxXzQJ8BDDcE1UVPk0VgLdmmlMtTys+JBy1QbRB
	 IM/9NgyY8989mZgpJDVXlunvVCkC8t39JJWQdi2NusG3GDhVjx5eTBiTgGgTFgQN8G
	 Y+68CYNEyrYvU/XDgMxQx2qzqdVOSFO2Jd4jOIrxnNWZmFik5uev6m/bzfgMwydqlX
	 WwjWx6KZFs6gbpnLuicdXexgg7bGm82a857FACoQNma/WfTWPHJJWYWo9rrW5bmMw9
	 fTdDaTa+t7ONL59re89GLITMi/aetcrghGfHGsZE16uEwEE7qocukdcCbH7XtifQgj
	 wT+pOSUdSS4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E3CAC5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858319357.14237.14423637378175042083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d7859e68485b36c4847b3bd98d6fb5c9d573404991278a384f48e0d82219e5
Date: Mon, 22 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758583193
