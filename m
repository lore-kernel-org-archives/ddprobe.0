Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF4E212550
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764485574; cv=none; b=Y5UeJNKCkV11mXppG2BJLBU8cl0CtyytPe8aeh8/CdXjy9yMgfi3A5NBv5VT6FP8FG8Q4WwzkIyI82kqJwga+gt/jFZIILuSE4vcLebdpW7POb2ULIshwGQLQunwSRNXJXk0Gv5Tep8c1gLwgquors7KGZq1uwPVsNkFTw9MB+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764485574; c=relaxed/simple;
	bh=Y+tx3QZFatyqpS1iHy2P/jOG0Tm4JE4GRS7xtCuAxOA=;
	h=To:Subject:From:Message-Id:Date; b=XkCOmBiqeNpC7IVGKkmhcHPX0BdMQcetgB+0jWHZRsmyCN5abTy/yZX9OWHufwbhAtzhcfUu42+Ul6Xv4CVmq2BpGberJlJJOPn9xy8sEeXEOM6cqgPP/4KduHCXpwDLQdJ1ySq82znhvVhUIKyQyAJihDYInKYSPRNghkPXd6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2HYGIyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2HYGIyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F15C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764485573;
	bh=Y+tx3QZFatyqpS1iHy2P/jOG0Tm4JE4GRS7xtCuAxOA=;
	h=To:Subject:From:Date:From;
	b=X2HYGIyuAb6bc5OA9xDXuCZ0WsQnlyYiCeaF9YWV72feD43E19VJZI/LEUfS/FUh8
	 0r3DqsijpSod/Dh4OQFmAZV2gK2Y0BpFrTiflyeFMdNmQHflJWmMU260xx9FFOgP6G
	 RqXs0LlqLmzk3bzd6Y6h0H5IP26zQmsP/4Ddr1j6LJLuV/OjlPIe6C+pKSusecI+p8
	 oqz2KsCjgXbRkeaidKjxYwuuu2XiNJyYNo0PfCy6MDd0+NQrj1Vq9OzuybeU84nCg4
	 e+n7aY8Gbpz6KKHlJrh2EA76ohjeCtCnZtdiG/3/heJh7r8+ZEP4bimdaO2Ma1Kpac
	 +3makk4sGWMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9AD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448557358.32113.8453815901412817074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b66839cc52bf05d3d75f8c77a295bcf5097cbae13e326a551cf7ff4022a1ec
Date: Sun, 30 Nov 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764485573
