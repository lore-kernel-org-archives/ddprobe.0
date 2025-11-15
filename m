Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AE326ED39
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763202594; cv=none; b=ZESc9SRBdoWEmWnYXoeLTAjdkMMNj/uGjvT6uCx2KrNDRkdzWF9uEApkvCqqf44eDKFk063ci7vvAjH//HhQwo4MiQ+HrGnMpePwt8K+H4ZXupd+2yeJiGZPVIgx6d5InKig+Nbak+Dw/9OvZ4pSe9b7C6rbvHVk4dQT+GSKGHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763202594; c=relaxed/simple;
	bh=7cPNbWFsqjeFB/b3euLz3VV428BpMR9d0c382mwJMuU=;
	h=To:Subject:From:Message-Id:Date; b=pOiFR2Ni2bFool0tnROPSUCD5LvyOy330TD4rCVjM7eBlBiOawBDO5P7wwgNz+l2i5hrWIeChuS1fro1Ox5IJECy15OM5fVbeGhU8ODCfup4vwkZKIcK4hPz4pUqdio5UCWu8FrLSXg5CI1Jx4hHmib2lyPIyuqC9MRmNWanEe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0MTXwf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0MTXwf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE389C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763202593;
	bh=7cPNbWFsqjeFB/b3euLz3VV428BpMR9d0c382mwJMuU=;
	h=To:Subject:From:Date:From;
	b=d0MTXwf7VM/KsaFACknbWVYz+y/boX55sLb3923ajTPm94Ar5maj3r5wAOaTNSYQ1
	 xbOUVse9FdUsdGFB6PxNvH8SmU38dm1cY12ULo/4oWVCrKR8TMBQ5dG+/aSb7g7s6V
	 gkLNlQ4DMPcaJO30tbu1pVC9A0uMXsmaLnlGxzsCqB//3HRA6pMHn6iHwjyk+ubnqQ
	 M66jbs/iRiVyYtvhf+FEaqZer1LykyHVZ0WA+rjpJJxTNddfEp6vKULR7mODsuWd1s
	 f1a9/RKJcM8xN1PnqBbt2zTD7w+5rthxlShGhh0UIs10cKTwzxJqdMvLtC5i603EVK
	 vO8exy25SLxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D56CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320259361.25000.16879341045512387547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746190925e1a3d0e55a039a626bbc4ef79065555a09785fe1646e7ee4a228ba6
Date: Sat, 15 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763202593
