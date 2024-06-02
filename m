Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5E40C03
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717372523; cv=none; b=OzP/RQP7qITeGIrKgvGUxlOfzJFNVmIj9Hwfq6cTOxnnXAzWweqgSZ9GmFAXirJ8O/zwhOZejRpbK7DfqUN1rI1xWNhMJ4ShepmDaaqStWgN8fOLG2vCkvM6wdosihBItq6k9D31NjvpyGdiOT+plAAaE9KzIQVGHIqXJQpU/iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717372523; c=relaxed/simple;
	bh=a/OhA0RznpNRstellMD8hdJ18MXBGIg8Pz4dkTMIlDw=;
	h=To:Subject:From:Message-Id:Date; b=s+Uj1PyED0wG9GDgKeMx0/G8y1adM0AXjo6Ww3IBzE7yOLNdk2St6Gpuq+jlqqRlgeXH6PHZSmyWsUrrT2pfLBr3Q82A2o7TNxAZ02gnc60pxxJQJc36XXu7dhdcZ9ip6IDoFZyBIa4jXklYXuMWGhc68GJSjrUMfYUm1nEJr1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYI/CtzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYI/CtzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D68C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717372522;
	bh=a/OhA0RznpNRstellMD8hdJ18MXBGIg8Pz4dkTMIlDw=;
	h=To:Subject:From:Date:From;
	b=TYI/CtzLNQrtbyWTqZzmgpAf6GIghsTj50f5sIgbYeAy9fxXbipatGpSmxZdsL9nk
	 MobqPU8yLImOu/KMfH1f+ocMhOwX9JYzfs474/md6KxAq1LZ18xwK6fYvfbOUPvI7g
	 fnXda7CZFBDahXuzFSHX4NQ8cWqCluT5C1BMg+kemZZz56Fz/HFv+Ngxlo3w9vEPzJ
	 UCfFCAJjMsVZFa1zTF40rAsQclURA11XK8KySLl8UpEyZLABmo5TbvHbAn42g4Tqqk
	 kYy537SLSureiJ9KZYdc4yyOi/HdzF0PZR8oj1/RqHfP6U6vmNyOlzEWGmnSXQtAgD
	 95F+WJ44t9Pgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1595C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737252277.20294.14506965409079268123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995b2c005e86ed5a209c3499405989c5df1af04de793cc9ad5d154dfd5d517f3
Date: Sun, 02 Jun 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717372522
