Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEDA1E535
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718942543; cv=none; b=qkymr3IzC11YI3DLHUItvn2FnO6hPyAfva9NM9OnzEQ15W7yCPTrPr/WQIHFdoxrZKOwWtQlbWTp5k4HLDFsE7ebVcfsKwdWv6mBRSwHlyls8FkixeXEhuxNOjmnNKxlvMh+kb9TO6tnNRCjwrB8LRv8fsRQQsfOsd/1iqHGPck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718942543; c=relaxed/simple;
	bh=5GyZT45EeEvSOJZQjwuammMiES/knyKFtJOMXHuV49o=;
	h=To:Subject:From:Message-Id:Date; b=pyGWtmGscaNL68zdOxwvQJ2zOKEnjUcnZ5xEg6FnALpHrvSPRvE9pkidHBt1+NrxywsrEzrmLBMpc5r0vJABrSKQ1zW8Xbr5fa8LNMhIAubvP2AS7SF3uVUT5YpbQgagCHd4q75nsn7GgruuLqSqPufJ5K0/yUBnsgV6mSf60bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEuKnAOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEuKnAOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0253C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718942542;
	bh=5GyZT45EeEvSOJZQjwuammMiES/knyKFtJOMXHuV49o=;
	h=To:Subject:From:Date:From;
	b=gEuKnAOoI9+437zI/n/a6BRChQc1N1IH/0d+oXomj82IxXNYnBHLJlTgDqC+PGY7u
	 ZZZWWbj3c3YiwX52tiM+9BtlzrVpDJtEmT9IjjfPLhwvAmf7+YC1ixMkDJ2is6eygu
	 6yEnHeKWXLMp0rTFv/7ocnEtV9QJUq288qNBCnqIAYbSCF4aganKD6sz9k4ecwTgBU
	 XpOenwqht9QSYmL7/qWLJ1lvRueVQ9e8q2uMqrXY3nd++nATWte8WgKSVrFpmNnJcN
	 MbexshRizqN0LzyB4F6mc/G4TUn1YVSBIObZ819Cu+BHAqJ33xLut3gFEiiG9re/9r
	 WZl+CVsub6hfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EF7C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894254280.11126.13930701208365552507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec9f8095373e7eb0b06b5780fb12a3b7c8105baea59d6588672802a11e60226
Date: Fri, 21 Jun 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718942542
