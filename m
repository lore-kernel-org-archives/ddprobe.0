Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102E32D2390
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755067195; cv=none; b=sJ+5PHiZoFWMBreKtHPkGQ8IuqOdwFr1u1MJcLboz4Qrxk1DWc1hm6pKoVJFHNk49Yg0cJX1h1O+mMnPN95o50S3k6qvfuZk5irHo9A4RfdDDR2bt1Gua2SjwZ/T85QZ3hCiHN2kjHszYohWBHGTEITsBxaQ+yPHgRmQvu5uYjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755067195; c=relaxed/simple;
	bh=uA7VVSuUXEMKjUmV8NUGxQHLmXxiSnTh3cX54fby3cc=;
	h=To:Subject:From:Message-Id:Date; b=pZM0rqXN8+DX0XW9PusEAjawwipb3wQrKIvn6tUbZpcPORrZcIqNobzbEJ8GWfZbq3dyfHgrHgJNpi28Z0+i8BgAsD+ikuFXuYIUJrMX7b1el7mh06qRVXpBk+1KluB6oAj5iQ+t0Vi9Tper2P7ngwWildkcCqCQQ1mQUC4cgD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htRdOI7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htRdOI7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A9CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755067193;
	bh=uA7VVSuUXEMKjUmV8NUGxQHLmXxiSnTh3cX54fby3cc=;
	h=To:Subject:From:Date:From;
	b=htRdOI7O/B0S/7C6v0MqaTVF0M69EEwlCB8D3VdcStopZ8YzL+tctqTJ7OWs3UTX8
	 zssqzg8rG1H6z8v6Qy1ZRKuByz3nkI4EtYyZfZJeCIuIPMSCSEPv6vBU03AHx3KoTo
	 0rH1yoML963s3TFk+FTcASJJRmf8wMRxM1Xb3qUubSw7uXVFHzJAPpinWY0nCBD3vw
	 iU2yM26whROQBl7ze2PNtzIkMO8EEr0t/TRMOaJtD4Vxhkv0UR5a7E8hmKDDJeWG4A
	 UDgwbXjuJKOaq225FAMpSajCNVgCuhsyn3QTDjlSVsI2UhmiaVVaurv8oBmG1oyXmj
	 PTONBHafz6CNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ECC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506719357.28704.4090041638389950764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8fa4fbb354b2be6c001feddc5e7e7c3040af6a75da9ec325dd501e6d496798
Date: Wed, 13 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755067193
