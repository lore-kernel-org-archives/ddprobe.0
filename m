Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625FC1A5B9D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787361034; cv=none; b=bg5LcPSsqb6ixPQ+93og9i5bzf2nmKidtQ46K6vc9bQEQgyYmoPy7UMd7wg8kttGGY60ppnFPj0UXJuU4I2pLuLD3hxDGOl8pCfkwoXqxpcenLibBLJTm3TUqHwTxOgRiZlhUCIDof71EUkksKQETF2HLjyFcM5fD+lYSBWbVHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787361034; c=relaxed/simple;
	bh=dqNVuGU88c3Usc0sWl+rakG/SuXwH0WatpBa0pQscuM=;
	h=To:Subject:From:Message-Id:Date; b=joq9Bz+MFIxGGxu/WU1vODxHbTMlolCsOM8dV4UAfIvqKl0gJvWJP4Ow0sGFyawO8LBgrpuyuo+lu1mjevC344MAkbnr/xMKpo3p3nyzbwEQrsRME+CVXz5qVK8LFJn/D4en71TTJnY2B9aJpHIx35XoOQP5UKx9Qeb/ScGUIi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhVFW4Ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhVFW4Ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE40C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787361033;
	bh=dqNVuGU88c3Usc0sWl+rakG/SuXwH0WatpBa0pQscuM=;
	h=To:Subject:From:Date:From;
	b=GhVFW4AdpH0ZaL8NygStpZuLTfprQOVj/mZ+nhX129sxe0hnz/d5wMXkt3nHcYjsc
	 oPaEgq5d7UhIzg9v6Ez3oy0fn7xC3UOTQqWn80wpRbDasrbDFvBlteqwLhfLkwCx7G
	 3XgsWO7YblpmlqoGt4DwrM5QFApiGCvyf9yYioRic95RIqfAWJpO4y8sNSLzz8sJ5a
	 cg6FfpcTv8PD9vDku9VicTi4p874h2jMV2auDyz/6VsVzf6YHEVvuaEzUVlaQXB4px
	 NoTU4UmQ3BLOQXoG1TYprnUCb4IepS9Q5aKZrnFUMOi775M3grbq6teCEYfrkDnpoN
	 KpR9cN0Ob96Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF469C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736103369.25690.3724345253785896793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f668f65afaaeb7fd1ba7c2b9b70a9d331dbd850e56d501670043a0015a13f98b
Date: Sat, 22 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787361033
