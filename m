Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C8E3955FA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786024234; cv=none; b=AKHmvoK8k6VoRpMNRskYX/3lAiEt+KWDu6RnNIM5jG9zRYfsBfK/d1Ojr9fcr32slomsVIPpvSzWzENaa8mMBG2n9wHAlTa+SdwXMPczVNsBpzbTflLRcxm4uyiygPKltph2xFZdU2Sk8eUBn3qrR+YcBYrsh9+ZJvDPVFjY6AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786024234; c=relaxed/simple;
	bh=2OmyIDUyXygXkeWgg+nyPFbzVXFWoEyj91xeNOJYqO0=;
	h=To:Subject:From:Message-Id:Date; b=clOMHop3ta6iAeqQQL5nU/CKGYMxaUrKCaGAI8+ssMbRx5495rTYtG2V5lLAulSTHYBYOMOddOiV7BJJgf8YPxB6LLwj5w6kos5KYvQHzUM0X4VCgjju0gfqaJONx8ePasc4KTfnMr4XcIYlZB2rhd+nefjuUVZEXr1LM7TiQhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDM/1kak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDM/1kak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F418AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786024234;
	bh=2OmyIDUyXygXkeWgg+nyPFbzVXFWoEyj91xeNOJYqO0=;
	h=To:Subject:From:Date:From;
	b=nDM/1kakiuH4JQq9dyVuaFbTDRbf0DY0Izsq2KHMuXXaM3i5XpdSTLnfjFCVWZSs+
	 StmsqIQUbU3E92xCeAhy/tLPqC7yhVxVhw+2mF6zbBrcgwzNl1r20KS2yh7oExJN+g
	 8kEDFWpNnJ+PsCUHpTnA+Un/Ht85ZX+YMFZAIfn+bHPPC27jyoJroNedABEf4Rtb3h
	 IIH7dcEgluITovrfXN8/uwzX4M0b8vSPf7AynpCeNOSRALKf+BGWb1zEy3nyDwTEb3
	 rvsEUszrvHnoRJdxd+lFbt9eXr+8UmMnBEG1gHSUnlnVyS3f3qwRmBCOIyrZFEgM2r
	 ffKbftJ0ySPJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7245C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602423380.30283.9247578282414287727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c24cac690a320636f9be39fbf3791c4645ab0d8e9fa11a33a5fa29a7ca2ab6
Date: Thu, 06 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786024233
