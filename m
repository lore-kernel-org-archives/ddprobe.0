Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F92163
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772928294; cv=none; b=CyqXCFJSkQSgBTMEepmxILBn61a8UGt5QP4Km9r1c4XRgsJuhMLVfOH469vAb88x5dKSmA48UMlFzCeZZUtDmNxuOVFlCuS+tzfZYnVq0KgwdnrSov7rW5vA5R3dDXmFYosWFG/esSItTxhN0u6OHSkcaqyd0F3wY9Yoshm6C1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772928294; c=relaxed/simple;
	bh=88+9W32yi8NLV7cQHWvGQ6IXxBf5Y+oMvu1K9Ms180g=;
	h=To:Subject:From:Message-Id:Date; b=Z2Qd39qZvRDs1rDf+WHRZRR0+DDKnMmsJK9f/7XySFHygoUfQ2/NARAFB5nl2Df30HbwF2RGDaZYO8lPC7gIRgxFdI7vfvTzcJUIvAAwz6wEhQs/gJEO+I55lRbtyoo/aN3B4QSqFx0W24sQ6QJtZFg8+LNkaSGmeAmXHm7/7jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVtgI2Gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVtgI2Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6676C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772928293;
	bh=88+9W32yi8NLV7cQHWvGQ6IXxBf5Y+oMvu1K9Ms180g=;
	h=To:Subject:From:Date:From;
	b=fVtgI2GwtZtBgkhB2XaVVheO7lkALGPTxyXQceGXyuXH5nmORbnimJbH13UI96eR8
	 U17zQBFW+nvv8rUDuKHgl8LfPZfO0tXtXoOrrsxvmDcF8/K+esCYl8BfIhl7X83+07
	 WPNytD728ZUZNnPR/Axn6gERq6D18LBrzozRcAFuWbIMD7FNbIrESd50h0Z3q2mgMr
	 6mLqmvNb9T2nYJ7mAE1eZA1XZOx8p9DHnB4uXzkKxkL9CMxXyQoyUSn5jAplgnZhgu
	 J0ghXuLoKN1fFkZo51MsbBM6XVhn5cj/lksDGlylKKtTmBXf99R3/baI0g3DwIwtpm
	 H+gIVOcN9uMIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95085F55113
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292829357.13693.736949982727798588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bda64cb7b1eefe7788285e5dbd93bece6f3d95e9db0563e7be23013d8bfc72
Date: Sun, 08 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772928293
