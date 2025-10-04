Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2867534BA3F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759561796; cv=none; b=JoAsXDdxBw5XO+/juQjS7OMFPZNnnWITB7i4ERQ53UIYUKvu29bowPwDH9456nq3h+JzQ13GsnBEtE1ucrXnIWkUMSLSc+dgYzuKy5zHnEsaaW3ms0932koCDc8a+sqmlDIoJTH94GOxHnjSCzbkcVXbinq+6C4CesBPZeAQsCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759561796; c=relaxed/simple;
	bh=fXoTrCehbMpM9ZYmslnOv8+OrFoHHOsDEsCBOF/5f7A=;
	h=To:Subject:From:Message-Id:Date; b=A93Rb7W4tmRzbQelt/xlHVkT80T5PybmZwqN3sY5mgyePUwrRtD6r+j7AHNbf/FhrKvwut976CSxHpj97I1b+WEBX6SZyZNa5A4X7ewGlFbPM8nk+ajHduJ8g4I1RYXlGZt/0C6J7zhg6N6UZCpCLOjnFYtkGmYSCEEhPSxYyzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGGWk0Wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGGWk0Wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310AC4CEFA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759561793;
	bh=fXoTrCehbMpM9ZYmslnOv8+OrFoHHOsDEsCBOF/5f7A=;
	h=To:Subject:From:Date:From;
	b=HGGWk0WyOyP8A9KNb5OjdJnU9BJa3cHav0d+TOHXAFk7wBmiLjJHbXkVZWbMc2A0L
	 umxAd447jh0H8MtutB73U75T52KI4u91KicbtKA75D9p+eUE6K070N5IPXe6oe5dIG
	 hrRBdIVXriQYeN+PhS6jvO2dtl9+jD69YOIGcmj7JqlQcb6nYJOnEd+drPxSW7yy9A
	 1/FAucpS0zCSb6y2mP88Wi9YuqTKxdAmEJdaemjGtza2wxehbD7BJRhdnV8dOkbXZk
	 aCQ+atWRisbTCez6GJHw63enijl2vgIn0Ag36nnT1jq39VQDhGtMR8zTzhBw0M2qbw
	 WM+1WxkIT04zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956179357.27108.6085043461810972949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1be0ad23a4bf97946b177c9d2d4839bc96beb3bb9bb06730d54f6c94edf7739
Date: Sat, 04 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759561793
