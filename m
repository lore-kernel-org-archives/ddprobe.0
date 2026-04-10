Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1914A27456
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775791654; cv=none; b=svX4Sk9cmMk6wandAtO6rNhOGys/stuGg9ujKK47BZUqDkV4l/Md8KHlcmpLkyJ/nuIW5hHlq55x3GSVpIzKvzeWzbWaH4NbSjHPzxbcn8v+e/bkWC36wO1H/J0mGlK4BeKVrV9mxVNicw3kSVvhx+EvFLq/VTo3fTv5M8Xr4yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775791654; c=relaxed/simple;
	bh=6b+igWty2RrnK+UQ6krpx+NNrrDk7BIsWarM43Fddp4=;
	h=To:Subject:From:Message-Id:Date; b=MdPQ0GLqW7on06QNFBCDYUdFGS5MBcSJeq+gYrs4N4X7LRkTVbJMffkMt/rKCSlPhRLByq50Dt8MBEtqdY98ebwUi9YMn8/A+Bprf/b72FE6MQYA24L71nAcUEJiJK84G4U77WNLwnhR6ZkjW3iQ9e+xGBn5MCj04z3Myg7cbt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOezeS/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOezeS/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7532C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775791653;
	bh=6b+igWty2RrnK+UQ6krpx+NNrrDk7BIsWarM43Fddp4=;
	h=To:Subject:From:Date:From;
	b=eOezeS/aSvi/aLAfLnovhJ0DCh8wFKQbu63FESUXe55ofBMOTMt9bsDMRgNf0k3d2
	 U6tyoFZ80legJ4FOkzYS9Q9gzAtUVIhfZwwVqbYJc2Br9MLicZ6iQ7Jsz3KYVjPGiJ
	 EZfYwM96FmzyOBNAMfgHM7o5uPFs3QAe2W2h4HFjr3Ol3U0jFfBGFTLJMq2XxrBRHq
	 Netn8ATwkB3WA0xLZxtG2FGqjFkleV519h15ZoVXwzxXyZNZP/wMLOxphcSq8C4TyZ
	 ufl/Y6/x+E4OlcGPGwHK/9ZaOnq+jr9Kzg2Ul6BzfmsuyhHaKvwd6RErVglkcrp3ug
	 KLvjZxhL8VgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B3CF36BA6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579165368.28068.9190038546432026912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744ab6c2c47d4890ef7c7d6d1f13561d2fb416d20f669001a3a51d0746bb37c5
Date: Fri, 10 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775791653
