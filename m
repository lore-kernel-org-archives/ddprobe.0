Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E047F3AC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790887834; cv=none; b=PUk9z7+CCV8znfEYjfHuRsYK0d9L4LIaiGJUjyJoN8PUwqx1zIzBzpeLzl2V1c8l5Ez8KPeOhqXRinnJ//2GBfaztcM6sgL9gPm8w1fGJSIUV0g7VIL+Z0H5jzY4zA2lZdKZWS4iEXxEkkVsM55RBF23efIPNoF4K4QY1TmUkiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790887834; c=relaxed/simple;
	bh=6J9XtGmxvsS2x9shKLI9WEC3BsWGsKZIRpAzOeVWE0o=;
	h=To:Subject:From:Message-Id:Date; b=IJ0Fl4T1YWtKMuTwIPuQKqtwfjVO/GicMmo+kK91mYIMvw992N+EyefPhnLLC1Kpqpv7/isVaDzs51rdRg/JbiX8Nibb6XzCINlBdU5ZLufdVEN7tACp43jLkZDystbxgPC/zPHNENmfNhSN1AWsnGuoyBoApXHvWrtrz7IO/DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRE94Sun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRE94Sun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D202EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790887833;
	bh=6J9XtGmxvsS2x9shKLI9WEC3BsWGsKZIRpAzOeVWE0o=;
	h=To:Subject:From:Date:From;
	b=uRE94SunMD8m4u7EoaK43oPUD/o2wuBOTmkkv2k3DdeN2iylmobJdLWmlivBJDJUK
	 Qltj3Zye30MpLdVFxyaaWWXBpfHY792IM3JqnajB3MFCOG3HY7JKp/1s76bnZEzH9I
	 k0/BlPwryOsD7cYX18x7h63H/JjoQWdtMYTec7jE+5XnHo/CZcCDjUHJnMcERb3ZjM
	 m6uc8OqQQg6cC0ub32uZNehJGaDBfebhXQh0KTMAvc4pH0oyiAzmcxnyJGwEJ+shjk
	 yBG/CuLiA2Wd1Quj7PjMjTX5b69aC7rTB33scUad2NS8YgtHWCQIKQLc/RBjfOPxsl
	 h1QJUcge6N+RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFBFCA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088783369.4882.1368176638556703251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4577d8d759386d6acb48304f456ae12df7bfea6884cbecefb0b63e29ae0a2e1a
Date: Thu, 01 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790887833
