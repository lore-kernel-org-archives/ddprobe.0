Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C43347DD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750628394; cv=none; b=axaG+gOm88YTeuA3ry/J98E+YBeg5pUfuJQLt94Et9xZt+gg9iz4wjT/wpHm1LUpGyRZhJLTJ3u5R/j8iObH5cWtfKA6BuQB/mj3aPpeU0oOSKNsMauQeu400iWDMHWkZi5dVD5EqegGQJGjmmaUK/LEg1Eefe01qTrL77KlIEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750628394; c=relaxed/simple;
	bh=1XUpLy7XODJ8+3OOvXna0NbP1UTtH3Eg8WX38Er4A5M=;
	h=To:Subject:From:Message-Id:Date; b=LV2C2qFlmpCJXaGmIj4L7c1DeIq3o4SQtZWrXXQCAk5mO59gw20tx0TbAasy4aRYeMLUYRtRhrgEZolrjPvUMaWAnpdb6vh5CfnFlFlxOSFborCmF7N254N39pB7zeBmdvs74IXA+J/mFkz9y9rqHDyypskXmGaXrOUDxKZffWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFP7tZGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFP7tZGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A357BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750628393;
	bh=1XUpLy7XODJ8+3OOvXna0NbP1UTtH3Eg8WX38Er4A5M=;
	h=To:Subject:From:Date:From;
	b=bFP7tZGaU5giisYg3A2nMPDEEthL3CBBBGmaj1dgtvWjqzdGgVTZTcy2fjxmX6LdR
	 sabCxlxQq6vjE5cf8ZS2lMXkiQB01KmtD+ZL+feL8Wh1utZHGMEIp9EmL7eVQ1RdyF
	 aZ829OmIUUKpsIeL06wfCuVXK71MLLgy5HXNIIrExspouVogbn6OA0A9bpsDCuAauD
	 YGM4WR4hG5Q+pISVRQbCCXcSmObY650S7z5dEppa8mSA7o4Rme09dQHCC5R6JIl32Z
	 krjgbtJmAdGgxg5jh15PLHZcp1/nGx7xgx/B8H1vU8ruM1GrgfRdRsG8wQhR7muGM9
	 3OFjNZcvwa/tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD94C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062839358.309.14293437729356180626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c3c7d0ed8749078e1d808f9b41ca9429c0632b9f86b04bb25119ddc156dbb8
Date: Sun, 22 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750628393
