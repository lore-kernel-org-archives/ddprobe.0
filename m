Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A7934545
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734057954; cv=none; b=oha4lga8XyAmwPIj02tgTNlqFF0qSURjjlKc0XPeicUOzgZqtIItW5ddxD2JdDdlOR54mNxxi12tlnbSK3CvZn1eJwTxM4IiJTlGlAexIb14VANfYB8QC20pdE/qJVSU/osKJt88QqOEsF1Sge0oYeGfKfd29lZIxsmtI+YdY6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734057954; c=relaxed/simple;
	bh=45yRPh1AHIzLoBlkSj6+B9VqYxZyV0izptyCc/9EvsY=;
	h=To:Subject:From:Message-Id:Date; b=bn1rxBTxjMUgtCj9zcdSpVKTdeTqL5R1HRQyXNxnvb1g1NfB/9Ppw7xr3FeDZ0Bu/8XJp442kxBtsExGC7iQVlFFLiCT5PT/2cPezfpXN2GeVkGqVwin7sqLMf7NEKCYuktgklbg+hurzk2UDc4mBY8cSHIh566E9CaaSK2yEVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RloEmO3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RloEmO3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AA3C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734057953;
	bh=45yRPh1AHIzLoBlkSj6+B9VqYxZyV0izptyCc/9EvsY=;
	h=To:Subject:From:Date:From;
	b=RloEmO3uZaa908qhRl63a9MqEQ4O1ZayrQcbVtIQzaV9WI6flS5zc9zj2UnnKbqPZ
	 DlpbX3ZIsZjpEFTdqIhjsBuG5uPmJ0yS4FYGF638rUoqsnYiH6yJnynqlogUEmYexz
	 LTy/Yd2tLm61gyKNknJfQ8MCxh2xRqaCYCrdOKeCvLuNDjeG6sxthno71+/RFaVcT3
	 +5gojkatNusbtshDgbnTJ30iRHAzF+sv1UI6bTXZlfPymlrfdTM/lbgL71Me4RLgpD
	 lRdVl3j5EmOoKkwzHsAPYqSRWWZk/a7oEgS0vmB2uRFJzghimObC6gJl8hq4uJnlvi
	 BiUB9uiXe0OgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E7E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405795359.25543.11395353016069461739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0bc3b8b097271222d3ccbe785eea98b4e1704e64e58fd938e00d0938e25d9d
Date: Fri, 13 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734057953
