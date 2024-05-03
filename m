Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E23814F105
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714723943; cv=none; b=HRu2IuGmZLoTCJsnPapxQYYfCq6mLmDNd+TVOYpQ/hwkmnMV+ZkVQF5kGaJeXFP+/7QeA5vST/cay1qvnlFGQ3yoxGbe7RmV7RBmKKQQy/j4iZ3JqHD+VGs3FChk3yNVwzt2r+tFPkOSPkEV0pMbc29oUgyAwu+gLR/BXmVmmZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714723943; c=relaxed/simple;
	bh=tsJVYQFLsexGnI5c7OYvs9ewlYl7yLf7cZOdI8bLcX4=;
	h=To:Subject:From:Message-Id:Date; b=tqe/R51V+3C2+1ZKCQdneWWXhSkxr1a4J9CkpWPWiCUReslo7Tjn4uRrLoDxoQY4+lpu5N9fdNk/ccUBOb8WsK1YZGM/tyGGv2/hw0GHRVYsapLG9iz4JXGGfWPHr0suRshFrgvB9yg32pVZQmCV7OC1+BZ8OH+O5O8hl3luOJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiuPevck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiuPevck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B5CC4AF19
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714723942;
	bh=tsJVYQFLsexGnI5c7OYvs9ewlYl7yLf7cZOdI8bLcX4=;
	h=To:Subject:From:Date:From;
	b=RiuPevckTHw275MzV2P4MycJKjUlgjNsoyrfXamNQTIFROL5jBceMhwkpvLIpE4W/
	 +13iWyMaakK9iTX51EkV3KTgXtd2c3jdEyXiZABtvdlNJccxzdjnFhBY98n2+kSD1I
	 JoAV20Ujb9WLsms40l0exJAHNjjJ6Co6qAgIYDVRBJcoghUlDXdEGqTV5P4taftq+n
	 XRnZqlPZk2/0FKmkarPe0MTKPBSHkAdi3+YH5F4WWdBu3XtcTeGwLpBI5m8/cuVRGA
	 IqgAkE0iVn8j/DrVLqxJmboHoa1uk/ixNlXbGj5vA+I36J1+8CWIKNZiWuEzhJIshn
	 n0KzL7YztGHKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BACC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472394279.22418.5926296660807395596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb48ea0eecdf91fd93bf980f44f5d599a9668fbed306d65b96580c8de74d8d34
Date: Fri, 03 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714723942
