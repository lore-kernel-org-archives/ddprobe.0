Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E81E5207
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776227854; cv=none; b=FhwgDqMPe4xT5aCmQGSj+URX03TUS4jqrAue58vgClbI3srGdT+3r6E1VeEWXu4xoqnJaptCHVXPa6ed0K2DGC1THYNAJtMfdVRayEPXDGz+YuMjAM2pOBCyJ4NjvOlX0mLdqhrRBCyNoepcTdJS4FbMMDXkokP2CKQNcwuYWJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776227854; c=relaxed/simple;
	bh=psz1ZK/wfhjG3gCa7/6E5wHfLHUi5+Q5iJ/IP2WFA3M=;
	h=To:Subject:From:Message-Id:Date; b=TKKLtHxxga3t95tSuvTqFOxGfWXFKxPP4JwjdfS177GTEByAmztDydGwAZ1uzI9+RVkwylTAGNMWqOX/ednCUggnl/QURSexQrLpGau+ttUdpJpbsuH/O4sIMU21Dm/WCqYKqbFLcoT1DKnTZMB0T2UySSQ1r0klYoB+SCSxrrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3VZ8TrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3VZ8TrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE316C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776227853;
	bh=psz1ZK/wfhjG3gCa7/6E5wHfLHUi5+Q5iJ/IP2WFA3M=;
	h=To:Subject:From:Date:From;
	b=i3VZ8TrImUqMifOhezfgdUB0wDZUTnAvsPprR6d/cgza3Xf4lyX79F86VSKniKkWG
	 kdgg9311TjaI1m31Ghk9R+ouEl1S7W++MMHV4CdcRJzI8SPd4XKbnoSbTYGInwLmRw
	 WKjmcMA1o7VQmdV2OPvJBJ5x6IU2NgCKFSsx3N3UCKk/HAMzZK0HpXly7Q+YeSAPGl
	 N7IQJNmPi6WxqpBIxUfzvjmfMY2TnHkuBlRN7QJ4cY87c/Us9MwAaQ2MQaf/QoFhgt
	 g90vjRna0WdbzVwmgBkVrYrp0bI7eZSQXh+/7iZBNpeS6GKX8w6quYv1vgSrrjNrL5
	 0rVPeuJPU9jgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC653FA0C28
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622785368.21575.17618156143997769390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0222175eca361f4e0251959e9e3e9d208e1a996442ce12a9133308b30fe545
Date: Wed, 15 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776227853
