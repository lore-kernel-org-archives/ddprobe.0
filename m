Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B4913B2AC
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722942954; cv=none; b=hnnWJZKSiQCJopkIv5gmDMlPGPNAgBlbLWGGi9iyu2xoD1yYO1sWOpKx4uemGpYxtRngsZ9Qv5qX23Ng7Jr5wBJ1sqBQI9yliHExtx5Mim+jlFF1lr1dGMZC3j4DLsLBrLb8dj51WVQaOjtBvChEy1vrYM30S3pj02K+rW87WEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722942954; c=relaxed/simple;
	bh=YdycNAUbKVeHDbVNCHXmToRmOOMTXdwP7+6yJesdazI=;
	h=To:Subject:From:Message-Id:Date; b=jLu5oYvK2cHzr8zRHv19aUHSg0Ka3pYV/aT3DYyGuuRjNt+y0kGR+s4CRMSBJd9qcNcL0dUQ5HpSmqYVfTGbskEklhucYMpcW1H07RBGkW9yrMf/qZszK9AynsW/XIbRw+vHNeCgRZV5U/qKNOBE3Lw7ccQczhd+6pIjK07DWZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC4sBaY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC4sBaY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62D6C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722942953;
	bh=YdycNAUbKVeHDbVNCHXmToRmOOMTXdwP7+6yJesdazI=;
	h=To:Subject:From:Date:From;
	b=XC4sBaY32VJRBxw6VRqQPkS+BNXZDKIZOmoLltWxEGizz7+mhcdRGWmtpsfuaeP+d
	 enlUYU9Co5tZ+qutitH2jldFFVJFA0MsR8F4Py+QU5SeI0/HUVko2wRtEfMaa2Ut0l
	 ZU0tVA60usiKjWPX+H60E6bEIUKIGlIaTwTRPS3oBNnT8G/RqVY28iL8irCGCAjf6u
	 hzpofvrXvTKcKe0200BHvRwds/CiTocYxOVl7TANvDO8ENdEwN9LlTOcNK1j9z4ADl
	 2QGMM/NjI+EJFfeG5O+8TF7E5wglq1jxb7wcXAH1zGS4QZoPVP8DYM9hPWf9+rWSdu
	 WXr9xecCJ/Hww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D69AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294295363.12123.2625437970725227776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c60f664b55eb33eef3614f1c5e8faf420c0f9bc77f1f34847e42e6cd8063f00
Date: Tue, 06 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722942953
