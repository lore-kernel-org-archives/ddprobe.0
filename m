Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72E255F52
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753476594; cv=none; b=XZ/IW/Hu9U0NRakvT6Dq0FuPN+3BNOE0BcNYtJYrbRyGk5+k7BivLNbDAVcYFwK6pITMsE5D4ywq9YtV2bXHhlO3deYXmyHRCTcZao5bZcX1bgsl8rsMq8mLRLKqKI7L1QzveVc9kWuBiRUSZuHIMJwHuroBtDHocLBn7m4Acwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753476594; c=relaxed/simple;
	bh=NRaOrLBtJEek4g3ApmW+JTbaGVpJ0yXsWF8PY8YNxV0=;
	h=To:Subject:From:Message-Id:Date; b=SR+wk7g51BiALc+/vxvUG68eac6RnhLAsh+6d1Rv5vEBMSrmXUeYYIu7twBvW8Fy6jBu3DTWb45k3MBQID3Fh2YzVuQt3rl6DmKjw/fVzK3Yw208D+rHRzdXhKEgk/fCL+br2L1au4MuElrI8GwseNNz0plXP5ARqPxbF+q7qVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOw3M0EE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOw3M0EE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E719C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753476593;
	bh=NRaOrLBtJEek4g3ApmW+JTbaGVpJ0yXsWF8PY8YNxV0=;
	h=To:Subject:From:Date:From;
	b=DOw3M0EEHQlxdNr+rRiuXAb9+IQ9V2OFwgWMOank7eaFiVVIRjgwb1+zveWGLwjl2
	 LZiRZLGzxGkiQXZJ3xGw6ViTJ9/xJ7FLiD6bOsEAWNtHG8/gQDdhqiGvt4p0weQAkB
	 PHXX7u81X46wSxn8TBswA+tNDmWGfwt5SAkmpHJVtxFr9pNY3aAiMv4a9rR3A87TYj
	 J5puOPVg08Adg3iZQVfw+lnqODkWloRh/RQllTdEpwgRKUgsZmJ0vmwwpYLwUKSZta
	 jdFmYWsZh+k5KUGhkVMGfkIyXEG5pR0BgsIBH/sXU/wBvDlN+hPg3iY3o0lSHvk3tM
	 urnzPqS7S/0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90251C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347659358.908.5015057851710316409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6197a4ac93a5fbf14814a3357b68728adf0de44dbbb99d7ade43d8fc9afd08b0
Date: Fri, 25 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753476593
