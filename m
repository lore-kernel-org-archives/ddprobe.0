Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2617924E4C6
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778129254; cv=none; b=OgzX97qqHmCCvR3XMyMDS3AxTjAkMzeHsT48SC9Wmw2VpXS4l7ZobNLZa6bJCZf0s2vqHXOnHNDrwX1zRTtLeFX3UdYbga0XkX8xOk7qqgAmftUnK40RxwAOAsTCW5mHp4QtnbQmvi/uDvXSD5XVN7eRxKwxoL/aIUpXBstj3C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778129254; c=relaxed/simple;
	bh=qGNiYYQoV1nLXWnwUGGwX8W9mAfSxmw/TLskZ8f+EkQ=;
	h=To:Subject:From:Message-Id:Date; b=Daa7RF2nYDppcl13q3+Clfc9KeXVS/Nn1POwGv4wQTsk+aWzGTdObN4wdQbW2C6xkb7OZfdwxX205lOI+sPvvOtaUFb62d147lrEabSa3BgZUHfSJtkPBzpO3Wto1uvr7xjRxJCZv0cRX0edgr+0enknq25AlakifVGmmSa4a/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIEJwq1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIEJwq1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A64C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778129253;
	bh=qGNiYYQoV1nLXWnwUGGwX8W9mAfSxmw/TLskZ8f+EkQ=;
	h=To:Subject:From:Date:From;
	b=BIEJwq1HYAoI7wcZqMLJxINOfTg7cuqe6xnYzMy9Z8wKOy8NGxl4jSozPARBuruHt
	 tilCy8y3gzJfejp9QVPPIvKRS5hyDS4BJcCS+HF27SwVLTiTojtWA0mZPkxevWcO3A
	 WFDbuX6ewLBie5ezsFjkdbxBkwjNsrx8kxYPz668LFB9Hij72VfW9OPYXjtdvxzybs
	 NQx6JQ4quPgL7pMhKyPWIZnLwypg2nj95ceoB4Odcve+TkUkiAJyOxlTagTTly8RaL
	 3es1GRFAif15EKOncnE21s3Ijb8v74+xjrK3odwk9Uy4EsNE6IiSkVw5ShPbMkyAdq
	 Y0doYqNZ8b1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129ACD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812925371.23755.17398514605849471511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5360ff29ccfe41e7ddf20ae9084c8117e6e2f4a981afbcf83aea5ca593292b82
Date: Thu, 07 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778129253
