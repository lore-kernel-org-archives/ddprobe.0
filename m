Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C45F9C0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756190394; cv=none; b=J0UGkVvpT/fjNm3qOC+XstJaOv+KAT7KZfgURlOYxwkJeVj5BLANhoKNUZOIwx/vgjP4J/a2j2wEtl4W4ASHTYz+mZ5MRcASQxLhVft4mQhrKu2BXG3JeZJ4R+T0aF/5qwtrzFe6eHwx2I3w391RzFv+Z9FtC2LErsg+oH+F+LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756190394; c=relaxed/simple;
	bh=kmmvVsZ0BlDkOWP1cqg6DGe4s9cmmpWLoBTQhVtCHRo=;
	h=To:Subject:From:Message-Id:Date; b=bOZ0oSKLnilrHClkDK5fgbCCnRYGqaSWVdvrlqNMz1ykhLwApx2XzKm3p5dUME3JSuQntlNjiqiA2FS/ZC+quvCGaSBEhrXfzCVZ/hOLuGTCgItWmA58E2X3gB+9YcvKJY+yv7L0zvj5BLqi9LRWy0SEQqDZyR6fhb7NlPWhSvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVPJcD2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVPJcD2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756190393;
	bh=kmmvVsZ0BlDkOWP1cqg6DGe4s9cmmpWLoBTQhVtCHRo=;
	h=To:Subject:From:Date:From;
	b=PVPJcD2H9Q89npmHRgFrlSXskgRCzmg6PnY7x2hKWNfr7JX0q9g+pMhVaU2buT4iP
	 +4ymoVP3PTpIOKTl4q1LjsN8ab+Shks932N2bjGIQZ6u7dhbwaxXdEpjU3WYfjXY9x
	 shrPdZCZQNoMjPgpD3i7DPfVLfhXiDNSKTmMX82H4qUyoOGDrJ5bXf/Wq/rYISb5px
	 Q69xUHudP2exgyK1y4hjXzO+Zj+YhlDuoLJyv7rldqubihgW2WNQ1s92AFChAibuMI
	 w2Rt1u9L48CuzLvmRiLD213kyXQGu/HJAJO/kiMKFPR6h4PoavxcZCyrxMperYQLHq
	 lxRGTe9pVR/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC94CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619039357.12622.10198553543397863870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815de74e79f9627fc06e7ac90ee96ca36057f722f140f0ae95e0818a4bd11545
Date: Tue, 26 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756190393
