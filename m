Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33096EAF9
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753512594; cv=none; b=B5FiJDz6hzJoalfrsB7l4HHn6dOJpEgcm/48+4PKur/QxsBN1em/l7ihHu6aYGJHFAJoJLPHzyvtdIVu6tdPhv7Pc6U3m8YQqnpoVckEhljq1qi8jLMhix4F5u+/RqQ/QEbpu4EdsQip7jg1hsAzPBCqOH+/uVkNeuwWZdzJdds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753512594; c=relaxed/simple;
	bh=C0zEPlHIg1QVZAtqnLKg+qv2e5QWZ2btzon0uIznZ34=;
	h=To:Subject:From:Message-Id:Date; b=m3du0NYKISfQYtpUkzKAaXuQB06R7/vambxF9iE2xQmfFFNpWOBVGhkrbeaEMv7lL0qHF9eWfEFl7qCXFe8fh8Ykigvm2lHviAi0bykIAPi4oJgZsQEBzQIHm02jCUskbqtzPGLLBH775OtvwZdPSePHHcl1hluhD+vEXxShQWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMct0TIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMct0TIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5706C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753512593;
	bh=C0zEPlHIg1QVZAtqnLKg+qv2e5QWZ2btzon0uIznZ34=;
	h=To:Subject:From:Date:From;
	b=FMct0TIjxdA+wvL46F8dHg9/6EuA3MCAcbGej0FbRbXckCSZ/usHuzvl2Pg6iHDh/
	 10cwN55/L2wKQS/LrlbV/IuAct4/SARZanm67Hq4N9zN1zLLUC1lgT6KgWLWL8/l8E
	 oYtolty5zbSi1CtqIFwPDUfMkPyh2NIjdjXSwkSFVvlasxS9Kts54g4nfmPXm+V0VF
	 jDbR9adzzIiXkBNs0G30W3wSl0VhjqeL7H8CogyIJJCVALLImTwUxtcrZh3JwMSYTc
	 bPBeqV5s6RltVgChVODA5UYMLjWi9neDFa9UdfFlirziVn8UDbA2vosin5pCFl1N1b
	 bx3P0fIftNibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C1C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351259357.13518.13437423133099076497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1137000534daea8619b1579c580f1cd3873e94e5ea88ce5a9b35a32e56590318
Date: Sat, 26 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753512593
