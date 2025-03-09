Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC681DE4FA
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741548534; cv=none; b=GycODk2g4nxnrEcG/HLxSqzZ34AP2BT2Og12UVR+yT4wb1wNtW7tcjgyMUtLzL0WdPlbWNG92TUV4jP4Z4PPK9Vzwb0Y3TsvHr4v9sfGmvB8G6sxyg2107MxDpNi8pj4KsPupKSGCHsuufa7sPSuaUUesOiigyaPJ7GraVgWVKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741548534; c=relaxed/simple;
	bh=taPlcgwkLvywysPnyFEpUNJcYO7/JTuyFPEQ698Rhe0=;
	h=To:Subject:From:Message-Id:Date; b=Sd9qe0uV4t9EEfFBukcunSvA36LJVSnHGLrKbblnqUqd43SrT+cy7su02YRSUCPUzxcVaMMn79VYDlqmMxkIpOkQF3LOkR6+7i3+6MwaeHKcJ79okRSPUoq36zBbdod+il2R1VOjOFAZujXd6RK9q/84WkA7BdQTbmZiIeN/2q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QND3HSZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QND3HSZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A929EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741548533;
	bh=taPlcgwkLvywysPnyFEpUNJcYO7/JTuyFPEQ698Rhe0=;
	h=To:Subject:From:Date:From;
	b=QND3HSZjf4AogL0PAUR7bvoe5h1u31whqcnb3+rNWFdH7kv6QTKMAeCtNTion0bTr
	 ycrypqRtXAZkXys1tOf5WHZye0jnCHVg+cfeQp7ybHlX8/Cs6Fktn0mIHu3Ed6nebZ
	 pWyBiu/v36h6TGoNLwfAfSTUuCIJijugYYrRsgoa98CzUhG/M+mSN5D2E7PK8gsqy5
	 RHOcTrkDhujXMeXo6REIQimeEPGxRTZodm4oiuQquk7wsJJ5OzUCVaph4s5L0+omoy
	 LnjzXZ017E749eM/ZINHQYIEFdeWzughX09nEo35zPXyTDMRl9Xk1UNizaMxfDiDEP
	 X03JefKnXSLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F4BC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154853361.9329.1838777449534051360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a04ddcb39d0caa4ddf317547f9d767c4f106957cd6b4f1e74777b9b018cc6ac
Date: Sun, 09 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741548533
