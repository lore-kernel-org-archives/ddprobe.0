Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D991B425C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762389594; cv=none; b=khzf1bP6TXbLGm2RkOdE2iFOz8RAcMSdpO/VWNcLPFd2U20CrYnfaIInGgmHCl638JmYlMTKju6IpCrPd0LHf6hgGNeOmnXWHn5gfipXN7JA9Fw5W3TBRiC6s7biYjXv8poNZc2wMx7tpXnan4vs5YA9YtHRrthBaU3eaylZIyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762389594; c=relaxed/simple;
	bh=YbsXaXaHEdKRp51vmNZ/RcAeO8GAL6dCAN9EOAoM0HA=;
	h=To:Subject:From:Message-Id:Date; b=Kp//xKOXJKzACLFVBdCCh271WEhmcnG88qtz/BCXHHhK9B9qolcuvwTonVqSAF2XNI30kobFGvRH1yr7iOl9wjSTraGpoSsTlWCdCJKz14skqE4j9p3i+qXKGFtpcEjXndzYX/BeKsIiG8GZ4NrWTHCOyWm0pTV4KDuF2N8RKj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRoDqsqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRoDqsqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30EDC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762389593;
	bh=YbsXaXaHEdKRp51vmNZ/RcAeO8GAL6dCAN9EOAoM0HA=;
	h=To:Subject:From:Date:From;
	b=KRoDqsquEab0LE9G50ZDiyYSGfh6zII5DoeEIyzfyLjtZyZQRZGPhtc1PQrt3ghjy
	 DQ+1SG1mMSicgTDGv0xPAKvn1lECwpvhgatvxKiC22cQpLNK2rJM6q2L2bJdxFvYFY
	 JtzZw2kXYTO3GtPShppl8Zg3Oe/mKQGXMzN5rByTbJo4y6T8avrunFx+SQDBpQg/qe
	 dhsJ1eSe/kAWul2dtce2mLh1tHsJTGcukrw971nCL2Vrw8Cu1xovjOjv03iaFbAHCI
	 43MHi+YVf0TAkaVek5YvVubyiUUDCvix3yIV2qPHQL/uWiMuL9ftIQvpnKYV4ryc6J
	 Q/3BTAQ7qpUOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96494CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238959358.9079.1442907901955595519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbcd9a18536e9ee80c2b12b905eb973876e10c560eae8430b61030120ec7e72
Date: Thu, 06 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762389593
