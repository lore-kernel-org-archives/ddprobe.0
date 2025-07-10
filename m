Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D8D1F63D9
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752160794; cv=none; b=NHI2P/QCmVLtX+EaPnWqf0kUCYh+AvNSlS7GXzeZ4YBauA7lNfL5P8TQRV8y5b9Y16SL9rItIjcvrLUQ8CXKn3EnFpb4/h+Lcpw5gFllBXMnerR++IfAQEViMQq9WlHzZ+C5Q82OKRpVCm+jWws7aobPVnspKJrShWA5QVjmajI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752160794; c=relaxed/simple;
	bh=QAAryhoXFiW1IBEbwEbp54DYE7EDsffBYH/vGrJQgQ0=;
	h=To:Subject:From:Message-Id:Date; b=ophs9EaHyfKqjXD92xs5NFZwwAkeIlt9oCToDMXpJhteT2GsoXmdINbf7zuyfx9RUmcI8rlmlXXfg2lPnPly8I1lqUS8+icV2Mh3gJkfYamhH2MpRfvEUgn4bsWXgFtV0Jn7EjvHMnpcEu6vEK3T+04sQ6Vgu24FiL3dj96+4sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbmCBOIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbmCBOIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6662C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752160793;
	bh=QAAryhoXFiW1IBEbwEbp54DYE7EDsffBYH/vGrJQgQ0=;
	h=To:Subject:From:Date:From;
	b=gbmCBOIoAfQIGQGfoOkbFZslsE8o7L7fte+ZYsAL11rBStN675e5uXKu0RwOvw9YB
	 EfouPFbUX4wYS4e+RFIZYegGyaB6NR40pVZEjKFAOG8StzTbYb5isFzVEXozA60nPY
	 QRVu3azFvkPb/7gly5RKpmQ1SWdW0chXG8En8fRkCUEaZKI81HpPa8c6SDoap9hBBS
	 WxRpdpbp+cdtynt3PtR7/vwnVYqFZoJ3lIC+6yjCVaBMEx5X78oSgsFg1FqrpdJlie
	 v8DUfPb0hI1UUVzzZfToHlosDYznzDfmGLhZ3V+4jbdbWxjnJvqpB/vfKVRCuc06ac
	 AR6X/fJJ4iBHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B61C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216079357.3977.14982104287134033894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca981e30917a798584e038c52e891a1e8af16eaf1b4fcb2cd053565402f1d89
Date: Thu, 10 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752160793
