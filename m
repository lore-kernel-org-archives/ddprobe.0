Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5975556B7C
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714644743; cv=none; b=XwR+43RqxdqyIRmbw6YWnArAiC98BQkku8eVeDQpW9TY1SijQt+0Io/EnovhHtc2f0GCPrcFMSRLhxEyEyO4/kLj9s9giwzUKENbFaVbG+19qRl/tkUkaFTYamjzcTHEsNIwAYaR60trhT3qanEDQgQb0NC78uCRj1q4CCv8V20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714644743; c=relaxed/simple;
	bh=6UZ8/BrcZ+1BcxWGtJM9Tr1bZukW5D4oMN6A12uApqc=;
	h=To:Subject:From:Message-Id:Date; b=pCJIg6gNQELI8j8qcKFV3vNq5St/c6aeGOZYVXMcmX2Sg6v5P3bGuVZExAOgVzXZ2YlBzkghWwZlLLtpSYEgA5aFwVDtQR/GFkd53Z1RYOK8jZ03U6t0gfM+5tRUJbVN78K0ufh4hVaAzldjwaaEd/hxO6574h1ObgXAI63PfDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/IMW14g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/IMW14g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D293CC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714644742;
	bh=6UZ8/BrcZ+1BcxWGtJM9Tr1bZukW5D4oMN6A12uApqc=;
	h=To:Subject:From:Date:From;
	b=q/IMW14gfmuWnQfVqMoKabLbfd6hcSL8bsd/jkAtXMz3x83mk8v1N2rIJGecOFx/Y
	 /zvLVNpBBHFxnyhucEFVuhLPsq3hcmybhk4Md2Y4yfU3WPyHmEneI2B19zVBXPJaJb
	 Q2bCvgBmhMMfX5lIlQwSH/td0pVCjIwAQVPtqIgw47ydkeLH8ZagBdW0q5/ZFzimf8
	 WTHzQJZ3UZhfwinKF1cAbU9Ml1kOCfry9OlwdtFm/jZPHeQVa0+LQoIygAXAT80cm2
	 DjaF3K6g2feA7lkkaNoRNBZNHF70uy53ELKC8TDPE/9T83gmnIQ91FWPU1R8ZHNL7+
	 vYpo80vQVdBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37FDC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464474279.31667.14660180213113083401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f9519a22004e733de4c06997e02048b0efe732cc8123d708bcd7a8249ecde1
Date: Thu, 02 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714644742
