Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753AD17B41C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716930263; cv=none; b=IcKacUeDdgKAro1ebRAZIcqqxg21zVbUVTxhDQbrNPofEbboSUIk3nEWl91kUmnnDxwqrP7hE+7MXQKGcD4O3LzwxafvYy/Ne17fCVUdWykpL5dnTV9Sm4q1xn5SaP7pJ+lzihXrquwj6zmt/29AmzPwqNnIgHwTqv8OW0TpXAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716930263; c=relaxed/simple;
	bh=CZB6lT/myajiUn/ZUqtkUGDbB9FHqIAe1nHYvEYsG/8=;
	h=To:Subject:From:Message-Id:Date; b=jXZay8CUJPSQM4SXzm8nqHJPaU7z5qP/u5O4xk9vYUmcces4FJ/F3QoezRgXqZ5Jv6bXb2yk5P5jHsvYMut/9IcZFqJuO4xD4eLzrOVz1lYhxCgcwZUwF+QxLD17evALKNjmIwC2yyshTiL3LQUHaURBLlCtGGf2RVlWVKpqlZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReqRD2fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReqRD2fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E729FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716930262;
	bh=CZB6lT/myajiUn/ZUqtkUGDbB9FHqIAe1nHYvEYsG/8=;
	h=To:Subject:From:Date:From;
	b=ReqRD2fIkOJ37yW/aFRejPHdnokXJ6F+KNOLFgX/uDn42Y4twnR6rebZOlb0MVCAw
	 P3i3ds6Ljy1+2rpObTVGqeE9Waln7z/82tw/8oTShsuoAW48VtuSCNt3r8n5uFhh9l
	 t5oDe/SG51ipj0PVTtpvB7pACgYBzY0UAX2VDJrQU7cKY4KtracsUL4/F1exT1FVCw
	 s1sWo+qhyjOmndKJVICGSd+YnXFfex4QuzgZS883EuSSpZUGgSeRcO0lD0rVtSfMvA
	 7Hr51az5WkpR3FcnlwlolngRZz5u4vnTszq/iT2psoCf2ZCUS8kn2NcRg/Y97y8qY3
	 1K0uUWaiFLWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9625C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693026280.30696.3108600267676749271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c80859f77135de41ae56eb64cb0c4d7dc6d4de1e944c0841371b79d374d5e1a
Date: Tue, 28 May 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716930262
