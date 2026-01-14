Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9842A3AEF4B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768429434; cv=none; b=AU5jAZw2XvedrhpVtuHDXNOaJYRJPqNE9eN0ISWGgGqTwgHEhMdvJvG7uJzeNYcD+w7/LgvWEJ+tnlIidANOQGdfoI5ZXOwLr2xW3SLWUdvClONrNBS/TCA6bmgCVmTPp9zwkbwva8PxK9iHq/p8E6+XkBqpRujDgNOapIECuVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768429434; c=relaxed/simple;
	bh=v9cQUXm9DO2mwNCEE5XRvt81UvAnbZZWcYuvL2vBrmM=;
	h=To:Subject:From:Message-Id:Date; b=i+J9c1by+G5lyo3rrCSdFxaCrYYbmlPHqD+QmSCB+g/gYMuCEK1tfxCM9GrjrfwRx3/1QYj4ubs0whuYq/8SmnUZ3IFq138XIVJ1vK3RJryoBMfMtbGVzF+5FbC3rb8WWUQEtNCaRnHC5BoS0zeR+8Q9VtFV8qXjNeQWyRTOkzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qusz6Wey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qusz6Wey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2921C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768429433;
	bh=v9cQUXm9DO2mwNCEE5XRvt81UvAnbZZWcYuvL2vBrmM=;
	h=To:Subject:From:Date:From;
	b=qusz6WeyOII3LUxawE71yFUZOHtmFTpaz5Q8DqBOZybhnSvdhxZX7LCfV2zD3pY2X
	 Rv0ICkDCPdxdR/2cauR9CPszVXcyhDkRsDLl6129q/qUrxbke7QXxYjgSZFneQvytA
	 4K/KUiqd6Bh9bc1mOSwT0/e9JP5aHRIGB2MrFqce4Q/Lx5KTP1+6Fe+Deh0AsZ2KPH
	 Bb/dx8in1e8+rqYSSpC/psapSAER5Otkz/W8gbzV6rJBkr1zFSYtKxBhOK91+9+sAr
	 lhhJda5Frq9bA8y0qB3nSJe8CaWu8N+GM4Ucy9jWCN7oFg+4Qgpf1OZgUjaooRVjv/
	 Oy7t14n3t+KKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8DD3CC86
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842943359.22061.1545470347256202670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b214ab379b0806cb4a87d1d81801389886a1a56c2f25ffc0b0ff798d0eac13c0
Date: Wed, 14 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768429433
