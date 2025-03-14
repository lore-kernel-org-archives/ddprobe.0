Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EBA20298D
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741966735; cv=none; b=ezEHZxgKQzC3ARtlsv+Rrlk0YbGL0bPiHBree4ixMd9I0VHNl7Ph4Mo33oSU0r/jHsSzhlE+tR/XuyarK9eOQNSCVLUoyH47k7LrOP1vVABjEoQkiLLqYqdqFUbs771SO5jqTxtsgSIGrfwRmzjGv/HLOhBAfUykFjbpIV98oQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741966735; c=relaxed/simple;
	bh=slnlTy2lJZAbVL7IVTw7QnTUuRBoCHYsnAMRX1wGM1o=;
	h=To:Subject:From:Message-Id:Date; b=fO1oepf5Al01o1n+vL7VFzilE0fM6/Yg3yr+kd+hmLjf+7nuo8KBwiBbbU5WSkpSjjraWkZkEZl6aZFHutGxwmSn1X0puZdfpiDk4Q2sSAMnvuqInjkjDkOAvp5Ahy4aLYQj5Y3j40f22TAbDKhUXmXMOpjaRTc0h/P4+UuKi6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fc79anyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fc79anyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBAEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741966733;
	bh=slnlTy2lJZAbVL7IVTw7QnTUuRBoCHYsnAMRX1wGM1o=;
	h=To:Subject:From:Date:From;
	b=fc79anyiNWrpHBJiX3rpQgfnWkOaGPAOddBSl+Qn7YHGMZF2kGVf92lYSeuBpnTa/
	 dLVrrTNYmxgE4x/BDOO8vBFHO8rnihqTbsKKzq9yC9Ew2COvjONf2ejW4LMMsFIzMI
	 h2CWTzuyO3xSg6R63fsYl8KW3vmYUvnslqfCSC3gCCXCiW0Iq3iWIhIReb7HZZVo0v
	 NueJ0dxziqOCOEHPklSqjKbjLuloz2/5X9xrsdAsXNYzxQD+81J+HHmeJBXS6+QuUa
	 Ptx59PT4/KFT3fmpaqreMDXW+ZrhOZeq4zm8+wjH4YOsVH2JH/KDlnQiqIceqK2HUs
	 +Ne5c7BZ4ySNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9368DC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196673359.7140.12386070177820300798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1083af5e17542cd02d3ab8ca23ef35cb30c45de707c132d3dd5426ff115f21a5
Date: Fri, 14 Mar 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741966733
