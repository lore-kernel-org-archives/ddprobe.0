Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2634934D3BA
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762328394; cv=none; b=FfAqJzpTlYtGDXHAvLrPu4aeEnRnLYBT+Jrf4MWbSCqN8EzQ0kjKZZb30h49qzLH02VwHET7SB/J8+suOQlNyI6fd103OlpAla7puEx6hId5dBkhvVn87tE5DE2sP+poFczMo8gqeYDxkaBPQ7lqNrIVIYkf1jAK9+m/Vigph04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762328394; c=relaxed/simple;
	bh=4Ui5jcYwp4qjHoz5/nq2nE4WeSTrFrlCbv1C2ujCeDg=;
	h=To:Subject:From:Message-Id:Date; b=msJ+IpD3udjdUBoLGS4bO+chH849tXKGsuBcaKGTryJ5tI3aF3/mExM7uNCgtxUsv0q0OMQx7V3nRCrZ1votTxAA5fvYwQkXrywd3BQDk7NnRH5xfV6h0+BW3hXNtFByN8QNOZP2NJwjaZqWzPP72gPUhjJQUSGhFvw0uKtrZE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN8smMPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN8smMPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D52C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762328393;
	bh=4Ui5jcYwp4qjHoz5/nq2nE4WeSTrFrlCbv1C2ujCeDg=;
	h=To:Subject:From:Date:From;
	b=sN8smMPcUlt0VbkUGyn7Xvkcx06M5uNWEJHIWSiVAyyV3wmzXfPrYiQ2zyStbaTRz
	 7bQEuE8vWz3+O+xZjr1vvUMOzS+gL/D1wenRdKSZihr1oT1AODFFWpcf2eeKLaX38D
	 XupWPL0vvw19m+u4cmVpG2QIUelamxi1EDMv+ZCotDdjXNLTwrmuslPH5BvEjFwuk9
	 b4ACv84zqO5KGxMrM9JmNrPEAMAXqaldHKO66MkV8TOIqQpiWnrR1I9ui4SEnwrkAW
	 HoLoUV5kp01P/MYJs/gYaHMkdSj4ZKBd+lBDGEJ/saaFqrerXhxu8xp2dts7NsFHTR
	 UBUaUq1DGFx7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A90CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232839358.8300.872763612977469167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84310d0b5b151a06066cb767ca073023d6adefb40ea6081adc91f970492a0b9c
Date: Wed, 05 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762328393
