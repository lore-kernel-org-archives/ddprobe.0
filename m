Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B05A28642B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775145934; cv=none; b=HhabyPuU3nlaOKIQUL2G3z0oDVUg/MaL5bDYrlNsGqVJeo54BW2AfWSt2Gv/v/zkN2tAEEO+nod3WOgYQHMT+d7IhaGaTXietPe6LETtEhUNDi1cEiP3TORmWcJetSkn+OtXlP0hkc6073NYTUMqKQVNNtM/xhYBGAcvxesrhjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775145934; c=relaxed/simple;
	bh=zVadq2zWX40eqaFf3mZ2CjrDkZ/a9gxuhn/hJVpSgas=;
	h=To:Subject:From:Message-Id:Date; b=qebx3Vgc6TlWw7TdfQaDb46BjXuninDHrF/D8o5lBmSrvGx9ce74tu4JPMMfIm5rowGf0QH3ijRqP6czIQDwWuPnRGBSbvUBzx0YyRc8cPT+rqv3c9PES5ymPG/HvYGUasUZ1vttimvGZ0S31K405OGhuOXAFAxJ0tdVa7M+1FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwv2oZu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwv2oZu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3091C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775145933;
	bh=zVadq2zWX40eqaFf3mZ2CjrDkZ/a9gxuhn/hJVpSgas=;
	h=To:Subject:From:Date:From;
	b=jwv2oZu9dCLJPv73srh98SaJl1NylGKFhnLdt0cGP0E0SNIWw6Zc+3um0OrmC4nif
	 YMraCaf4WTWlv4GQco24czcCs3dG0hrG7L/m7/XVl7nTd86C46w7xLdA5Nbitz5KnY
	 iq7T5EQ00JDBgSrv04PaqK9Jer9nc0Qf9G0tHuwaeQt5jv3quAX7AIn7n8BggY0got
	 6CdQblQ/8Ivqv1IMlVuRO/44iHzLfeeXD2SRXphl2HDc7VqTmbCoFb3xLv+A2yZ+a/
	 shAJpMNiRDM+WbccxK/GN3j4BbU5SOuUgHP17H/Py7ovIGbdCUHOQSB54mM1Gj+Z6g
	 2x8rP0A2pxQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDEBD6AAE9
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514593373.13867.15755489150880970594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1f6dbad4af6e839e8d45cb9cf823674e08ac87ab5b0c8e700d47aa773ac2dc
Date: Thu, 02 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775145933
