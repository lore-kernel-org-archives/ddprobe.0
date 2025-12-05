Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C78B261393
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764966174; cv=none; b=qtUwjUC3tg5CDIUB/XbJm4pxNW41Q33qUz0fftaMmo3b++uqgFzb1P17jHzshDv+5LXpcqkdfHD+JthMT4pnMjLdNcl7V4WuS0lU3i0gQ51IvVwFpik5qMVmTFrjb93CIZA4ouLKRyycpnTPtU4vHYHhT1VIEMaKfSK42YbdWDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764966174; c=relaxed/simple;
	bh=saLY5DJEw2EG1L8r07KvVVaAaah/p5n8itUfUy+l0ZY=;
	h=To:Subject:From:Message-Id:Date; b=lChd1DY0umvaehXu9VxjR+wTk8NWtnFrh3LKfFDQkLRj4PKhC6K7Q3XxeEUc4Ne8Bai47uJ6IWZp86iCMErQ/c8smKY+V6/8j8ecB7CuMJzBlNzvQZmBN4e1Sn8dciqBFhE35sTCMfZZSCcmKrM+u/uxIp4gSzATtQtZGk/o/Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daeeYJb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daeeYJb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A754FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764966173;
	bh=saLY5DJEw2EG1L8r07KvVVaAaah/p5n8itUfUy+l0ZY=;
	h=To:Subject:From:Date:From;
	b=daeeYJb0+tbEqNVxjXxSNf1bT+ZU1HIAfadqFUyg8tOEto+Yt014XlIsJB2j0TeEP
	 H4JVuOQktHyduKoAW2KYTC70m1XF+sU9HDpoYdkoE/CEUNylLz/pjTwSv1xbbVG52P
	 H5hOUs924IRubQDx0Qh6QhlR9RPCULpK81dLeh+x9hoB7AVmj/lcKU5/DVkLlECvcx
	 EGNawY/2SlT+T76OffQLYLMwazcdG5YLLD0Dwp0if7k1slYaXdLo5uJnQEy3cBUxW2
	 uqjiZeYeij/BscPMdk7VUMv/hQu3x8i2///0ZwYtUBRFRR1BJlwUiI7LJ5ffWdgQAF
	 9eAIrYPEFB5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E5D37497
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496617360.20041.4583232807059175961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01fe0d9402c12b3b65892492959d72ea91e7c692c14fa2272c9f7269dc411de
Date: Fri, 05 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764966173
