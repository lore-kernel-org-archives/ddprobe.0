Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2851D1302
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732034154; cv=none; b=baQ1AQA/JpPodnQtXrxk6eovyvXKxAQMzz3/l4AG9almOrccjmrIqI75v5EMMN0G6ZCrIh7gqQwo4uUsg1mdpJavDPSDaq4R2Yi6YXkNAnDFkb9zAXcMoV4DjM8xe4Zl/i3dO8TUHjUDJCNRlXmnYJguuu070kAOwgyfuFXGS8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732034154; c=relaxed/simple;
	bh=ES+W505qyc6MgVqRlz7OAxFP/f6t9GiN6OztK5YpVbc=;
	h=To:Subject:From:Message-Id:Date; b=ViebFsnDy3aQ+W3jae4YTgtX+6J/MVnYY0AKz9XH49p105lVsC4MIKyZUAVe0hdUIe+srkE90p9YC/R1h+fuW3VozS+05neqpqB5s14WRs4RN5zetBDG+Er22zxdkOIeBnKH6qkFUcogkE6YLFpptDoQ/v9YTVCl25Yds9/GBgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3DOryjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3DOryjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF7C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732034153;
	bh=ES+W505qyc6MgVqRlz7OAxFP/f6t9GiN6OztK5YpVbc=;
	h=To:Subject:From:Date:From;
	b=T3DOryjnWfMKVBZdz5V5yDbdSfkSt9vmTIINZHVcVF6gfnHr8xczTTOCPkDbfmlql
	 6o/3zQKkSWARp9IvfWSDDkJ/8/XA7k8txC/cBKVxCc3rzih9beivyjxW6ZeDQwH1GI
	 ZaqZ0dp7YdH4I33Yn2TOQnemgmiT5fNlpg6PrMH8ehfUoMxIWFAmZHf8n+/ntQ4/a+
	 Kymc88pGjPRSwCtiZU9x9uhqyx+ZdFn4D+1+DRgbrAzu9J7sTUUkGvDaNFOO3ItlQG
	 vwuePDBYo8oJKhpBYoUe7h7Vty678DlrybTpuHhr01QaWtijPAn4C5iLN43M0cuJhj
	 Qz683Kde1fSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91017D591A5
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203415358.24887.18322083429338790287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448a6766654f201e5255dea3abfa135ee00398d812f062e774d9283714a60df3
Date: Tue, 19 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732034153
