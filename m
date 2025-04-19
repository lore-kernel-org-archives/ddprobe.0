Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F4D194A45
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745096994; cv=none; b=GAOBOD1F3ZJDQWzuRbs7t5IejCj8KEq3oup1Xx/xOOA3GN12iOTZTXB1b0frpAaeKgnLAeLHw3nxkKp1ktVBSgPN3pDiz3nWvhrwVnYu/qRVWYhUImDEgDLkYyli8eHiAJAHQD1cakW7z0JAZYw/bZpxjDwFW2cbivlm3oepp0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745096994; c=relaxed/simple;
	bh=4+cED3dtHXFCuLixKhR2kTKggrW2Qz5FpEDz41RI0wg=;
	h=To:Subject:From:Message-Id:Date; b=pDKAfvS16bIWazjvYqn/NXfRoZOPu9FOxhR3N3L7SQbhirH8L8ViU6Dw2Br+lJ0vjVW7xdOLgqg6vbdc97JU/dh1IKrhq5p9pnRfTc3TvOb7mw+WpxfymBLobpqGdYS/y1F3hm0TnERiubVx7ITup8PJPDMDwaGemgyt4r6jvls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmXHkXEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmXHkXEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2C3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745096993;
	bh=4+cED3dtHXFCuLixKhR2kTKggrW2Qz5FpEDz41RI0wg=;
	h=To:Subject:From:Date:From;
	b=JmXHkXEi+KhMljS3i0lPEwNpaqRutdaIp8n5zDyjEydExzmDFDbYdhDbfKamHrQWU
	 nubithNWF4cw0IO5TiIoMs5fLA4He8oodtXev/h0jKpTD5LGjzf9wxjNg7lKTjngCM
	 sgXOuIFe1ZKcJf+QEUATYyfgmCiSZmBjk+UntiM/JBTNOzEVXQng8vp7SkKi55gnma
	 0YCmLASs0ZSW5Q/IWQgZ8HH2A8bpZefbG46oI8lVF4ekGweQuHQcmTsSkUFIPgAjMU
	 FIoMHsw9vpR7RQI+OdN1Wn+tb7i3kw9a2OfAJTXnBv/q+GHXvZzoitDc5CurqlkSg0
	 8yBPbQ//gMpuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E5AC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509699362.26663.17054410303325140603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a32a1fbffaad695488720fdb301911febf8b03929abef26ea7898730145915
Date: Sat, 19 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745096993
