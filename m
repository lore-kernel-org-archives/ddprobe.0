Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943AA376A08
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789579234; cv=none; b=amlTmI0xhaPmFaITZvXDyz/K3SErNvrdBfOA+OELzLzdCLKZKHVBa3p0WbpFZeDicGAK8Oam/WxNdE3nNo+YrohkwzEWz3N+h3hb9iznQmA5H4Y7yLq/Sa/29MAo0N2mXu05cGI1PX3H7C0Hz2qjbgVSWH1Te5vNRpdo3Y63XrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789579234; c=relaxed/simple;
	bh=B/QDdx8wkXoztFuDegKl3YFX5to/ROXprBFGhKBFkkA=;
	h=To:Subject:From:Message-Id:Date; b=PO+RJTjJ8VNVJ8Im1xwFVGFzZIxAYOZ1LAcV8+98TK+tkzLICoI9EEHHfqXvFSqC8WwCe5/B36tzsvLq7BqSJ1jWHfovvLzUywSVy3kYjzSewvZcT/igV+xkk1Sugug7qSkhF8LIUtFg8k65Nzb6DzlzNHVY2M7IoMLtEZgvXY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0/m8hCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0/m8hCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789579233;
	bh=B/QDdx8wkXoztFuDegKl3YFX5to/ROXprBFGhKBFkkA=;
	h=To:Subject:From:Date:From;
	b=Q0/m8hCWkTJkOnLzwIv8+SbWEEIVMqriNGxISoW2f94gekv0lH0S0tDBpVY7JHv2V
	 LraVA2gG8sTehZ3WMl161fmZY9N2SVd/HuNwjCUQ4zfKA/2rrznT8n5oSvhc9/yMeY
	 GJOH0qIN6t8Ta86dDlAu8+Dw7B9DmAcscCavoeMdIZ28aa/sTQwbwtHOAh0t3sJPmL
	 Ue2ggUD1Ccjartn7teX61jrpvmTGkeiehclzk/3GcTOMrbnY7RjTPxiGjXZQ5dodWW
	 T58dtwHfxkFLgZkFA0SxD8Q5t2XEIfL1R+/S/JInQf3V0JcUfvg7mUNmSufEn9LrLY
	 NWozB537+RSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDFBC982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957923369.1820.8086440288848567728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b1afec68146f186b72fd3dcb0c2e579bf6a7f94e64c4d182ed9f18bd45e9cd
Date: Wed, 16 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789579233
