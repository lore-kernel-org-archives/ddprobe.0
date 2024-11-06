Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C69168BD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730860554; cv=none; b=ft2BIUOH7BRxlR8EA+qfj7TscBp1UzjWKOMFfzkB8SsnArU7yNVxCyVjc+YtjzhxFKObv6bOqdQCai4QUxMlj5Zc58LU5bpn6m9iaF6D0lhIphCYsNMFLzkhOaEIs+YHnJRHJtY9NCQIf9EVIqMMoHVBrH4AcgZj7322YZ8rR7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730860554; c=relaxed/simple;
	bh=TC4dI3QRQRmIvz2vjulg6BvheEaU1khMa/JclQ+pKF4=;
	h=To:Subject:From:Message-Id:Date; b=iRBHIFpSVhOUKi5vnaYN+TzzZP76zh7NQnNaUHul09zf5m3b9nD5INTOCJWNHqKvN+3JEtbLF2ZLKRfTlz7mdJdCp0fqKQV4GI5Oa2AjhqklCj8Wx/BDPif8sLutble5YGS7fP7q3zPxuzGnJbZ3N0lLwZFllxCZGBtHX5E1CBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxGqn85m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxGqn85m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBCC4CECF
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730860553;
	bh=TC4dI3QRQRmIvz2vjulg6BvheEaU1khMa/JclQ+pKF4=;
	h=To:Subject:From:Date:From;
	b=kxGqn85muszXPKNSGkDw9+A1nmRD4nT8D9U+60RVJ5371HM3DNbkHFrr0EI5GWFmd
	 62TeKFAHw1NvPY4ZHOBlTY0Ce1MB6QBb+NzUPgA/+yKOzOlHphprPX08TLV8i+0UjL
	 IzhFX4vImWGNXW4oLTKCDgXi/NKvtkxu5vYKJe2cd297+U8vgMZ9aZsAB7MoBoNYbv
	 SbX7mRecO3sj6ME3p9e+m1pM5yaBwtOZ7dJzLzdWLHfA/Fis26kT1PIyI78mZ1glXB
	 MHNicZic/jvhxLUb7icHuiyfVr/aBRatHv+xSwWO8l9WKUYk4nx1KC0OFfb6EOYZ1T
	 LWA/5QXgXGtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D45D35E5D
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086055358.14188.17326240813926884800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54a461bf6ad6e18f0820b89713a22c86ddb55caac0898902aca47a4d9b283c1
Date: Wed, 06 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730860553
