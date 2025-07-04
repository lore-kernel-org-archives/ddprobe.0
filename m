Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264E120EB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751641194; cv=none; b=R1rO2U0sqlugAcD6HJOSlUrgiA1uFrRuHtxHTV+tZFIu7SAGbUSwzjBtHS20JQb3QpQP51YZ9R3urfMOGIu3+wj8T1A9img1gwwQJMlHb/3ABrEyWFheuDg/o6ItejifVxBb4CHIMWCTTKxai2LtymX0dSzmPC2k0fepXBC/WXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751641194; c=relaxed/simple;
	bh=HZ9itkEgV2IiqCUKOfviJK4PWie6XJabuHycHUWpsxQ=;
	h=To:Subject:From:Message-Id:Date; b=QSTrVapv/rMZVZ98j0ePdHsE+EPfcSgerZSjMzHTCL3dZ1Root+eOGcdVZ1jI7Fhr3tHinL/Z15poGO1ZbA6ydiko7mOQhZx7Sfz+myR6TTdf+Qm7vFdbawR4+5bopGrtvlCf03M+5DkktjMn5XdDQCKaYu1MPJKy7rz+NhFVFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilTEChWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilTEChWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1731C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751641193;
	bh=HZ9itkEgV2IiqCUKOfviJK4PWie6XJabuHycHUWpsxQ=;
	h=To:Subject:From:Date:From;
	b=ilTEChWPjBNOkQsfn/DFfixnzfiypKvPH7mJfPYEYIdCMH7s0RbZRTxjKTT5AECrB
	 exKAPUSkiW4l9Iy+0TIfW5AFZUmO+LslX/aBQ4IuRBNuIeP8CQ4HFBJH6bT/uYI583
	 3U3Rwbr3dXWlVNFDk/f7LUOqSEaL2r8NjcYwcqQXph0gIeoxatNP5+hBNj4J0bkgQu
	 xHBVOj/31eFSFcFZbmZgvcJFBJk2mpKT9zM95nZASTZE8A9jX6eBXl07STQuSaiEKU
	 MMlz+5aOyglwSTjHFEO9k1jTAE8yUvbHe9EHZnLIxPEaRur1ldr+gvzsRu12fliLym
	 GbsDORFlkhMfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164119357.23120.10678508218297527562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f785b1b16a7a1790f8b576f3387748f0e012650c928d642d09b6de5178200d77
Date: Fri, 04 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751641193
