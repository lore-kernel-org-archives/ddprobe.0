Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444472EEE86
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790550034; cv=none; b=cbyYtNrYQr4YlvtXZbNZrBEnXWy1QFLoI0Pbgn1WiXXviWO4c5ChJUdR8EvV0+64lmE/5QJNDJIGKgucTOD+gGtm3CdmwSyteO9G8odkzr48yD+pY9nsKmwyspCQZ7HeGEWzoOx0az/0R90jlkTzaVBdlNniYuvu0PZd5eh/KEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790550034; c=relaxed/simple;
	bh=BVrwxbQJXecY9FIeFB647D9a2zWNNaoh/gsNYEfeHZA=;
	h=To:Subject:From:Message-Id:Date; b=mG2u3fOnPBselZNlZ8mLZpRdDFbLS3n4MjzLbLhn6a18Vwyd7FMHhNmuj09G8aN/v1ajIiVzUzDVjIQFv9Y/FuVzW99/Z/NxkywHeqd/fCJE+uoLjK/U390QfjaikMLHggtK96aP8aJXKtiKSThDhiU47Dz+lqrgm47d5dVFe7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFow1Ztk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFow1Ztk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790550033;
	bh=BVrwxbQJXecY9FIeFB647D9a2zWNNaoh/gsNYEfeHZA=;
	h=To:Subject:From:Date:From;
	b=hFow1Ztkdisg8wtTXURbs2xuGRfNGVXxbm6tjIswgaEtD73ec37U3BJgh11d+e87O
	 BS1iVwk50EHXNv4ejqZobPElFPFHEENjKx1/QIpfMHIMqOw6LEs4qqPPR5Ii4PhFZN
	 M8uUlkaKdoj0ERRgKSDJxHZGc7HsPa3RrwvzsUNXFXmyT8Vsl6SvPvep6/JzSnSSQ8
	 kyLfiU3Oa3MP5lbFE/z6FvCcBGQ3LizXBwV0cgEnVpoJ8NN3UwB5fqp5molQYDeE6o
	 2NeV5ODw/LVV2+XBFQPjQ8F8AHJWo9hXJu0eRaRAUmUCHl7+MBNavSFK+pJUfNmFVf
	 9/C/IMEW4E4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A94C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055003370.30646.9915280196103399633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485c7c9b72ef468d54898b18887fdaaeceef0390ff4541a269b64d074f03be47
Date: Sun, 27 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790550033
