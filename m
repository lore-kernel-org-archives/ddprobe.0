Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412B723AB98
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765565574; cv=none; b=sv6nzmD3orYhocZnstjP/Y6hwajX0gBtWA25dmWtmsuDx4dGvYC1voby+dAGsbFV5kQzMB1tA54FFtcEHIq5wbJnfo134u2MRegBXJ23IJrA2K1vxIGvD9UuwDgvUgAXstUIH9YFsrC4SygrYXtV9B7cxcTeOnNKIUUVHlQvhm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765565574; c=relaxed/simple;
	bh=20sCMrTKXsdKROnf1lPFVn9I5CIoeULQA28FfN2GbR8=;
	h=To:Subject:From:Message-Id:Date; b=NHhg4ibQu+vT8INmWmzLhWJaELRSokige040cHPsZ1Q6Bf1T96JVmwk4GRZVMBy3Eu1b4ZbxICPkZY2PJ+Xs/gOsnwWs1JZdJO0eHGTUv/EPmHFwQ/TrFd+Il58PteAkxST+TY3RVoPL0JYY2ZsHmTkjpi8MO8TZE/rw8TSb6EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+mJKNfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+mJKNfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4549C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765565573;
	bh=20sCMrTKXsdKROnf1lPFVn9I5CIoeULQA28FfN2GbR8=;
	h=To:Subject:From:Date:From;
	b=P+mJKNfakSqd7YzbLLDzPy7kMHQ3xUf8jk3zZCLzuESwlKPAOvzvijPuunhlrjTeX
	 nJgeL/SeEy6grpfUk3gY2DYJLePqDiEPjyigVP9HcIosSaJkixEtgpZhH7dYAISSNS
	 iuwcAd/H94v8P/AzXydmoEPLnWuftow1K1SNEgy8uo4cuqaHPsb+/3nxEJeeMQdGB3
	 gSzMf7jwNSof/FdB0dmFMRQMnsEMYFaDuaijkZ/Iegve1iwhf/5ZCmplp+WET/oiHQ
	 A2yEyE7FwrviRa7uHKG4276v3B2hElKyNchQSyfuaBr1K8d7Eb1jJ1G4r0NJnZDOwl
	 yoVrQy0iqApcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5ACD4921E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556557359.26480.2877088575171669648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0f0a71eacfc90ab90327d43bdefa6202abf79517372f5282b889ab98dbcd7d
Date: Fri, 12 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765565573
