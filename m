Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6FE1B9B52
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722930354; cv=none; b=jA+yGMGJtFOCXSwWbJRKIT5qrl38ii+9qcBv9012QCQQgbFYKx2LqbumZHOFl5h9nX2AewF+FoLWBxogC9lvP23B+11EbBfueOLDEN/WTKEwMHrx1gmTlCfan9jj49nOROIvsNDikKevhN8G3y6INU2jzA/V8pw8HK0WdPfoejg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722930354; c=relaxed/simple;
	bh=1l4SejZIFCZSXg61F9fZnnC5ALuko2We5U6WEBcreIM=;
	h=To:Subject:From:Message-Id:Date; b=i4RRO/QpeSNM/kZy2L1qikxCfSscy3i1ZH8bMGLssz33i3lFgukkj6/pajoLpn5xpeKOhY2LmONCVVgLUV6xa8hYNz85DH4ZPNJ8KzziBx/rtmQga90zD3Qw51yswinwZBgallC934D9v2j2oyKSJi9wl/2aVnRL9kjXk1K0pXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8YLK2ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8YLK2ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B48C4AF0F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722930353;
	bh=1l4SejZIFCZSXg61F9fZnnC5ALuko2We5U6WEBcreIM=;
	h=To:Subject:From:Date:From;
	b=J8YLK2ZAzrzIqJPdWmvtECsjejnnw+4DL+9iLCx/p32stbxX2S6DB++maqI7/0kq8
	 qOyc0owUxj4cjkCcbZZLbr9ozHZRbgHODd5hzHMT0r4VS28rm+s7vd8lwx8raTAAK0
	 F0UkbN2/uXrKmd4e6Pi8jmH7Gwfl2a1jvTezDUg1ovH3IwrFXfa92IKZiFvUd49MrU
	 twaJw0tf51hSLOpgigeg+bFg2waWDxQMW55A4kQjcGtidnd+uetBfy/ir8APJ65ANf
	 lH0QqxlAr7yN/F0kI7PMG2T+s8x7JTxu4XeuMCJcObkhf35A6WxNDOhF+2s7r7iWfc
	 4NuT8y6eabAXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94765C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293035359.27823.16114610388235237889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739a1e69e893f0c21acb5a6602963fad15fe5705bb61f72eb3d142362674c021
Date: Tue, 06 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722930353
