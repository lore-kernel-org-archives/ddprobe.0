Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5C61F9EDC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732730154; cv=none; b=gYDUKuLl1BXZJaDt4a3rJsB3QTeqjtj+M19jflzDbCOQLUs3PRYs3XJM09P0o/26p8vH0ljof5zRXgar75jXQAvhHloPJO5juPTQDLhPf3AEk2Y4i9v3Ds+CsADCVa5vQzU43SoELBCUxQt2u+Xa7CIzC5qFj/X/1hEnKqgtaMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732730154; c=relaxed/simple;
	bh=/1u871Sjs634ZuzMJyGoyo0+a6tQ7rMzMOnRutY6h44=;
	h=To:Subject:From:Message-Id:Date; b=kmZQsfMTpHKkrJP4eFlfk0ykrirFGLoi1dzN81HpWTrqAvANfzGhPF4ge7NOI/HJ/shuuwnP0isHonFACYQhj6Fjg09vPGf2CsOedBUJkba9zcpHoelnTJ7I/0Y4of4InU6RqJs3qt2t5Lh4FAuR/6SjrLjc0M0ArLVz0ifxQRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+KPz0ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+KPz0ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DAAC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732730153;
	bh=/1u871Sjs634ZuzMJyGoyo0+a6tQ7rMzMOnRutY6h44=;
	h=To:Subject:From:Date:From;
	b=Z+KPz0agJPt02rQhRnZc+0h3IgVrK7resnKmV3rnadvYjG8j5+eIMNG3FdfOb+kkO
	 HBTwEc5aDoZXGoA5A+p1vBPHvCToC6PpuLM/QWHdxQyzfxvV5cZ06kaaEYT1eOG1Vf
	 AeqUGx9SsRtvI3wm0yF7xxDaHm5FDyO2Hxc9E/2yh9tbvE4Q0x1iJaxwr5KXJPZXKh
	 yqR45+braextUncCcksZ2/+y2oGs6lNeBZUkkppVWQ9EJfS/2+xG8/QyI06uRcoeD0
	 Uv4VZ2J+xSKoLhSOZboBYa3kX/WWwTzp6lcPSqweSsh8U3XEn3+w17H52OywjmzbUd
	 2onDFxvdgchjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9624AD6ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273015360.20437.12814408615237806493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ea7883d5ba1e626fab04e6d4102bd1e23388eb1a24e3aae6fb22396d09e575
Date: Wed, 27 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732730153
