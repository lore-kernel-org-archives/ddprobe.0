Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CFC2417C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752794993; cv=none; b=nTC6MND6vQRRZDg0/ti2q4NTkzHohMVl8WIYrsnYnZ9UUsyBnbCGNVfvk6cP4U6K4GO6sqvtjjcHXVzF7TV6SYtp0xxeDbU2kzda1qualG/2UnUC/82YKtKew6/QAP0ehJNmZSp0CSTbXKhtH98y/hVvxkExAFPBZtSN706vw3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752794993; c=relaxed/simple;
	bh=Ax0ZJhnCC+rxSsUkr0fAAzIKHHkIXw/Q+SyxfvFL7Jk=;
	h=To:Subject:From:Message-Id:Date; b=b31WK4tqrNsFwGwynCwg40Sl2rhqcUk2k4P8PZ8NfmjzZ0G072vs9rNmiKyBYfxyHtqO02KhaPZKDHithk+B2zk8QM/KXZkmEt2+27770iCu0EEMAoncWFNvzXNYYV/Fpl3IUopaIh4Dx6LmN+673dEfGR/LrSv83ImITRoK0i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWl40UfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWl40UfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA439C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752794993;
	bh=Ax0ZJhnCC+rxSsUkr0fAAzIKHHkIXw/Q+SyxfvFL7Jk=;
	h=To:Subject:From:Date:From;
	b=HWl40UfTZ4xawO4wQiEkGBkz77MoHKe5/y/y17N+eeQxsyTYFuSil3mCSiJqJ4zcQ
	 MHB85TFVJi44SmAU2lLaZULFsncg91DaY3PSr1r9tgm/7CcKh+nMjGzj8btT6c882+
	 vRUTfE7OZnRyE54IDCe3n9fPwVG5j7r38w/E6tBf37cTkFp4MaNuLzg9/FperLDKzo
	 CFC7xt+wcmrl6FA7Y0mtXjVTf0YfYOQ3Vsz2vU9c/wkMMIbVoD/3JfXKvnDFbpYDWv
	 FP9FITsJ8Agvz6js3ZjRHOIZ6GcKmW3j843zmHZZRpmAKRnpsWe8OnYT2vl9EmzrKa
	 dcOCxJxbhMB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D93C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279499361.550.3381791540716119975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71070eff5d600a254b059afa9525d45fbf4ac2c9da68bdfed53c570d2217985b
Date: Thu, 17 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752794993
