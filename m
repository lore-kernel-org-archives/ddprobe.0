Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C001A23A6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785949234; cv=none; b=X//WLh+KKcitGtXOiTa5w7+UWAdFzMxNr3STi76nrwKGx5Gz05yrLksdIfe8LJi7hm1VZ29pWj9WP//4cLZX1u7IxLHTQvvy71bRl1lrxsVDFGFlsJc7AbBSECDp/RLEv6upnnJCMw4WVcGVdUhxoZ6nl/JpKSzenRsVim5iGTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785949234; c=relaxed/simple;
	bh=8041x+QV6gQRchKAShwOcCNJdltZb2acQtJZkd5XNUI=;
	h=To:Subject:From:Message-Id:Date; b=Em0l8oUF00smtks9P0qKVMr4zv9qbWYeqStljNYpN7nmbd7gbGK/esKunb0rJ67Cnx05Qw2kBF9QNUbrCqNm72DuxbhvMJyNKWlfoDedxo3pjR/mI4K7gxWZTlGmKCaW/Omlf6g5N03/rFoXxVxWFBSQvPAVeGQMnd6sgtyiOFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsAAysF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsAAysF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E260AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785949233;
	bh=8041x+QV6gQRchKAShwOcCNJdltZb2acQtJZkd5XNUI=;
	h=To:Subject:From:Date:From;
	b=SsAAysF/QWbazsk415sgfeUiYhfSEcycTTPfCJHFHFFsQZG1XrXb2/NghkZ6WIyKW
	 xbvF1216sOjAE2nQNGVULmx4wFLRwIKjc+XOM1jKJaccv97f3X/27D6PpnW49QYcfI
	 rpWymNTNYvZVCoLIB22jE5UFjonbXaX8H0EyjOnYs3GQwidsotN7s2iN2AaHhZk+M2
	 puJwhV/f0eIvSLbnGeFZz+9vkK+W5PGb0BFa70ZLf5BTzoS6up3//IReCW3kvprMEk
	 1aG6tvezlIaD6IAUzL4OK4XbmSNVZvBgBhdCL1fxZarUrpN44JklERZUruAwEPtRx1
	 t9nACyn0r/Q4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC61C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594923376.4880.1760288340567139778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c0f96324521e29c3bd586dc3babd49507dea04e54451cb476cd83dde01e5e4
Date: Wed, 05 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785949233
