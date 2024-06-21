Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C1036127
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719008543; cv=none; b=I7t7k9AXZ4mAWnJzhHgAMwNHCEdbAZptuGNeUboj3AX2TUY4D0rzwU3iHbDK40Fo8zj975dmxg743F9VKlWGWRaXn4ngHH/5SxVDAlc23Kh+RSW5x3Yt2CFoYdaSDmKVqMIhIhf9n8vyen7qNTgbKbRBYo+8CYFSiovhP7T2hec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719008543; c=relaxed/simple;
	bh=kcERZplVFlh7Vz8nYKJv0CNj+a03Xd92U20/ZyKVF4c=;
	h=To:Subject:From:Message-Id:Date; b=PSFWChf+yQZqTFQBY5eYF5nDbu7wszun6ByIlb6oIzYlq9S59wHPsWXorJ2+ZxHZmi+1yTManJPHVTL5pxOvJac087+gZXxVvZW+bdorKXOxZ5GIpivaVucAfWAJZb2tRiNaHifeTA7563Z+4g/iYuKELZDftIwya1eZCi110EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lti/K3dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lti/K3dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE6FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719008542;
	bh=kcERZplVFlh7Vz8nYKJv0CNj+a03Xd92U20/ZyKVF4c=;
	h=To:Subject:From:Date:From;
	b=lti/K3dT4wFQJji2eq0GyeIhcstNZoSU/l781Y6/Ax57dPcy7/h7NWFlFoUbsmIqF
	 YhPsFHcWQ0nY/WPNrPP9VglyZ4ZA+eV0VaaYofBQadavRyskdRV2/IDSGJCPgCm2Pa
	 Y5Xc8QTX2CsLE8HeQJ1k9ZUC7cTALvVPfDovqAiin99qTJy7ZRsxd3brBMM1GuXIFX
	 ygvr75+I7UVcT8qRR4zCvuhhVrdkHdkAJXzhx3KqlUJAAABGLi/g2+6FyvvX4myiem
	 HT4HWXDlbPAbAeCj5AzmNvSOyG8RyRaXz6t92b4bALDtGlTm+9YlEAl59VwIVjAZqE
	 A2ZdIeVlVn0jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C478DC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900854276.26191.2890586623596977953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57cd482a17ffe8d26b85ddb08dbac9c64bca97f0793e2bc9c26fa594b17555b
Date: Fri, 21 Jun 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719008542
