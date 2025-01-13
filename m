Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CC11F9F60
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736811354; cv=none; b=CuPau5SPLRfd5AYGnxZPe1EvS199n4MWL0qCk9a2BOl3L1mSdbbCYTnsQdaYglFJ6rLF+SqNjn4D1c8+sCmpab2crI2TxSfBGiQ83AiIcLGz7hgH8A+4gURVwm39Xuqw9qlcEbWB/dnFlYnXD81gyQtjo7tVmpN9ifXwc58mxSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736811354; c=relaxed/simple;
	bh=WpOAq5IVREQXIDMkRgnIEKc0pZ4JWw6mvgST9wRtXzY=;
	h=To:Subject:From:Message-Id:Date; b=gksbjUKlJrM/waAxtOTVvZ6KThciPch7OjRMKQVEuEERhfwS4hzEieOgS2HB818MAYZ0rEP1w/vYiEKBAikM91POGUSRmH/Yvq1fQsYFsiXsqN1681whKI4Uxy/XGtrEnwkzlITpC/ot+xrRNv94aT1VNcQU/1HuBE++lm4ia0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW1i/9cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW1i/9cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5859C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736811353;
	bh=WpOAq5IVREQXIDMkRgnIEKc0pZ4JWw6mvgST9wRtXzY=;
	h=To:Subject:From:Date:From;
	b=FW1i/9cyywFsOzXPjbSEGihI8fA41GB0Wvka/Pz4E+Svo/IfJNJUlNkwAoSG93Lpl
	 Uufj4+EP644x3h3iAYe+toorHevxdgu/yp54H7/5NKHMWnM7LAn8blM3BXiiUFkqlv
	 WPf9tfoPBC7TywCcNlRgpDGLp2DaXm4UVwK9wBbt8srER9cWQKa0MddjYBVxIT4EOz
	 0gSyqLFYn488hHhIL9X0chkJTWu+7Mx59pwd9J4YABldyaIcnK/Xo+Ns988+5kILAz
	 ZU/J5bqeaAfqMrgPsNR5mVHucu9scgmunTV8si5KEi3dgTbSyLiwNhHNBTc2p9nwTD
	 8ehB9OE9vUrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94475C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681135359.21173.9748918790679724443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cbb58fe9592f726d2b9a0f883016c26d89efeb2119a0dc694d6e593fe6cb15
Date: Mon, 13 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736811353
