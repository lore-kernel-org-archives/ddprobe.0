Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D73D22C6CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733609154; cv=none; b=q7kQ7jhYXzgIPbiQgR9Ndp3QxSY3tbnx/7wxb9Y+wdke0UtQgFSdAm4V3EF5eEeeyCASrHiP7DwHWccI/l9NHrWvU0nWazFdU/oEpN9FC36a49I36rBG22Oh7Ie+7m3ZR9h9TJGXDegfpVIyumH3OFRWNSuY548JVAqWF/srH88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733609154; c=relaxed/simple;
	bh=6ZpJrXlJ7yoyNhAUQNbECM0q+ks3VkDp/HeEpS8e+BA=;
	h=To:Subject:From:Message-Id:Date; b=lvjbr/uuC3GoQfejqDGpPNOAekaQeGOSnivzB5OW6Rli6kQBnkD7e/CfmdWrxqGJ9NIP9REEPO6GGVCosQPbTMC8p5sd6QS/xrqGNRunPHaHq6HgJUgkXMVUWoyuDpAItSw951ixuWgSQmFvtSumYmhLMLFUHBsIc2u1IilfHL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDb+Ftww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDb+Ftww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5C1C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733609153;
	bh=6ZpJrXlJ7yoyNhAUQNbECM0q+ks3VkDp/HeEpS8e+BA=;
	h=To:Subject:From:Date:From;
	b=sDb+FtwwAFJH+IlvznHGO0kd5cg6PooiY5FuJ874/0IavTl9+CG+A90h1aC+UZXMA
	 8URV8OIY9V2o6ZfYQsKBcdkoqz53T0cnQyiaxfTy3+N8SOkFgwL7l3VGGvU9AUtDVi
	 6HKmhq/7Mn3Bn5LrqMLotyGUKvgoGzknDD0f5jZ1799HtbwL4NkLrhedHhPXuEE21c
	 mWoiNhTp8Bm1hPdpFCp9U1+LEHOgfwghASmVEqqKSWXeQikyceVjgm09QsMp0kfao+
	 +4Nem5Y8dJA4hpq3pF9LbxmxXizTUnn020Cw3BMNb2c5Yj43QCrRIP7MqgJ4St6hbx
	 3XD0ggr5J35gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957BAE7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360915359.10940.6066956167630164945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05625c12db948f156a95762d394f88e5de402d6691aafbf92462172c16cc9260
Date: Sat, 07 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733609153
