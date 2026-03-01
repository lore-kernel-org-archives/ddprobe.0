Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F5B236437
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772396694; cv=none; b=JCG54oCFpuAO1FTPUd52vVlAeCrkydx3zMLSV83x4eFs5MhAMy9WDaaevvHY7ZTt+7Hrkk6K/QshEBkV9E1hJmBUCojyEWTGn7/5i9g+ZANDLWTUwL5TFgAIEJygHBe45MXvrENR/xrB+ou3I/mW0BqoqwiV1sttzY4isbmHgWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772396694; c=relaxed/simple;
	bh=AXldbI4i1010MY82HumgneP08YcGrmo1W/Z2RwqeaKc=;
	h=To:Subject:From:Message-Id:Date; b=VBTI3HOGcY+13trJ4Y95a8QpfPTnky8jzh9gQgjMt9SByYOColrIsUcDp00sUe5rqW3crKsa5lKCqGTGdI9fw5Lan4joQWKcsDjqChuNIAsXE1Gz8j5kht8GiNk+0QjF5wZqiZYZVkslpZ5cxQDgXrZYHwTOLsjv1JtM3ffb/1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mB5c4EkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mB5c4EkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDBCC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772396693;
	bh=AXldbI4i1010MY82HumgneP08YcGrmo1W/Z2RwqeaKc=;
	h=To:Subject:From:Date:From;
	b=mB5c4EkC8laTVUaJVDlOI3sFTHAZFOPhMCKfGN+RCmlbKE0vxwPaMJwhQuRBhAZXo
	 7j8oam/TycP4qKkOy/OZok5pPCm/+3dRc5wn2axBwOUVpJiQmIBHT9iAP+cNgpAt9Z
	 1es3fEHBMhGzWB8UXDOEhobQi0PV2+srqFvo0FcZD1EDY8AcRQ7MURDY3t9u0N2xzm
	 u9Tek49WMH+AfhAqJIOUeeMCmmCvOsXWhSOsFB5j1LdH5B6n65YuoCBx8mbIlr4NIa
	 Zvp8BPuwYt312UML2G2uAYrILInWWRORg60CPQCxzJAQ48dP1TZ0+scB7oeazf1GMw
	 w1R3VWRGaf7UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A7CFD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239669363.2298.15101244301183735481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7760b9dd60601345f8bece83e0d79a2de6a759fbe10778b9214bc87b9fb34702
Date: Sun, 01 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772396693
