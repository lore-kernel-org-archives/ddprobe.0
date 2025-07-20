Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146C314F98
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753003194; cv=none; b=PHiY2sb3VkuLTfP2qwu1yfaj6wkOOQUNuDlZyZfZPiyVLQn3RS1luDOJ/gvDLvDLI+R7/H9lYRhpK2WoM8YF+xbqSoukCZ+SElozfldWfwzLX780eTAnV7Za2KS9n/mdzxpYKrUxsvB5BHyEAsA8gWYt5w0MukMKHanX0i13vmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753003194; c=relaxed/simple;
	bh=IhY97Q+4uiO2IyY9oufSoV2kBXouzbtG53+hTtNyPo0=;
	h=To:Subject:From:Message-Id:Date; b=JakSpk5UAGxg0ZPuis2NopZTfrL0wQaCGshCh4WcsGR6DojV1S178j6rU3P/6uzV+E5h5ZnUldSpbuIw9+Vy0u6OR9HU5jNXivAKC2dRqQmWLKb8+6cWHXAEq5QPnd+ax3HYyJxc+BUhn47Fbi32nYNp3XJNUbUl/3ACyUg7y6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkOtw3Gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkOtw3Gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2715C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753003193;
	bh=IhY97Q+4uiO2IyY9oufSoV2kBXouzbtG53+hTtNyPo0=;
	h=To:Subject:From:Date:From;
	b=TkOtw3Gk+SFjS4IKoAC5F0aR8exmh6pyuDzJVkgfbOrU9b7xxG6LmjniWLC+PPNZ+
	 NVrMEo2YOWGMGPcmTg6U79sOGYZmfUEbc72ZIjo+CuVJWqJ4YmG1XzVae3SVc/HLqv
	 0Yp3nSyBDTZz1mrYmNTpOpUuMDorkwT8y01h9WRFE8G/POvq6kcRqGEvLOWFb0eoaw
	 oDN2WhascKDnk65FfR+j2N/NiKnIVjIj/taM0YErvlZ0/rbLpH59iLSNb9ogpAZvXU
	 R63HspVtN6vwNkCuFASi2GnIxbw1nb7jcxz3gAfFSCvX8JMNxA+UXH+rNjV1dCf7Sb
	 2gkOdF/LLUajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B6C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300319357.12636.15204817240548983512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be472b5008f1decf99927e028fad941c20d32153cb126ef2bf994b36bb869356
Date: Sun, 20 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753003193
