Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18919AD8D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727822754; cv=none; b=DHfmT6vTXXS9owNzSNW/asXSsITt7HoqxaEe0itLXl31g8v/QkjQimJls7sOz4IN2W8WOlNAg9VniZsWTHziwp1nigJt2QHeCUhir7GpHXmUdfTsMhohniLsePYGX/yRwUo6uHfMrPZg94U4DEHqqNu1uO9Thnjfu6aOfWpC9Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727822754; c=relaxed/simple;
	bh=s9/2hEd5cbqmlAr7DEa9qRsvon6h9x6DLyh1sDu3ZKI=;
	h=To:Subject:From:Message-Id:Date; b=EFGQww8/FzOU7iyEvbFV1xo98MpwbPjUT/TraewfMph6Gzyuzhtr2vzHbajtTGLnHTX8OTERhbESbJ57kwLOGNDunHZ8tn6GlfqKd/eOABmpLAHTQiJIewpYNymJMk4ys9wqVUieiqJZaCuGnDUOzIwo6Nia6qLyUYYLzHy8/Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+15XZPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+15XZPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C028EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727822753;
	bh=s9/2hEd5cbqmlAr7DEa9qRsvon6h9x6DLyh1sDu3ZKI=;
	h=To:Subject:From:Date:From;
	b=c+15XZPYxrP97MlHKCx8KfabK4fxDXpRX07DGrIzTAXiFBXsI+dXWzTcaetWEFAuu
	 XoOTGBg0He19X63wZZmgf9JETvZezBRyFdSw5flEktQ2+t28Tr16vNpA+XOJrMqxBL
	 f9ga+BoeUTP+3v+K/CNuMMsye+nSr4Wcc7bAefeBKGBSstRrHlxHt2skaI6zqEm0zR
	 famh1YEpmG3eiftZmkwfUX2q5aZG/u1TAP9oQ7aJXVemyACRy8Hn93YO1GpYYGOaHX
	 N4uOZwqSL4RB4YF2l2KTnFApgZyA6DWar6TPiCANNNMOX65XDBtTBzYjIAVcrI7wy2
	 uj6/DpMvtaSfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB498CF3189
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782275365.20696.8361205608052320247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c83bc4694c8371a268d06ce973b9c2d4697d76e225320e44ff1f476d89b2063
Date: Tue, 01 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727822753
