Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455683FC3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743989394; cv=none; b=Gtft3SsAoTiBKXg4QltL8c6jK2Ggg/473lqGF498HuNlg5bJR/CH2Pxmuiwiuzf45ZvapWbGfWnExy+ju65nvyXU2rTPuBKu3F+HfPTVI5mBWItaU2xEUDhglTfGX+pRwTp29n7+AeXa8WDbKqUm6yfV/M6yBAd10nu2mjq0jEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743989394; c=relaxed/simple;
	bh=wCKq/QY2pU1UvH+c7jGswfrckVZqpJ15NzwcgHFVE20=;
	h=To:Subject:From:Message-Id:Date; b=XRKKqWb0mIUzOVzyTmyiWQ8Y0jvrNQEuH0Groa3obYXwDE0ein36LOJ4iJYQelDKSNRrJckgBW/NT6CbyU910GgaadyMG1+zD3PBX/tM4zj6kx6Ht3QlFpmvSSlEKqI5zKIzRDXA1AJdC9yEaVTjxCb9Y0RNYELXDN0t3wHAvn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvtgQHyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvtgQHyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80FCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743989393;
	bh=wCKq/QY2pU1UvH+c7jGswfrckVZqpJ15NzwcgHFVE20=;
	h=To:Subject:From:Date:From;
	b=uvtgQHyV4G1blT1TL9GhD/hG2vA51apDGIloUEciDfU6yDTz3f1DIHd5W79l317oB
	 CDA8pwMvq3FaceIJvjnUpUDTvePICqKK/01YF+GiuYL4lwExdo7bOOO+Xk32Ou9dOB
	 BHN8WmHgrDdNCiUOypX+wQFi8rnrYYXjyeQCnNXGkh6OZZqYBdNFRqWAKA04F0Q10Y
	 eBLAvl0rnE1GRTFgwCafNVEBkfe7Gl408+ZE5rihVlLww0hU8plFME7+5i7qcb4+N/
	 mYcnLMwSaQVdr42+FeiVQAUPAKEV0XrvFHgaH/DFX3QNLNaR9p5iInkwACXVEgtC7X
	 3zgMeBJ6FvO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A228C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398939360.9904.2504986176380171764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a80d101bd4dfe06209190102f173061b033f0b7c72d7d68fee7395f8501ca00
Date: Mon, 07 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743989393
