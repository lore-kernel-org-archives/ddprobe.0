Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6022E17C77
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739849934; cv=none; b=Jm6ByOkwgz67sm5+X9XaCybVbLBt6L4bEto1P8tB0rb6HVYYS4Ww1+YU6tbtiosDytrgNOAsXnLSDyggZLelP2t5+0D2ljUW4uzFjqqqjfmu3vWRX4qup52ua4j1mWhVs9lA7y9SdsHSREkGe8D/RCqzsI/qNXps0w/0NlkS1hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739849934; c=relaxed/simple;
	bh=Pc1Aq1GcfGGzNEXFl+joJVnX4dM2o6sIt2I95OP1VTY=;
	h=To:Subject:From:Message-Id:Date; b=LYKXMtvlY4th9COGZGbgpS+5Do0STOoAD0V6LsTTgOBttCo1z1fM6URMowOXu3B6/uS18gktIRkzEWTaPaa8LfsXVgaZ3tHMwKykJovmLqz4Qms6yULVJP63bdVPHsGGWxiSmS7OSPCK22J3/uWNlLLY/HG6uS3CwksI7GQEer4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo12YMeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo12YMeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8878C4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739849933;
	bh=Pc1Aq1GcfGGzNEXFl+joJVnX4dM2o6sIt2I95OP1VTY=;
	h=To:Subject:From:Date:From;
	b=Xo12YMePfBtUdmnVNy0CHmePscmzJq6BY9s/ITzPrIrT9AQmB19g3er2fTteviMyY
	 pq3ZnVNcJcDqP9dL3e03raMvuStTs7TQZtF7AOcJA9h8D3dKYCUBww1X2StFrk3MPC
	 lz+y4VTuX/7v5SGBTNz1QwQaCA+1B/cUsk2ZU9xl5U5Jlr3VxzATtN0AxRturd92Rt
	 GU3H7tZB2aawXXNnTcCNDeWCKSOnNBe/gTdzPL3WZuAy+4pcSbl2oY8dP5yMIzTPVn
	 3wjPoM16HMsOitsR/P2U75M5K3NLDvw1l2EpSOKkv8e4u0/iJAAwEtrVr/6aekeUOO
	 RDUpecMDEuSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD11C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173984993365.28842.529392173425909524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be551f80b591bad00bcc823a11e7ccda6b6a68cdd697490b22518ad62d1525ee
Date: Tue, 18 Feb 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739849933
