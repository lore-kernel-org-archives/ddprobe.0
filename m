Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA7B4A35
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745768394; cv=none; b=RTEdvt+w08/ygAhKuuzEXX+CO20+lKmJZ5M69iJGhW0vz3XUaMh5F2iwWa8zuYVr3/IGEyYqjs9iohAW9/VtHbWfSOJcfUbGyFcoHsSycfuxNOknx1AhPRcDq70PnzMJfETwtgRRW+CpTmK1jN8bzljQVCFramolK4y8KvptimE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745768394; c=relaxed/simple;
	bh=xcJ73yP/e68heo5htQWh6u1u/WC4A39djkSgu4X/8DY=;
	h=To:Subject:From:Message-Id:Date; b=fh9bNewTLCVGdxsMrSY9NoZJBqErQhfyRLu2TjMRm0st/QCtf4geOIK/+XZS/eTfZa/LiILAbRHoVyQigAViN49grF36W+beVroFYCMgfZSP8h3+FK35Z1FuwTqFIQuUE7s6YzVziUlrCLxnRNE94rFHAPDdqEoV99SzhwFipTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxomXwIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxomXwIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745768393;
	bh=xcJ73yP/e68heo5htQWh6u1u/WC4A39djkSgu4X/8DY=;
	h=To:Subject:From:Date:From;
	b=BxomXwIZOU0GCtOAA3b+2XCcz8Za+HvewZBwjWuq80PCaXUCctSlCZs2z5QNd9p3o
	 uJ0BD4shRyOWXVdEfGf/QQVlvggzHuwBUbAzkLymMc5lAlmcj/CWHBD9Pis4gDWuyY
	 nOhTMf/vFKGC1jknJfsNn+dxJHufWfZ5h4WRlEq6R9wG01RDRgrGoeZUo/cfitRuR+
	 TRJmsO5nD5lLGMSM1PQlys5kGXHnlGdR/tj58TyLLOU+Hw+dlcsX4SX2/Y59eSZGvH
	 YMJfS9b7LJF3gSGgO+rqttjp6MLOpaKa0ipJZ6G+5wNqSJov8ujFGk5K9ZocMoAcIm
	 T+65Im1aQ2HCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94519C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576839357.16443.3385573336442240655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c643227bacd15d06fd141aa72f20ebe377d86553356eee15735d63dda10d0e6
Date: Sun, 27 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745768393
