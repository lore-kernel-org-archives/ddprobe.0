Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBAB17A305
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759298995; cv=none; b=nU/oKF1z825+gbychU/Ds9bApJPbZVskWVZjl/Bcl4t+pdvNdwJbfyKWUZdEGzaMOWRhpFSWEMHBVuSSMdfEZb5nzkLoq0PlVgt6jfSNbIKbZASmcRrzd4XzdMbJwMzsNQmmOVG1SPk72Q9S69YB/1DJ876cIOeB/xWgLptMV1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759298995; c=relaxed/simple;
	bh=PcheHt+bcvJFH/ZkNVraFwk/pajFGpMWt3oc7P2DP/w=;
	h=To:Subject:From:Message-Id:Date; b=RJZsvf496vYO21oCsvpgAr02tdM6YkvK5MnRFOay9b6n107ah0u5zGB4y3Uo5oSDj1hy77sozXoqNV8rYkNTuTu9PtdSvbnNvOwAWpanC8tl3c7KeSVUjMDWetrn3sdKIbkpqAIT0FlNzARjLV3jAlV/Vbj0E2LZ9MKImfRG8kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+wn2nzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+wn2nzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6913C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759298993;
	bh=PcheHt+bcvJFH/ZkNVraFwk/pajFGpMWt3oc7P2DP/w=;
	h=To:Subject:From:Date:From;
	b=n+wn2nzhZ9509SuELpIYGaJeWT1VmY7YtBl5hIK4259XBrLbrRT/+DCdy80rL9Z09
	 VIruW0bPE4OhP0X1e7gGduAnx4y/kt2rB0Xs5Vfv75JW8Bsv+Ib1yu/Gy2qjo15Uz6
	 dbAJiGwXVjexw+dO4xC3QPzY+CT9TOoEmvPV8+UtiU4LSJ44redFs2uWFcj6i9mkva
	 tFDYBbCM614Lp7U0N3lqJdqwxL8bM4fRMHvEep5jVJBNx5MgP7hvX5pByDZFi84P/q
	 JtZUaRH4148mld/4HhV64vn5dShf+Lmk9IAT5G2bBh2YH4Omy8raKwMl/TyyPZa/Oh
	 +LC6vuSJwOSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6CCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929899358.3471.17972485362523216581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07404b7a3598d34d260772278f6c5fd0d6f52115dbd7cf66ddc2283bc7c5d0c
Date: Wed, 01 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759298993
