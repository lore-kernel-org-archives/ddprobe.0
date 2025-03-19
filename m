Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328A91CEADB
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742426394; cv=none; b=jnTA2iLSEvx3N4FBErUkoltFRARAU61J6rnWQNi4/ElfvdW+OuRvDSQU/fHGcHwuDibKXniFx+6rW69hGpO+zRm1SvtkMSr+6T2KO6UpX4qnGIqSiOpRUNyzvNOUPVG2NythgnGnRtv3xAndmb892G3+2Da2LRXsDQq0nodHfRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742426394; c=relaxed/simple;
	bh=EiqkvrVt9hvz9sLf5arjz8SlGoR8M2RAyTf7GvysX6w=;
	h=To:Subject:From:Message-Id:Date; b=RBXzwrPTdALHnIXHIQYNNgXZbisK2wVRKUeN2RI9JRW2KnJ06wCOioe95LuL8BZaP1I56l0u2A9eIg7yU/IL7TIWWrp+HVpDsA7TXSCkeDc73xsEza3Bm7vzPh8h8k58/iZbtPE/mK1KdCPVkSeiObFPXeQtIvZmCwHuTFlyQtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPT3Mula; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPT3Mula"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B1CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742426393;
	bh=EiqkvrVt9hvz9sLf5arjz8SlGoR8M2RAyTf7GvysX6w=;
	h=To:Subject:From:Date:From;
	b=VPT3MulaVjdvneYjxdBlSDKgdW/axk9dImaJCgc+OXj1rVx0Tj07KjR+VePSUh9/t
	 60PVULSHJAUg1zOaeI8txAj+m8DB5Znd8uXOT/XmoFo4eXTdwKM1GpN76kwviSV19J
	 L3UEWHgt7/LM0taryRfEruq5BOAfM4bH8nEWG68bLwJRCyuJIbdqj0LC01r5luDy0y
	 0o6rCoIcEnOcYGly59WMoQNdAAFl8Gzvhd/Ugdk9v4iOoNLLo+GcX5U6xoLT3JQnHg
	 WSmppS5rLm8EVhD/vBFFnwsXxs0j8n9W88KJjpr9V5537H5Q0kNbMSWOREA7AT22zr
	 R9BJ254dxCt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97561C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242639361.13477.17134766001347970587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9188473c946eb5d4b1414adac92dab1c45b98af5693a854f16d694579df9ef61
Date: Wed, 19 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742426393
