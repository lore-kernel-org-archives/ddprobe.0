Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BB042069
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742138994; cv=none; b=goQJs4xKQ8IUtEk1+AkKclsiRHtSzLZ4usoPKBKz5y579DMlQa3Lf/K7rNu3sBtoSUm8oLhJ4DLl8ZauId2V3r2Qpk0rcjCuYSN8HMIv6yEaVNkLaubT2l83jwmEmjw6bTZH92ynPXUG3AC1BFe9UtLVY3JgEKDNSvEQaNH/z/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742138994; c=relaxed/simple;
	bh=XUfk7QSNrQ9ZMZ6WsAVmfhH66mnpAhsowlh52Lde+UY=;
	h=To:Subject:From:Message-Id:Date; b=D2lC9NSC8KUVNu4k5tmAxxjgc/tP/e6MDYvfLTrjUpoypBI3cUYlFtZFjvrZtkqIj/9tk4ytMdcYRRKNKOFlQNT9STFUoIQgsr0zlEVxab59x/caE5gDCZpptvRbTROIXUIeLJDliZBmg9CzPbDZcf1Dsf4Lf2zgmP+GIs9XM1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU1vmAIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU1vmAIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E90C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742138993;
	bh=XUfk7QSNrQ9ZMZ6WsAVmfhH66mnpAhsowlh52Lde+UY=;
	h=To:Subject:From:Date:From;
	b=qU1vmAIlB+wAmSQtRTpHDXPF7GppnIqUXaA8roxWMODgjaspWQl4HcPpnz08XDGF3
	 /l4Tpu/eIzPtxDwUc1dciRfBrHJqNd3+EjPh+B9ZGATN9zgSRbi8RhiIBmFZNxhBQq
	 SoiGveFSdWNCF+wDNcdGxec49s7DWLsCZjfK7qTzFsoaaj75RpqurRcQIOEbSiajoe
	 M27ephx/YN7usQn6ebG3Bzj7IyvHw3tAjCcaH61RGqXGMxNtQ2SphtTwW27Vkgn6TT
	 6tFWU2N4QJ9mvKPhh5R56M/0xBpUxXUQ+NuD7ttmdcGzGVFiCygL/8HLzuSCcnuwLH
	 er7vD99t/ReTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CEAC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213899360.12525.7801622809898284363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481fb89ca28ce2dce6333da38a86958e06f6cda86f1cbbc46cf78197120fae49
Date: Sun, 16 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742138993
