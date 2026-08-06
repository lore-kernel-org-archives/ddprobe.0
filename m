Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3834494801
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786045835; cv=none; b=HDoQFuUyy59+fjpalEly64hvjF2vLdalu8GHPjY2oPzltHFeqVfxTdQ88MkzK4ngIQrmFvBdEY0OZYUKCbXHZHw8KLGnXqri/ARkQmkbyAUJ1gEv363lS/gP/5JNlTnz+yJI+heNXKSodigPYbxMk5N47KSYR0MGjGMq7XMZFLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786045835; c=relaxed/simple;
	bh=PZ0e9JQxs6wtfD/IpvL732hYIuhQ7TcQ/qirhHwhnbM=;
	h=To:Subject:From:Message-Id:Date; b=PTzuKu/SkIsQ4e/XVF1r40o/3DTC8y/KvsbMg2dKyaOc9BQpaI3Y7Q0eFKmucaoJNi2sEBVfA5Sl8n+zrO/KN28g194CfzsI6HmOzroixgNq28BUlIviki61vIbECXB2sMssq2GMC1n1OYcf0+R6BMuYv9X4SmuMa3ZPTxP4orc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9d5RtuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9d5RtuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD02C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786045833;
	bh=PZ0e9JQxs6wtfD/IpvL732hYIuhQ7TcQ/qirhHwhnbM=;
	h=To:Subject:From:Date:From;
	b=L9d5RtuMQ5+q0s/vh8IJo3g9rIbwya1r6qsopVQ1Qd5h8UShxPCUwvwHYACZlnQW7
	 hcJ7IftznQbKbpBA8nGISvM0jabIccCuijsI4J7uVAjNvXdBGXLKW9M3eIyCVBiU+1
	 1gYSt+cBueVlKw0yQp/lNewm7gnRI4IG58K3CzblP3OMXHD8RsdTTAWOMboXaivv4/
	 ffW0NG66h0sw8oJeDIjiCQR2rAdrbj/ft9FOzk3RJsM1ljbNbJ/j2JPTnvs9mFiDpi
	 qA7VNvCjSq3fXk3PzQfKwIJo75nrqNiXURVVdn1nEaUkgl4IkwnZCfBc8pbm66xCVZ
	 T/ThIfkmfrWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB14C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604583369.8240.17641573829870454857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aeae187cbb0a6f93bf86c23390f6d71b9df14c5ea883d1d2a70fda4154890e5
Date: Thu, 06 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786045833
