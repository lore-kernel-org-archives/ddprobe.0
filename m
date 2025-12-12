Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173703B8D47
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765573374; cv=none; b=l6AIYNUCsH2E1endturv1zKymrC/fPGFkz/BYGNeuyaRPsTQVZlVitozZ5k5DaWTxI4oqfOOJhE988iENGEflgH/dr9FHVRWuatcjwuzBzqaCMDiGrnKQcjeS4cGsF12STxdNlsHWi4I+f2zQMXp14aP4KrH87NUyKuXmZ6zyDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765573374; c=relaxed/simple;
	bh=I5s8O1F9FLA1pME+7gTncfkcjVL57sUyLOrqoBJJVLI=;
	h=To:Subject:From:Message-Id:Date; b=KZDTcoaamrI5Fu5oOfWyr2B0lwfh/Z1e6A1aH5vG9avxUCNUar5/MxMyfap7+ALyNylz1tJKqMJdPn9u0WCUnHoR012CpBbXr+Utxnxt9jjflXuMTuiRQCz//us6qhofRULcbWRQm8Hu8HlQGKpPAC0bVSPQyAUnUcjbP3Vqb58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNaaGwXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNaaGwXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA789C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765573373;
	bh=I5s8O1F9FLA1pME+7gTncfkcjVL57sUyLOrqoBJJVLI=;
	h=To:Subject:From:Date:From;
	b=gNaaGwXGlI6UCFW1f2Ep4fSltPS5MH2/BlSEZxBjrzTAURTcd+Ik5WacIteqTuXYb
	 Ev6IDAHnMHSWjrqx7axDxfyKyshOsmVxqNSpxJHVXrR9LzxTUS7u3gCSnjWKcysTX8
	 CeMaylidQyYE1i6DSPqxUWZBI1X14PRqXs25CPXg30V8qBasSkmAaFMjupzLCnkiTa
	 d1zmqUDMSO/AcUCVY4HHT6afFurYUgr1x3hwvQESyqZ+LvNrvDsXHi0RTbLcU4xIdZ
	 L1CkbuabHi4aE4d/AvuG/qIdChI/0L+lxapp0iu1c9rS6NOGvc3vkifahpKNRAXPPY
	 yZuJYcrUeNTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB9D59D93
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557337359.2030.2911801297282716812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756f49f40856f96e2a727911b3f9074c382cf647b4dfa044a895c05d04693e38
Date: Fri, 12 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765573373
