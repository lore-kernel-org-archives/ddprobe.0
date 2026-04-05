Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E90A7081E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775350534; cv=none; b=jEwYDa23NqR9i0rWGke95l9e/e4E6eUiW0wH4Z+JhEsJHeDMKrh/o2yfauJ49E0vMcjEF3VIEXFQS14d0reTXewQK9oAs3DhmXqhy9NAGGKrhfPYhQXxyq/0eyaP3UPo50pJMzfEqrXCkINp1XzxtJs1mPZO/N/hG/GTGHxujZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775350534; c=relaxed/simple;
	bh=iJmxdcRYkzcofxDHXKG2Zr+9j/x/Kt+U/ZI1JFyR/iU=;
	h=To:Subject:From:Message-Id:Date; b=PWZFFvbriQ7ATQKHFJ8lHCI18UG47h3RXIVJ2mrmSfyzHdqRiEMiDUQm31XouStwILEUA/JSFUPfzdg2lS7JT6YKIjV4KU5iHJrEwLKE0AoWxcf28UVIKVKsu56jhEPsEfKVjLBuWPipQh3VTuQ8jwUqXyyDFoCiCaOWN82FJuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHTL9Sp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHTL9Sp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA2DC19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775350533;
	bh=iJmxdcRYkzcofxDHXKG2Zr+9j/x/Kt+U/ZI1JFyR/iU=;
	h=To:Subject:From:Date:From;
	b=iHTL9Sp/O+pjGGzw934579rYzlJp6OiJWi+sgOekgLvIBlG5D0zMuD48y2OHWvYjR
	 XgoJUCv2W6U0Hk8GF7Vjg4Is/h3Kcb9x/xV87gl5g6WttO4EvhzsOKN7j7pTXakKI8
	 YlXG3v0x2ACn+bZksWmXd3SUVSGbGZmhMn2UKLFtydRIPLGdjgPmLe1JskBXGNa0Ft
	 8el5Ffkb47h6Dm95EVobmAGEs1yn06wKuNwUIKWgL01T8zDozuznppIEd5VRXVKImp
	 r2IAdBVxN3DzggZpsP3VFLaYrlvg1zIOBQAzJ0NETYxvjbFTuM3D+8TkH//bT801IY
	 BjNSjkYDIpqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FC4E63FE6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535053369.9333.7510363308409852946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23116470279f9ccbfc995cbefe47e2bbae321db41bbf529dcd2892379595d7a3
Date: Sun, 05 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775350533
