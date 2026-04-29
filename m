Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153A23B0ADD
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777453054; cv=none; b=mn1yrGItG9NJ6xciz/ZsfyixnDluQdj+mliSwISUGCXqlztmNMm4QoN0Ebwkqfd17bGGxC5qlWbJPsSMVDeyWSkVXl+n7Qjc6Z1mrZ+EC9t+i6n5p2uAf5npcTUtbzZcN1+XoUNgOnd2l/IuuI2X94W01/UPDoLk5GMFoEuf2ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777453054; c=relaxed/simple;
	bh=MHAAo7ioZMwuU5+HFaclY4/2dD4W754RAAchaLru0G8=;
	h=To:Subject:From:Message-Id:Date; b=rTMTculY+3scfjQ6gxCwi5mKW0YlQBwgfD9hSPy5NlSwutFXwLNhLW7NH6Skv14xWl7MnNH6JDCduApjFLwqsTlFzcIGa7VrttQYqa75zeGICMar57t2kjuh5V1jRIaqkO2UiDtvVDfZGJ/BXg8SX8+IYjvRz6oXbuy7WdHXdF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twDE7UtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twDE7UtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B984EC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777453053;
	bh=MHAAo7ioZMwuU5+HFaclY4/2dD4W754RAAchaLru0G8=;
	h=To:Subject:From:Date:From;
	b=twDE7UtH/DVLI95FAvCkVyxyl6YISAVNGtYNxEaJwR/8Ml0tRU0RmazvizArqgSSp
	 d1uEiQWhNBhs8R/2sulM8tBdsSyLUkn09Zl/HCPMZ6dbffrWpphCVzp271AKhIaQ3V
	 d/nn17H1tEGDlpaIS4iEkkORYSahiLiiL/4B+g87A7sBNYI3PqOGky8k2HlDQxYKfX
	 495IIevMjPUrvxpaGWs0e5jtpedX2g8KJYldMOBO10Mq4ITGx3MVSArbj/zx9nwDU0
	 gOs9xN5I5+nCT/vDsMQc4KnapyJpfxsIz80IDTn+3HcQupa9TNiRdpAxLuTxCBTHfX
	 gkfJg9Cny4kJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9082FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745305368.20103.12637329476850931105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06675b269e28d57d13ff83f3103309625ebf5a6b665e26666186ce533abf4089
Date: Wed, 29 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777453053
