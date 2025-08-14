Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD3B22425B
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755184194; cv=none; b=YijB/gcXpMOoQwVOFSvx9dgQPS8x1FkfPsF1oT//XgdMoz4/5Wm3Q2JbrREYXJ/eUvy2+gPlNSfQ1Q9e2foTaVlrj+Dc9CJU+Ix2LjAjuvIAbvEvXnbSoWju3j6CU8ReR1Px8uObcCExlBOhMbpKo32q0LErEqwCgoK9oYK8g+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755184194; c=relaxed/simple;
	bh=pL/Lcid5amZDLmuEhELXuJx2S2I4L3V+7FfGhXyM/bs=;
	h=To:Subject:From:Message-Id:Date; b=BV1kdCIzUmfbTLNq5PG14Cv8SR848R+DWyB2xY3iMy0Bng7NEluv9b+LQwvlKApsVQpjWGHA0BQY3NTIk1cpYcvfv+NPR8Y1TCAC2HViaGkfMmhjjTn7mGKNI8AQfaz7LR5o7SUQqi+7/CJcUYoZZSs0ETNwamdNlr7EcY41WtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsUhq4VQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsUhq4VQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E38EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755184193;
	bh=pL/Lcid5amZDLmuEhELXuJx2S2I4L3V+7FfGhXyM/bs=;
	h=To:Subject:From:Date:From;
	b=MsUhq4VQua2XmOqRlfhL5qe7i94p3j5ESeWOeMH7JxgZiVjgUgQSy6LOb2NZREGqk
	 b+mDJ+BpuQ46TM14U+ivhK2NgPBfBC8mF5c+BxmMOMRylYUsPe5Xz1RFk4ZetE7gKS
	 NEGwpr+oArK/KdhiM0j4BKho3h/k4n2NHAXsfCjTAbwnkWdBxKQIW93QtYQLtIrfzZ
	 TIMSFrH8wICDN7DRo11dymegQqPmAVMaKZUyFyvW99f30Kh6vG0O0YwmD8eXsEDw45
	 bRG10WEZy4PipDVVPobSAsDPKQb45DaBPpAvWBVfllzbxaQ5M77CcZNYTMW95FdGz3
	 TdpLPp2D1nPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90032CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518419358.24073.5318723314915246614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21dd3854f86263fbaaa65ae16f4bf38d635ae3456bf83062daf62a9752e1214a
Date: Thu, 14 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755184193
