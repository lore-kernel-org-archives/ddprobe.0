Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FED112CDBE
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715350943; cv=none; b=a/6ixVBagMLUouBuTh0xyBLig/B+eCG87FIjbvytEtz31YMaxPhrlJoJCzVt9cDV1GHtoV60HxaVAZcUlAWgttjUsJPR2S4aKzmvD+fHrB+0/FJElECN5CxTbqadbv9S1s+2djwmKOimqbLFMiGwreqbRN242+0zCxvOyxythTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715350943; c=relaxed/simple;
	bh=J3hHNDV4Hlmakdd3rqWNHhtfbZFX0YiXr+ZKvOtSz/8=;
	h=To:Subject:From:Message-Id:Date; b=p+r7xE4Imawqll0r4jUADphSkRUllazQC/wPBu6H0MCi1WWYjg5QsmyRQMfZ8KJrUAt+2u9hDSjF9JCWQHCEoBwYCyZO/rDZMwA47udf8dyPURYpIpRyzWEIV1ekpXr1tTGpnkHwDse9fBCl7L3tkX/eJlfxfTUBepudWvkyk2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+hvT+Lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+hvT+Lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3781C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715350942;
	bh=J3hHNDV4Hlmakdd3rqWNHhtfbZFX0YiXr+ZKvOtSz/8=;
	h=To:Subject:From:Date:From;
	b=S+hvT+LvykqaFKeymFFAFLt+vpQlKVL3aeUU8dmpv9HEQwgTONSCiOZX+WxouhDbf
	 4gXH8ZQL6S9N7T+Nt/twKfxwpXt+enWm11sJ7T31GMzxjRBJ7tl/KGRwNP63lmaUBV
	 LCfMtXyOGA/Z80/VSxckYoDVtTDhOgjdUdd+fByFj0OzZIqrmvhl2WaZRau3wy8Rbn
	 dzvAo+aS1mcbpZh6yhhqf0A51Njoq1HPwMXVTIa6SscdPajquIjuiYX6vYpAuqJko6
	 OYItb7fcdwU3HqRoDroCkkX2quoNd4uosrs0AH9+GDpIRuK4Cd3MdPhBC4L1I5iB2D
	 dmcMy90IsV+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68DBC25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535094277.3795.2605334258185527082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6101bbfd1c219bbc5d56779355f03daf86d3ce4b6b0c1d494f0142e921cda14c
Date: Fri, 10 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715350942
