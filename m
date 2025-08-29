Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7A265CC9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756511394; cv=none; b=E1QaIHHti5yPBMpt2UtPGadq3jcm25Kd4KyQFjsabcd+ESyRd+pjRkfAlbAUuHpoOqrveTCgd3g7UzB86rN312ayfgRhNxcLuC/0UIXrfwmDshF8Bd/tzO+HAVzohWx3alCvAEIG21xlWLsdupcYyJSVeTazivX2lYDF85r3AuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756511394; c=relaxed/simple;
	bh=QOoxraFMdpL+1DwEZHx4omV0rbvM05XmXYB0UTNvqFE=;
	h=To:Subject:From:Message-Id:Date; b=o82yKdrKsudkog5IRAZLJ/CrbYst9WYR8tIuxA60FMr4y8rLezMA4GJ3xGIxnPkL05WDeN7bQKp3pDufjyB+h7HynRUwR4RZheeY4YeWa2IA98726DIYUJDMFDdE+ShAqPkPYZjxIK5uhKdGF8TZG80SghgYktvdCM9uQGgVGF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzWCUeoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzWCUeoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1433C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756511393;
	bh=QOoxraFMdpL+1DwEZHx4omV0rbvM05XmXYB0UTNvqFE=;
	h=To:Subject:From:Date:From;
	b=PzWCUeoLa6V9Nv/qUE8Ehiyv2dfrdQ6UYqPiP7O57SnapkBJskKW23gJ7unOHt+Sh
	 WX7hdtHraE1M2EriHWXbOGs49brdgV5vCJ5eFaPBSQo9ldkvY6asKmBv2d2Mg6JzP0
	 DTMhZjt/lh7n3TFOt8za0bBI1giTVf5XplRyIwirSwFNFTvTim7O0KmOa3he1RHuuz
	 EjdXZW3HhWb3zo7v+FWVTmjXE4KKjyZPYXfZzc7ibgTgjS+6skEFfgu6AvbKXoHUze
	 eMtGwGr61K0teAw2RYy517qBrm7/EU1JPsTuiPFBV3il3dLpxtynKnoNfETYg2YhLX
	 +K/hC+hCuQpmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86CCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651139357.20413.7919717894227616537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa55c5f2e0fda6e294fc86c3aa576425ac0a57c8d07b6bb0022a4124b53f223f
Date: Fri, 29 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756511393
