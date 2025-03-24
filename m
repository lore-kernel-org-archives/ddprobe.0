Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3F18DB13
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742800195; cv=none; b=cC/qNwkGDl6/SVo7lhe+Zc3ZY41uYiuexbGMtUbxt/mZ6k0Ud1JMkvP+OmfVmIR/eKkysIzzP/yFFVUiYRBW6RsEdGPZLGJ+K4r//xeqPqekCiFdc230SZA7vRI2/4mhf/1eqQIKv+SC9SpHNWHc7e3MhbWOZdjAz0Kk5HmMtz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742800195; c=relaxed/simple;
	bh=dLsaLniLoasRgckS36Nvl5yqivIRvLj1GxY7MgOEAnE=;
	h=To:Subject:From:Message-Id:Date; b=sStTbXYqt+l3YfUUC8LNLQA6LWercQr0FkDeuVkr8MO1C8oR24d2CPebk240yt7VJF0HSEO5e+uQ3wT91dc3zIFYqpm6RkMQoO9i4cuNII2MMprq4krgKn6vNs3DvQreA5glVVsRbL8EKpCEgW39Lpd5y7o3/mx/+VwJI8crxPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIt5HkqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIt5HkqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A751CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742800193;
	bh=dLsaLniLoasRgckS36Nvl5yqivIRvLj1GxY7MgOEAnE=;
	h=To:Subject:From:Date:From;
	b=fIt5HkqJlHynV/42KTMqtJf2H/l8uppTxWrmguBKsMqvbpncf/YeolZxQoCg8TvVw
	 7bT7SW7kx4XVODbm5NS+lO/ZWdIV+jrwaIBMQFpOUmWfmIwMk+fWfKYohoETntMUr0
	 70Wx4LFabeJ2xGQDFSmSS6yiJ+GPVLAJVfqQiNUlKP6Ze4wv+Xk1bb9qEUgjIGsts8
	 TjEfwNbNhy0ZQjHiOqfbWZfJbefwlAtAn42WbFmS0vU9hMDfZGwPLup9by55xELJEK
	 9TtnA83Q9G+lD4OxDGVLp8sWH9vcg3r2hyHWbky3Spa7YAjrZ+NwG3s0m6DBzY2MMT
	 mv4ICA5EbUzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F16C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280019358.11363.5633555704365645038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0e2fc4fe094dcdc6fb302b6a73dac915f541ff691114d120367213763b4af9
Date: Mon, 24 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742800193
