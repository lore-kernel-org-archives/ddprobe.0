Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6B12C3272
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748922594; cv=none; b=IxRmtcMubRsDo3ke60QYZPSBJ8w6SZx3OgTQhG3jBDgRZgd5C7eBaVIPVd/UIdEtRKmF6M3OobnylQMDIqpSlS/niyHla4GTDJBSJ6xlvR+fXLQyHzuu1BPjub2qVdLmiWa5U7PBWFPn0VRM2w32r1YxtJbUnncgajukSBHKpwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748922594; c=relaxed/simple;
	bh=z8eBSGDrNWjw4CxaXIbmA0P+JmCJ64kbxUfo8dEcmGA=;
	h=To:Subject:From:Message-Id:Date; b=cPRlklEKm4i2sVPolPbi90f/9UNR8J2/kTKigAetsqu8Y7UcLLs/hvsDeLDfOh3Sy7yDlWOdKMwLyJveet21wfdHCX0Rl8B6Pjp+b1QwT8w7txYvJdECSndIWURT0YCDAibqXJ0ifRvw3M0QAKBjVsKE903qatCEwZsm7TtuXYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7AwowOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7AwowOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748922593;
	bh=z8eBSGDrNWjw4CxaXIbmA0P+JmCJ64kbxUfo8dEcmGA=;
	h=To:Subject:From:Date:From;
	b=S7AwowOJuDt2CcNN7+uGQxl0n9rARAwlTKufxkadfc+KHcWzO+O04jk9g6VShakrt
	 bj/xFbOlvGp8/jJr2VCkLuw5V0FPxhnoV8HUWV+yFlzb8kzea/asdGu7jwUdmYl4kN
	 fGOMhPtFCPHEnomSle+0AMGq32rnWrYC9MI4c8V2dfan69MvlBGNrvxZtx9MPjg7VZ
	 CTtV+u+wdIuhL80+yzRvDaErZzqg1OnsOmJNqrNtAD5aRdnbBh0Uxw5vRv5R9m6sCO
	 fVmiJB12YwTnwZ4ApmaUdopMTFHbmn8ohNgB+T1rNeJG+bhFwV25jWPbWdH0ly6rTf
	 r/DXq7eS1Mx6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6DC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892259357.2014.764337633432415458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7a167bc6e51bf6973b94f331168ed5d0c8ff9318f489e75610b2551bfbbf01
Date: Tue, 03 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748922593
