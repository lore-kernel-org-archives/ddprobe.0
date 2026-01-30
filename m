Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04441607A4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769747033; cv=none; b=pFtDjL0xxDBlrZzVVTH+vmraSjqSTyb+t8sX+Maua6ij+QpAloPS69ntytprso0tEYHKvOuHDyUquWs5WICDGEPiNGFXYNUoGNOfqp8b0S++W6TEY8/PiDgWS2MhAkw13zBoLcxbocuaQ0jJRAtihYHTr9oWXpH522OAqM4CjwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769747033; c=relaxed/simple;
	bh=3zdANgZINDaV9dMSN27UYbvadaUtcpl3fZlucNNhoFc=;
	h=To:Subject:From:Message-Id:Date; b=Q8PFXeJ+LRAf9oxdujeIKINSHtZGrRRWMvj8Mv5J+njuWyUWmK+SGT0PqR2iHAkYOoOCSxVMx90UWHx06XLA8b2H6OVBjyAJP3UFIdpwWUXYrw7AF1UUbnP/2Nq1nYooraorx4mAPjpaHAdBxsaBPymXd0YinRXysfEVtBPFZvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dmy/LPey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dmy/LPey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B923FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769747033;
	bh=3zdANgZINDaV9dMSN27UYbvadaUtcpl3fZlucNNhoFc=;
	h=To:Subject:From:Date:From;
	b=Dmy/LPeyl+h8kDHaU0jghj6FqikjkFYqsOLFFNRTPq6U/UoBIPQsSPqEoU5LdVx2p
	 FC/S0zkhfSPjUDdJVhon3UMmdUUceDUv4fSLAFu8QwCaL6QhTrzbeJ5eheC4Cg26XP
	 jMsC0A85vFviF7+ivTwUQ7nQigqVZmtyq4uvnA4qG9XxhIZVhnGpWczjx5/YX6k2vy
	 jqae9ZycHToWBedBwsBy5obd0TdVIkAfRqkBnKpxC6vnRpUIU2Ayb4lzENFtpr+CuA
	 qILcuoeHKK1Aqtxp5OAYhoXAZbWfjpemQLOWMbxFERz8UkaQlGwSa6TI93E44Ll/WT
	 gg+s7MhRbqwPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00FDD73EBA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974703363.22568.14899685236055261806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa04d7d2958b31ad40b4574c13c4c806a43557fceb034b58bbd71c63371dbed9
Date: Fri, 30 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769747033
