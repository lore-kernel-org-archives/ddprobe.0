Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5962E3B388A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787683834; cv=none; b=R8CqEtfaUkXdA7VL7ymTT5jvSkacFG32y/pDCCYCjG//gIVAreq7agRPTm5eu6qrpfQJPW8I+ayUno3cUgCnDa+07RgXZ/3DEtpXZFAxFlGhzS9t4sq3BdMtQLzhu/U8rqiRkouaaXKgEb2aviqB5dGIVvXMUMHzO+Iy+EKvriw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787683834; c=relaxed/simple;
	bh=dBJROASeL/t3OkH5yc6/Uz8lhqF+z4tjwC30+DIFGUQ=;
	h=To:Subject:From:Message-Id:Date; b=F96rAQ/42ttlsZZUJlVHjS+lxEvb3MIKS7Qy7+xZ/YEN1TedEff/+vArBgEVnqQ5ICpApV9Tz/dpFm7wjtRjNwXe2DPux/yyyJbOTSE0OAb8cbzo7Iid7vo+jJl3sRp3IsIclyul5kG08AzuZ3GoiXjxBNW826jkb5fjp7mlXZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuK65XQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuK65XQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D431EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787683833;
	bh=dBJROASeL/t3OkH5yc6/Uz8lhqF+z4tjwC30+DIFGUQ=;
	h=To:Subject:From:Date:From;
	b=JuK65XQWapall7yYpOX2qR0iEoiEQha4R8940F0GPFYmCYSmLEyKI3m2QbItLW5KW
	 F5O7Ha85SH/qLEMDES2LvGvryEF+7DkOqBH7YvuALlB3NPAC3D6HulNRKqAqvBORKr
	 ft5SxscJTv0e+KqlIUfbgqqtJDbDp+LGsfP/ktb1Pbq2CvaYx622UdHBCcdvm+X94v
	 ptyVQ3AUdomJolHA+XTu41gcSQmOKRdFYGlt0NdMASVOs4iTcwHQSdEFcZDkfc+VOz
	 JGncmARaWf8u4jOXobFi8jdz+UIQ+StQOk5Ye/47ypXRxmCqT9iLdxdwgZg/oEvrFn
	 14bVfYA1SQ9bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE98C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768383369.1590.18288924166659314704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30d124e98f64b3ed6ba7e6e6bb6c95986e169e176726f010ff4c34f1f18bc9e
Date: Tue, 25 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787683833
