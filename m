Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654D44D5962
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790010634; cv=none; b=migR+4JKHSt6Uwk5B3WBBWPhcVGiqWz1M/wMF9NLjtis0Yr9YRK7LxwCthj5IUqQVL976wL5jwuMSxoW7vbkbPxYN/11sC4wstoJFAiCbRrMO4/n4JJmcpRlLCfhfAkjJMSVUUC46fZR2fsNPjvcxUvpytD1fdeGgt/Bl0DjlB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790010634; c=relaxed/simple;
	bh=CjXEnFsQtSRtH/bzcH2x61Fv8T8FEOKRKDFfg8oNJxE=;
	h=To:Subject:From:Message-Id:Date; b=mEUWvcBITWdFMGnyiq5hZHvBDyzWnImN4Xan3Jw7uXHyb7QelZin0TRTTE4pxjIHpJrCg4Rleu1OuR2yLQOjmsikxfOUCmhHHCEDxsZjx7NAKJR0tOVLsNZh12WvonLCYN/vMyuxZejgwKndpVJ/PugOoEKd3Qy0NfungU3XIXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoYp50O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoYp50O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E405DC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790010633;
	bh=CjXEnFsQtSRtH/bzcH2x61Fv8T8FEOKRKDFfg8oNJxE=;
	h=To:Subject:From:Date:From;
	b=FoYp50O+ZEqTSEAJdYGFQFVkLygAxbxi1IvmnGz/0JxJKdzBERdeYSNozpmp9H7q1
	 nNz5RnCulwxwZmG9h43oYD2ejJ/27RAMsSt/8gVtTNM+lgrwrEzdZn6ExwVIUMOG2o
	 GnyPpqYqZss2G7nYVp9nGEuAPxDffsbnlAOjj9dqn4Yqf5p14deld1GXQKthb20/ox
	 PsqCzfr86WGtrFox58XMPVBjs7MkTindxLHNjxsdkk5onVgib9a1ead9orrdM5R90b
	 zzcu9hnjWIhV11g3rXXgdW5+CWUoBwg+NVzlNHBOvR4Cv10Tsex629e2pTlI+rAir5
	 cvyn/9Ij9miXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B695DC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001063373.26609.4895849482072983560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6fe48f57ef784eb9283debdd21e01fbc28b4e23f23812a135c79af5948ba53
Date: Mon, 21 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790010633
