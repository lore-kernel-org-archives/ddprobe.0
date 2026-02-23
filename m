Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F7D1E7660
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771821894; cv=none; b=M+zAQmPO7/7V3OWXdgGrzgtrCh7oKhUJ4byjOfYVZkWFEWAgKd6wEPg2qSU/3cz9J7+9+rqM9c3jl0pAoU3Mjw8cf6fb3xMDsx72YUDvX6yQ4DNM8esWUbLqDDvsPhRnqPrG2/N0nDFiLfPypggA8me6qek/Ft2dDVJFlEBOL8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771821894; c=relaxed/simple;
	bh=xPXEA++nLrSrgFgLGZQ8eSn8KNm0XRIvn4ixqdIGNDg=;
	h=To:Subject:From:Message-Id:Date; b=QjE2WvnxfCzhxnhPM6wfAipcYGFbzokgfP8G4Oc7ivFRsqfBxtcK7BteUBGDD8DK3CI9wN41oGsMwAWzlFmxY2g4jV3lZ0Cl8sLvDMvX4tG7Ky+TtwT5cDGfZqiBKFf8re1H014tsaX8EXLE+lP9cKu1GgLmOUJvVcWjVehyGmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7MdEZ/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7MdEZ/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771821893;
	bh=xPXEA++nLrSrgFgLGZQ8eSn8KNm0XRIvn4ixqdIGNDg=;
	h=To:Subject:From:Date:From;
	b=I7MdEZ/Kb2GKGsoV+7TYsp6XCRfRDW8XvhBu9zs896oYWEi9tKTpfk5oOwFMT1Fz/
	 /MiRDL1P0As/aZjDcXJ+Bto47ChRF/oyxgoRwM98u2//cZ3Uk9DHs+iHMbzG1evuBy
	 z+CmvTfufGo2VU/UfGE2PKUXr0i2b5lpguAFx+zHGnqDmcHbdv8lLQ/c3UWcK2pEiE
	 5Jd3w1ncJb2RFwr4mh0ZqgzEctajO29phpjNeUO2QW4m28irM40oRn8HOcju+jdnmA
	 bFTteDWE0/3GGRPkHWhrBW5Oxzwh+HX3qgoEthwJSyjdhqBzPvnSiBgoBB4ieu0B+S
	 2yGTNye//RpOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C83EF5865
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182189358.23821.10418459736851052000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67527fb3424687c804b6e2df9da4f8cbd40c53cfe867d655ddfe5efd5ab0ac79
Date: Mon, 23 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771821893
