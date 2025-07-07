Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1751C202997
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751918994; cv=none; b=PEGWNpqubsrFhZYh2DOvGin/gQoae49vL+wh93Aq43Iwd+glCbr1HywwwF2FSHwWr3qfHiNtIw8XaLt9nSwO14JjgVe6NSsX5HrwETffbkKrXtAo5Xcne6jBWPMDiZkBJcQPwx78Vkj9N4Fx7w3oXKCHlYCeWepxcF91Qh7LqXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751918994; c=relaxed/simple;
	bh=dnXQxD3sMIUKL+8qFM0uqfbEd6tMdLkKZy0N8KCmJeE=;
	h=To:Subject:From:Message-Id:Date; b=P8Tr/T3U9slcPRTPJujdFSKAPtaB++t1YC4GGCF38K3nRRjTJOCx+Fp3hZiGZLFyOHudp3Lw1d4bjenFHjs5XJx0EfQQFD7rdpdw332J1BzuH63J4xzl6R2bNOvzl1+Nb71XkuEe43ot9+TzAE33etwiNIbzIY2ih3RxrlNDpuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3jqrqE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3jqrqE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A287CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751918993;
	bh=dnXQxD3sMIUKL+8qFM0uqfbEd6tMdLkKZy0N8KCmJeE=;
	h=To:Subject:From:Date:From;
	b=r3jqrqE/qM/Nojb6s9Qq5WpX8f0MLay6bdbUgMZC0aSOGEtPDwUXrb/DGum+amtlA
	 1oRrmOvxDN+aLW/ZoKXELh08aYsfQnSqZI00VY1ZxTYEbiDZupb54Ur5A3c/ruQPRO
	 Ohtgh8btf2o40OoMcMRA8ZvQhdfg9TiTs08VnxKE9/iHdRwXWXLRT+2k3yPHnVyjwR
	 5mtJQcpa6GgFfEJLLNtL5C5LS/ozDvKmVZOUNQZPIcr8hes9oZtAs3+ecumUJaObpk
	 lp9y/gov0VaL9gT3eCVDj8HNM+yqLFVa/PUEyZJqJca0UngkRhAzYP7LiUOtUicgdP
	 VKiEvOdRfO+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F9C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191899358.770.8522591916395913522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e588a6ef3800f35fe8c090e3f6b0369e6623b21423e526f8607e1ddd07795b
Date: Mon, 07 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751918993
