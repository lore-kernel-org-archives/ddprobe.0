Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C2D264A97
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774806894; cv=none; b=pyAIY/KbOrFS5FviZT37ce+GXXP8h+ty6pu5SgFTpCnv7kjrYvAmjPN9FPF5pRTu+xYYI5Er9r/YnpO26nONe3YfVg4i/Nylq3tLj3vCbGKjOQx1uEA6lA5uVkCN3GwmGkXNFRiuMv3a7pUe0JynrVT8TpAhuGgchmqQ12guIl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774806894; c=relaxed/simple;
	bh=XcnhPSqDe9KDHF/fOPgYxu90FPfdKqkkgkY6cQWhvGw=;
	h=To:Subject:From:Message-Id:Date; b=LrQ/18CCcDvsctzz1iRc02/a3tlvsnc9tEAu/CuQJysYuU8RQJphSUO+DM215k0RbgUsvfOw+uT3YoN+9FwET1lkKFn/a2rhG3VfvGYcGRUq47aDxVUD+q5CFgY/gBrc5QBS6u7YNc1F72FO/DRkBWPUehe+1lqQcxeSHp9DwSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfBqZ3oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfBqZ3oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B36C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774806893;
	bh=XcnhPSqDe9KDHF/fOPgYxu90FPfdKqkkgkY6cQWhvGw=;
	h=To:Subject:From:Date:From;
	b=gfBqZ3oR7kNwwTObqWlECyRNkUkaDc9OWpUgQmmxFVdXIch0d9EeKdJkQTicXMzho
	 +p6jADLRq/wW8INaQxXWtIwsmh9PTWSvLH/X7fdg3d2tYsCu4+iKU7/CPDNK2RWwrY
	 r3ze71FGLBDTd/XDgl2ZOL3iAnwFLR58BtvK0q1LmOPBH89Vx1DJMe6yO3trMomIC6
	 L3To4zNF0ORjF0z2da/O9YgHz3I3JzjQLDPY1dxxe3sDwIi1Hajl7qnkUT+vzs5Iye
	 /TrNeq26EnwvXn2CsmprbA7XQn3Gw08Os6z7Q5idznQ99lsytmCdyRPe5zqxu3BbyV
	 rvT6WodaGR5sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C65F3D619
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480689358.21015.4204211192003310964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3a41811eb7946b451cf69aba83482a5f99a4f0e12c77b2a9ecdd3bfebda3ff
Date: Sun, 29 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774806893
