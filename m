Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3339C7494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727489154; cv=none; b=joXy8wAkuHIkxuleg9LXdk0TDvs462yWxVfK+ExDwbKn/7OriKMnFGCBUqJPYDvOftLaXpTnEYiqB2rsjLVC7hKgbsxvb8mLUEUtrnIoRH1rcCOL9c7VBLopMcJlqv8HPxlbx5ZCwwcGQVLztis6D3I5LhkbCRIhC4NUiPSCr7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727489154; c=relaxed/simple;
	bh=Th9mYDCodxolIXSf9+jN0BPCBRa94Qa9uh1Kz+wiSbs=;
	h=To:Subject:From:Message-Id:Date; b=px8/IovjZvRntCGkrjTUrGkSPWXxjg3Pfs3XDQ33h+5+E8TDNwrbU1t4rt0zq2Etcazfom3yx2tZkRmsP3MolaDa3U2CnWQEGVMLOjKQJGXeuyHo1lW8m+w8+PoXQmAuVBOIGN1djhKzigbsZR7iQAvIq/edz1duwxJ9QDh8b8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjZ89kEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjZ89kEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAAEC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727489153;
	bh=Th9mYDCodxolIXSf9+jN0BPCBRa94Qa9uh1Kz+wiSbs=;
	h=To:Subject:From:Date:From;
	b=XjZ89kEBVEWgkAlNxaYLtK6g9dJImplIwgInh8c+beYbOvXSW3InJDhELHP5clCUY
	 VWaYg8+Q9pP1TcU70PvoB9MmYcikz3mql1XSKyJbgCogcRF71e5YxvxAvVf3VXyohc
	 g3flNN3ZOrT8kYacCko1fMcjz0g9jidWtrP8c5va6hn2l3TUmm++dD8+ym4t2++BUd
	 PjNtWy8GxXd+vRyao93MaqgufdcUH1Qw2N5G1yojtv+i73TRMne8euSENWkCy9z+2D
	 S7IjiQQX52SM3RSlqcyjy+bUdA5Xj7v9ITwVoIW/FJ23cCfPbbDWBU45Y1M0e4xwG4
	 plrirw74630Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97844CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748915359.2949.3526005363905538054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b199ae1662080b8e7ed48f31063e213584d48021c47c74bb171b917055de9f
Date: Sat, 28 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727489153
