Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A48202976
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742719194; cv=none; b=Vq56EdLNHAEk+spteZ5vhS3hG7NJt8I51OwSlYoVQXpqqqaujyo56stwU6dN224XFLHIJS/dBhITCosXr5BDr/4lnCv+y0dZDXNRiwUxh73hwu///qEXFrqioBjTkli9h3bKw17A46ECAmZvuqKutqAsPG2hcXvPyUK/OkhiNhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742719194; c=relaxed/simple;
	bh=DrEoadmg6P+5Ef4gbMpofgOIZScbwWt/J+MoGb1xOzY=;
	h=To:Subject:From:Message-Id:Date; b=ONA4KPEInyEjINgpb1qSSINJi/MEWkRQqm8igPnBTnwOcFi+GVBs5oVehhlBPUJWW4kn0NPXFuaWf8Aaz/eUrk+O9qEi2mGXnxs1jmh+OjlokQQa8j1RJ4gHGwvnMDfGzEnvZcpmudTB9xDuUl4zIzJbfJ70tz+ZyeTiqI8uKFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6uhTMr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6uhTMr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C214EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742719193;
	bh=DrEoadmg6P+5Ef4gbMpofgOIZScbwWt/J+MoGb1xOzY=;
	h=To:Subject:From:Date:From;
	b=f6uhTMr9D46rSOWFdAM2cigONvyiEbefHaHZ2iO5mSgxM7kzHaNVz+FR2FHe5Bt1C
	 Ta9vE0Yqlp50kGUDVF2fek6lsLY56eGDlcra90hxCaAXrr65Rarl788WXDNmmgF/q8
	 NzzSlHWaDAXNmiC98J+nvV4o/Cl1gUNsO1euDJJhM8ExuZJloLCvT7iBoRGz0VJcLJ
	 p3N+tXBUQ3c64Dl+B5fSOl24KAKSqXjg95/hm6rX/GH3fHx47se93sL13ATblHN2cU
	 koiDp+pDD55IctFxDfG6DdnH5wgWRot75SYih5CiOeCRZhGoIEfGSJrW82vowjn2jW
	 6AbknhQPyKOyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C91C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271919363.24653.1487476061192100782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0aa858b55bdfbe47435b12e7bb53037b6c81cec8d8e7b93bacabfeadea377a
Date: Sun, 23 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742719193
