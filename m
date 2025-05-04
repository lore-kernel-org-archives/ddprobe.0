Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF375680
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746320394; cv=none; b=n6Snuzo9KwpIUWezZwhc/YR98nPIzCPLJm60IjguowIWOiJzxzVqP89dKCgySdm1HzNOxlWTmFfv+4J9rPloBLnCKBjH7MpkvUDgh2RQuqsEFo5ApFuXiYYxiKuSbzSAQV0h6Q/Kf9kP3DVMj0r7Gy8lABnmGhijFITnIbadXog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746320394; c=relaxed/simple;
	bh=cxGUPcD/p8IoEdmxGS/t/DfFDQmCxZnCbc49OUm0gBo=;
	h=To:Subject:From:Message-Id:Date; b=LWrRfS8ELU9qVjPRYPMtfacNSLq+u1k/G93rzfN+vH7b4haOhZq31Y5U5v/+hPW8il3p14+2RsEBVgBrHgyd6ISpI5T1yYuWRxYBg49aKfggSiVQTKgqqQaezu4tLmbDJHZj7BqfjczrJnNkyHIutyDkAq7DazmziAvramB7hnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUlJo1bC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUlJo1bC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A67C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746320393;
	bh=cxGUPcD/p8IoEdmxGS/t/DfFDQmCxZnCbc49OUm0gBo=;
	h=To:Subject:From:Date:From;
	b=hUlJo1bC3pIcM+QsjbM2GUsTJ4qwVKcxpoZB9H6bAwqzvP1419gljGdLusndxbuwP
	 3wTF1tl7BHpRZZxvTyHLQTd/RCSvttDvGfA2p5WiGIm97e7Cbepx8etRU2pjiZeH10
	 DMr2Og7lsDqhEczyGV/yMbTP+YXF6DYFG+Vd1nAbvCKXkHEtk6gkkxt3hiY2EOjIw5
	 SO0h8fO4mBCxE7YdK7TfnhZ8D8Gmw2NZ/XiGvunnNNDSoRIfw5VEjTtlm27b2qWAGY
	 BJgWx8omSMGprhHNJLMEhJhtNZzgWsUXgWUMMPhJvcfGCg33UwZmZzNagypUfMS7zL
	 QSho2vADI9F5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F9C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632039357.27831.2520724790194665279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c383d3f936d1882c092090a333d88a480dae69a7a713586d75e0b6f0f3903bb6
Date: Sun, 04 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746320393
