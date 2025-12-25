Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3772E7165
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766662434; cv=none; b=gvAhEU3dIt8nowaKgUS9L/TZEsipPNSR6y3KBdBXKlGfsqEoAxqEJg6YRQcqgU+uHAORYKespU+b88sts2L9GuVIwjoPbH7zNSmKIVK9CN8i6J/wl1ZqBpOj26G+rMwLWA3Wa974YO1lgAI93yMOoiKhCsJPtiY5Bmn7opGjAW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766662434; c=relaxed/simple;
	bh=2wxQbWyV3VN8zZOWVpLt5EvheJ3Bg3eVOD74Gu8xGxk=;
	h=To:Subject:From:Message-Id:Date; b=OPEa7f+9IMywMhRMpqjHMQoYA7pUHRi61fd1nplSCqGEFA0bExtPhRcpHRcu1p9Bk7YMXRown2dZCoFs84n88V4DNceanUClO5iQcjsAGXDlvPEEiC8n0gY3+kHppoQm2+84d8o5F0gczkamnlvgxmMdVj6+ZvNNy5egFiGvds8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhpP2y/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhpP2y/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A594EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766662433;
	bh=2wxQbWyV3VN8zZOWVpLt5EvheJ3Bg3eVOD74Gu8xGxk=;
	h=To:Subject:From:Date:From;
	b=fhpP2y/2hHF7wVm0Jxl4Fi9Dhx1xFUkFtevuJ+G8UOO6KpRJZrpR04nQ057vkZvEr
	 rH76bl28ggyzextx3kCTU8F1PxCNc5T3vxXZ7TA/QxIm8PZoeXJuZeyXcsIQHAc+8e
	 KHUtv8zRRbXkZ+3a3Re7jdicbK7HnNZjEq2nAOLT5BicASl28ZuFEo5gyzsixa8clB
	 Ul7qroVwR2Ga2ER/oDYim3zsFiGwlvQUiBL2bADTzUDYSZ//FXr1Dl6gH5XLqaZIXe
	 7lgluSebsRKy+Ytp8CPC3iLhCU1zYFpOBxgG4QhfJOTG3MKbgbAs/mIOvhgUgolFAe
	 +DD+oeNMNDLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460CE7AD49
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666243357.28393.5699507473505378423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a2f3ea1bd169fc64f96cf0088445c8a784a2193f7acf56342a960e72fe1a49
Date: Thu, 25 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766662433
