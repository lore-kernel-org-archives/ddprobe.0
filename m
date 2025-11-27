Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84E253F05
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764236574; cv=none; b=mCANUa44pCTepd4FXZGOffwPslP36OJ2Rhl2kYiF17LH6YYeLAkLVSAMSoJQAbrhIPq//DgwxApVHN8LeHp6NJ1cXwqWk24PquW8O7/adSWCUzWcsWG0vwqsA1LN7nx+E5nWcn9I7pqr2Kd10FQXpWlis3ZmBorEP7IB+hAa59A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764236574; c=relaxed/simple;
	bh=pw7mumiUiY8EYjTgYombT2zeKWrAAklSq+8cccISgo8=;
	h=To:Subject:From:Message-Id:Date; b=pGBx3HAoFMOtuVoUADB2dTQTSZJO2ojM7lJOkcHpmqFcz905+S0RQMv/WjblEGgN7LPJQ+8w7Cq6dauJ4vRfpZRy+MasV8Ni/1q5MdCfgdmQa/X1jaLCV6EzvjrzVkJhffApImPTmt5duGkbjixbVseckLbtvWQsSxuE5Hsts3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsQakZbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsQakZbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764236573;
	bh=pw7mumiUiY8EYjTgYombT2zeKWrAAklSq+8cccISgo8=;
	h=To:Subject:From:Date:From;
	b=AsQakZbGR+Q/lkaYLwfIecIexcxCuRYKHAPvVmxtpY5kdshvPtRhRfX1Rm6OM4iFI
	 jhDFP+dFmSZEyeX8e6SJxVRxnZPaWZZCNw1mDr397VJ8XkjrgLuqAjv+7L3bVqGhdE
	 ztbIDgrGjJ2YylfoC0HnSa88YzYKT6gSVto7aXb7YSwBXRXCypiXJG3CBxmjGuwvEG
	 l8m6UVgj/HXEYhvMLuReglWsKYFQGvMnY3/dUQMqCKiBuxhOl0W2nw74SmBN5zmgr5
	 w2+yfVK7XwxY4nmE+MZSD29XXqy1I1E6a+I173BwYH1EV+W6YWkrEr9C9AUb60jrPP
	 J8uK12SE4m+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFB6D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423657359.18697.8089667665223611783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc2c32ca3996e7dfe1226430317eab45ad4b8a51dde47dde540b3190bc00574
Date: Thu, 27 Nov 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764236573
