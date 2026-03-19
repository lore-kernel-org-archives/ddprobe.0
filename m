Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA7186284
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773899094; cv=none; b=XIgHTVpTIzfb4cxfibddDhH/aPEaWnG81yozqFFD+gtclrrj2pg4rMG+JwoKcVNPvawqinJvugWS59LEtY4+bjhcWK88cdn4IvQGMVRy2Q1asN3rSgjsFWvq94ajddUQNz10R2jOYphTLSAb/dBNL7GthYYUePXhMHaPvwUF/Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773899094; c=relaxed/simple;
	bh=kuS3gXiTVPV56zIL+CbhFeKhZlTDXv784Asqfvvoyok=;
	h=To:Subject:From:Message-Id:Date; b=m+d13Dhdf/D6XomT4Z3jCiTMKjeLU47wKFE+VQuFiQChNKWLrzU35oFtt8IN/K2qL6qjV3uIpJpiC8LQ1qxrKiDxGIT/zVr8vVUK9kb4TziBNDvlWEOPZ+RYX9RNLQF+MLQpcnrbSMMk8v3ajROT+/peCfksQXrwwzLuC0Iwync=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTjprdkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTjprdkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DAFC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773899093;
	bh=kuS3gXiTVPV56zIL+CbhFeKhZlTDXv784Asqfvvoyok=;
	h=To:Subject:From:Date:From;
	b=fTjprdkSTUC5SDPrncMZ+U50QVLrRcxgN6iY9mWjURgi/OXngN60G6Hs6b0aR0i8h
	 syWLAYjT5fbcoaXuAPVcZ6hKBYjcnubCh8EvTm6PxXGmkOy1G/2ujYVb9ArIsSf3x1
	 6+NJzuyY9pRXkCh+foBycNwvPYg+VLKtcR2vCmuJTAmg9bm6aMu2F0DlMaV+h4Uhea
	 UZ1tTiyphWUro1Gv49d4rYm3PLoyzRdvfKoe0+WuFRf2T6LNb7/ZcpITXygkKrwzok
	 5ex/M9qyijc6oNyNPgRYcyadS0ehqqxphRnBTeA7bOyCdzdKxeoCadhuUqmgPuQCs3
	 vXJEAsZjcbPJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92829103E185
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389909358.9487.14356064985496560225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3360e5988970e59b7dba76d015b80002911b5520f5103931e863bd8ff7e6007
Date: Thu, 19 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773899093
