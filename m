Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA02C3248
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748835595; cv=none; b=I4euzBxvfSvnGvi1PaEndbbapnM4SFcEcqeN6TXkt9hXBxoZfQd8eh+GoNBew0S9Nn9hOAjrHrA8WT0sfGau+Dxz1AlEo8c3dEJBVIfwYHNSpF2TaOYmwtrs6gSMEjgzGK+k38cY7is3vGYqSPNZe9qLYcWddLi4nkGaoiNDTQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748835595; c=relaxed/simple;
	bh=C4pO+QIAQSnXLoLz+/ZGczBAQFuleZntgij0ttH8Gnw=;
	h=To:Subject:From:Message-Id:Date; b=S/4WtSa/6AUSUmm0LYj65j5JYXNV565RSwXxmkGevGCq/cKRybbsgVYoI7nkH7JkS2/gKI6zhLa1iB/SC9fBhd9KYm0655jrsf7rkpDCyOiMU0emcp2G2+cq8eOE9v1NpeZdt6JYjqldCiG6m1p+cVbBaUnfBKl7C344Gxe3Ojw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm5n7bJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm5n7bJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8000C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748835593;
	bh=C4pO+QIAQSnXLoLz+/ZGczBAQFuleZntgij0ttH8Gnw=;
	h=To:Subject:From:Date:From;
	b=tm5n7bJ1C1y61nsDUT1BkbpehuihjoIDLz9WQg2acddMX2g2ujxoH2wOZ3qKDB0ap
	 DghE49eN/DJ84hZv1M3jdo4APLxTvWhuz/cZsHwRoMvZ+vx8D8IMv7unln8vYR22VE
	 Vnj403iFX59WFGTF++SX5qKRBlYsZ1NLKbRuzHrqLsaBZPM5QoiU4k1VI9xBcPuMyX
	 18adrGXvSAsdNLVwd4p7HzH+qCPSd/02huZs62EH6/2IOuPgSGJ09Ukf9AJp0lhULT
	 CYloi7/+AQfBMGJ0uPufiEjpQQV8LPsTTMNxkFSEDIJBaH5uMo8Zwb9UXugDLRdImt
	 DaocO2AXnadeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C06C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883559358.23155.7259904254824168677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530646e70a705fc8bb067ae1a5873fb53b73134feb65235a653dd75c32113279
Date: Mon, 02 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748835593
