Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B4C263F34
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776209854; cv=none; b=JactpYXbOUeuUIGUy5W9TydRjUXhr3tc048EkA/m/kzvN+GMOPJZQqqV6c9l9n56Uoqhp0Ek7Doth09WS8nyx/6GuDBPAb5VuZL2tRzD6hA5LiOkP6vvA8/GUw98O8d6kUWMQLG3Ipnz+kVN8MEW6DeM51065ETpLMy2fW8fRNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776209854; c=relaxed/simple;
	bh=ww4KtaFobXluFzOHZ+G660V3r39/XWQU45OnGDc6/I4=;
	h=To:Subject:From:Message-Id:Date; b=MnBCzeox3JCmB4rnNwwb3OqEL66l/XNDPjgPsBdIQflah903N6vpxFIq1lXTITRMQndS/EPxALxVZ+jHEWYl4PNowB7Sb/dtFDsFkOC5qClGBqWjYLWFDB75rRzfLgKJn+vyN5ciZ6zol/C9Au7SrBMoRIQz0X7yJbBBD8FaDEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovG4PEfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovG4PEfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE18C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776209853;
	bh=ww4KtaFobXluFzOHZ+G660V3r39/XWQU45OnGDc6/I4=;
	h=To:Subject:From:Date:From;
	b=ovG4PEfMhetp2AcbZoe9nAqyxn0o6JhCvl5Wcy67KYm2GchzvWy2v8w9PCMndXRRs
	 Fc+ICBlExwsBu//foJBVPA4vaBYi7wfpFNQe9yUMkICYT5ZMlW9ds9plYDSRQUH3a1
	 wZBgFCf1WqepjsgbXjD5m09YmumKLfTM5t7QTaxdyHqJ3tFyPHk3eeCw8RQnuJDLVe
	 BQdH8n9rmb0roNoZMc8dr2o9DQ2RDi7kPtxfJXOGrzRG6BsIYn5SFCJImvmEmJhFgp
	 NBDb6/QZB7JVP/GnkOIyry8neRtXOp1WWE+n+ptIy7TAbY4HcBB9ZZm9+0nuCC6bdA
	 By4aXjX2rwbVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA97F9D0DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620985368.25254.5265657274309682062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de35703aeb861cecc7d22cdecaf646e267cf9ac9791d9f1e1f7e7f9fa3ceea10
Date: Tue, 14 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776209853
