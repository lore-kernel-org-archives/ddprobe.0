Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E27082A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736222754; cv=none; b=LClgLg2YJCg67KJEI73nKpA3ZjZO8ExSmLrN40zLWNEu0b73JaBandct+HcVIeH91DflZ7GlF6s7XEDcDJlLGJ3MzBX/zEH2GsFyV9qSyxwybVUC12R0hZL7S3lLPoeJYq0cR9odzbiV2XBOpZJmaZcpvwF0u15lcj6gJvN8Lgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736222754; c=relaxed/simple;
	bh=fvLmV1v2woBLzhFPKonCBMQK4+25IpmSXxKmXM6s+Xc=;
	h=To:Subject:From:Message-Id:Date; b=LTANjXacerTk05b2j3zwpmKvHYKUTfJPJSR9LjtbNo9yJlJuXMOCzoYuvXRMuCn7pfMpbwQ1NZd5ewRIkQQQxtvsGWUSjZo5X5Bz/Oz1PdHyqWQ0wQr0TiOmbSEfccjLQdeaEsJO/d8yxf3GDKC6AJrPnwR0OxCuhAOUse5Rnfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXozJixk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXozJixk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5220C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736222753;
	bh=fvLmV1v2woBLzhFPKonCBMQK4+25IpmSXxKmXM6s+Xc=;
	h=To:Subject:From:Date:From;
	b=aXozJixkz7TYO7Vo6JuSMmwDav0FFF+U/p6SGGLKJ3Vy97vEkQTQb57Lr1XWHQ+S7
	 OJGkzYv54yHCkrrPN29LdaWi6oGDp8l6YULY8Ay22nJWDsezgkBAPxDnHti/GrUls7
	 JIEYrZmSkTbq3moWz1PMDQsJt722NFE+fWKFvisW5/6On55r+7ncAMP4kDOsAaQKjl
	 McaFYU8eKXUfjpDBuDeubk89hUryM+cQQRTCZMdZcn8mOSHA5jGEnSVVkuU1/IU2JG
	 aa4+iCINMp0FzB6+Xe+M856vVRTqRaqShmQPhkj+uIkMqW4s07I0Dsli1S7iZfcr32
	 B7Y+3p4AAFzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A54E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622275359.32390.1485618609112229232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812e4275599dac2d606ebc63193b84a9d03864da6c17429087f77726d4d66360
Date: Tue, 07 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736222753
