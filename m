Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6F18DB35
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753552194; cv=none; b=bw+TyeDpoDzpwsSbMvgCK4A4X29J4D2IeJb8rtz7aEE2yzxKnGHV90hyxPeL7cL84K3wB3o+PUaDMBh8mByk6Qh1Yvi/gMJM/pphGO2XBWBH9RjQjURjPdyJUtbNPp4juObLoJ5EYlDR8r56R4e8wRwTdAAEQOBL4hQQTulKrQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753552194; c=relaxed/simple;
	bh=EU6HmX+rIm9ruSbq48RwQuJBvTK1A4YFFN2tIje9iK8=;
	h=To:Subject:From:Message-Id:Date; b=T53FzTaF0sGPuH7TZ/vcehTYVo7geuvuTwnwx6VRsd2pSSu4qf4HMrQY/8PDwtGds/aSM35M/m0tfc6Ee750302aIyPN6CngyN9k94Z7WEq5ODb7gbhDnPSI/1pL9xJjt5m9AEQhUIzcQPCPejruqmYQgpVhMdOJBL6JG9maPSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaZ0uXh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaZ0uXh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A9C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753552193;
	bh=EU6HmX+rIm9ruSbq48RwQuJBvTK1A4YFFN2tIje9iK8=;
	h=To:Subject:From:Date:From;
	b=GaZ0uXh8GOsDEfnvWCQFD38/l9wnktSRvT33wPN6r5M7r/s1UpMFWWO2T8/SeiJuF
	 +Hry7PVMaDXazEocbVqEF/JSk7OWzCBSK/Bc6rD3xQ3RAv43WmspQ4N8toTfFwvxcS
	 Xbul/bSLjxCeHK5IMzhuhxW2tnfexqquEWEZmMRG6Z1RhUuOKdouTip08Xs/Ini8KL
	 WmC7fWIL5OFa04ubhRsrRVxleNJeAoed2oYEPAM6KlFw3Fj+NwydI7I8YwK1RmtKc0
	 y/s86anYqDRrV8sAGtNUrLtDpEKViZBuzeoFgrIAMrDfuk9nuyWahQQ6pezvXx2Hxg
	 twown03Rl2koQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D16C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355219357.5273.1937963862377445718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7eca632e9a191301ebf9aa900050f13447209139de0a04c5f5f21105315cbbd
Date: Sat, 26 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753552193
