Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FC74CDF9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719918323; cv=none; b=OwhxraPxrHkyHVLeNfNKoH/2hTAU0UR9LwwGYUYH6oNyrf2AKWudPOL3LfskbGu/IRJ2Vs2rHDcmZqyATbJJrETsLhUy9slDCykwP3O5LHvHbO9tcFZf9+08sqh4OTM+RuvNdNYEgTFcTzcmFDudMAuRYldFfSsZm/hMbV0O3X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719918323; c=relaxed/simple;
	bh=WeUHrDulZXd3YMV98EQtagpn/K48QK0qlaXuH83OhWU=;
	h=To:Subject:From:Message-Id:Date; b=AnWQJtqACIPwai3P5KywJ/5uaSAxIbSLfvnVf7JZuj7dVMIP4rR0CWwZpD6u5P8mgiu5apxCTFusClVsJbMFho5qySl8L4k0clNX7iilX0o1Qi9mXJcQ2skGZL3Svc3LssiiYaI8A12NG4FQucL7MjFJ5GyGzMp58jj+K76U/Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk/Ax+JC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk/Ax+JC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4A8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719918323;
	bh=WeUHrDulZXd3YMV98EQtagpn/K48QK0qlaXuH83OhWU=;
	h=To:Subject:From:Date:From;
	b=Yk/Ax+JCNoDdjTaTVioAIgH5adEz+8OFUX9xcr3ZfgfMJuBPOvIsovJ+cdv8s9Z4p
	 hL39s17QH2Ndy43w1y1+HCIVTmCioGFAofMhi7gzoWgHAnBRzDB5nNtNR1uwRWofSI
	 xl4+XUzv58AwYjIRtPRQhroSAZOQpAx3dooD7cbbt6y/KW3URW2RZe4mgcoaT16Q/B
	 FvrMvvfu7qhAvbW8RisyH3xIDARHO9VAQzpuLDJTYiWsvvQ5RhNkNzhIMddMnX6lEC
	 zlRY2Su/UfNDOSmn0zYvcbpkFk7t9gydUx6k+sXm/Pe3fQpBrMUYZdKzkxcCWDJZ+P
	 +xGe8FoAUxidQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C70C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991832284.26147.8105418536811532679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31caa5140672cf80a18692aa672e4d95374f1d739947c842a29bc802ac1f6d02
Date: Tue, 02 Jul 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719918322
