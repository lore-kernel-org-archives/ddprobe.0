Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44328EC4
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744519794; cv=none; b=GSNcK5Fxq/2bQBHarV9i1J2JiFRVlYfG0yGoPFV8lzqvt0ozodQozCygXmVapiGGIPRDE+d6raImZzZfE86Zbfmrl2mwoW1xn0X/qXiUqWHqWxXAEulWKcpjrPMWI8hAU8V8WNX+Cuxg7YvKwY9OqOCEErPX8wL+2HTl8kCBSJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744519794; c=relaxed/simple;
	bh=72DJCP6NGfNGo7PwuvgHOwdN9ZhpBC/zKB1B5H44kCw=;
	h=To:Subject:From:Message-Id:Date; b=iE7lVQof5+j4DrcSd5eFu7l7nZa6wGuneXP6xg9ofY85v33xsbuiIXWAH514ZOAC/0sueZqEkLL8f2PVPLfRBkoB48bbz0cvd93iuJufOcdQBZJQGlaIiq/N3Qce6dOQsgf2l83lmxGnQDQ4F0V9qN++S+orHD7QMIsP0rmOTRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gkkzprg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gkkzprg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C86C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744519793;
	bh=72DJCP6NGfNGo7PwuvgHOwdN9ZhpBC/zKB1B5H44kCw=;
	h=To:Subject:From:Date:From;
	b=Gkkzprg6VvCf8NjFVHkIYXeBGftVoLY38MFKAuqm1bUjOmoCBHR6d+grb6MsvRdG1
	 K5vnG8BIcpvteAZPdmQOfFKp5ThHYPZ/qVYZMs1odjIByjtpawR//MXaAr0/L4LhX+
	 MBaxynogthz9MzD/k3meD2s3AXmL80uUlsAWYzTlEkQ4iZgLIiWXz/1mlikIenJx44
	 lAsxoft4tQHjFB9SOQnUsJqOxmUQXZpOU4OrVQNmypzLvxWuiizpPFt8wrk9gSs1ir
	 PF7k6fFTPg0u4WXLu2t4W3kIVFlXYdhcrX3w6+2uhbG74ObR4ZRVghy7gejYRtcjtC
	 h0YlMIbB6EjKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD6AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451979359.1434.13297881722768485435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1748006b47d70d8dfd6b4dacb5c3785a3c87ed37157b9a72e6d29a6360c2bd0b
Date: Sun, 13 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744519793
