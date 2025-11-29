Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8C33B2A0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764385374; cv=none; b=TFp3+xLrDyKzdCyo0HJNRafQrRCx8bNJuy2n5/V3q9X0cNFnXOSv8tclJGBTFgpHBsC1XbbVy+EcbWnAHW7GdP0nKX+xVSGRq/j7hWI4CRaYLlgBHAubLEE+1ivm0pAsWOwT9X5piSrjFkRyssnX/2qifSH0VEFPPjJ8XeD48Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764385374; c=relaxed/simple;
	bh=KnacuZFmR/lPqj/Jh62GS065MulN8n1GKvtx8cUmcLs=;
	h=To:Subject:From:Message-Id:Date; b=dW4YvSnpommqBqQ9Qh4Bk4s4wQKoBJ0zCSF4r5CIqknMgepR/GTvUraXcdrAUuE5KlAXiNm6Bw+pPluQlj2BI13BEoVtA5IXw+bSMzlPr9xyHF5uTT7mav1RyYbShOs4G/LL64dtEUkLK8v52SL40MrHv7ssZoaxL/zzjH9r22w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c70Ayehp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c70Ayehp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764385373;
	bh=KnacuZFmR/lPqj/Jh62GS065MulN8n1GKvtx8cUmcLs=;
	h=To:Subject:From:Date:From;
	b=c70AyehpIJMmcvRfPG4BfrZyCdbyhymB5YoFMMKimwzmsuslcG//NLMkKi3gQcNBe
	 AbnsnC4OLILGq601xshwaISBi8uzCG0AG9hhH/RaQp6XX6X6z67O/isTjJgtFr5g48
	 po49j90XzBBXVx6yf+1DzSSVLTNI/gHB5MnZbRrXjVt6vOr9/PBCXKqMRSMCtjHG9E
	 KkNJpRpiucnfa4cpt7obyfH6VNrlDilJEX9/yCUDR+GaCd1c7gEpJOWinJi/QMor2E
	 KDUru36UT+j0Jttx5udd80DRvfLaYqPWtzk5YKlRXAFfs7GCV9N75GJxkMIz5Ld3KF
	 M0kGIrkezEqgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C4D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438537358.5766.9173804639781718770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02ce9d6e178e69b608b9048f1d60a39756a4650b2fa1d87d9c9e94a1901cd40
Date: Sat, 29 Nov 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764385373
