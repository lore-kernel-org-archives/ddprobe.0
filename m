Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66707399019
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790101834; cv=none; b=a6dXW8kL4J1umdDBgC5U/YB2tyK94swEY76hRTbxthWV7h/P36BgNiwEW/+aVeFFXxpxjop21jgP0NyyTtOOs335N6oANjM5RMQuSuYH3r4p9l74D2BSOaFxs+/ZvJS0w+/H5wD0Z0kWgqy4bmOBvas1LzCQFcPiYeoLIHbdT80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790101834; c=relaxed/simple;
	bh=e+8JFuMm3QmDgU36uCYX7SIumcUUifU21O6snyKBMjU=;
	h=To:Subject:From:Message-Id:Date; b=Hy/yw4+vNUao0JG37et4H+Zph/5ldvq3rkL+iXq+PohraDczQmfA/a8CgJOt3tAUSenqKdNCaSwphnMvGtm3uKO9qV1/ldMSrqCZH0kvtswiv5iCD/I2RohwrrEAd6xKMrlGrVmzOtGW1IRU8YqrSC5tLKcgm/Yf0ZvzCr0hXb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXR/azdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXR/azdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DA6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790101833;
	bh=e+8JFuMm3QmDgU36uCYX7SIumcUUifU21O6snyKBMjU=;
	h=To:Subject:From:Date:From;
	b=FXR/azdvJBKX1g/slEFPyIkxGs1Ost3k1Xs4G3gn/XLq8ia9rQzYw0IKqm28kwsl3
	 bo0p5YWCAjWSKkNkvP835PxF6p7PHpdfZjkEXVzprlTYzU/U6gkWOS2cZ5Jr7qek/o
	 sWKv6Dw7kyUlp7uKPG/ywLUm9UCEsxNsa0vUwLPhKsyGJg76zf4tpI/fruwkvtyJhS
	 fzRHVllmUGFveKy00xFBcJ9pCpjnb0RBDReoTxJawj/mnPDtQEgDdF8FNJpqKOQVqY
	 6C5wz9CB3R/arFXZoijhJvpJNGDYJXJf+obRuSRSyoHbFutn5tROE67bIPQINJ9YDy
	 +Jq7WLHfTWeQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD8CC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010183370.14558.13602080794969007643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7242d6d2207bb25a17bc0df5cff8af9eacb124fbb000cbcc7f54689f6d0654
Date: Tue, 22 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790101833
