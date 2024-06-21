Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FE47E799
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718937683; cv=none; b=XPCEH/stiDwAEJDWhP3OdzejstLjfS5aa0azf3fdd1d5VfCeYBpmeEz+AdDcRiNfMzVYoZ7u2kGp6Cy7nrrK7weIHTAxW63UupmsnQCl0qUB3zCuQt9U2UQznGb3H/7/W6awBBWSTMFQ2Vc2ydVtKyg7+hHnMii5+5yAP5WdvV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718937683; c=relaxed/simple;
	bh=QCYF1pzoPnPmwOZ0/gX/seyQX/sI+LI3RXGTjLre/OA=;
	h=To:Subject:From:Message-Id:Date; b=P6W2yMR7Hci7gVlOI/MSXs2PF/YpX0GONO11I82IfRWZlF1NLxOSbxdPFhQlarE1bFUZ3lbT+M3vZWlNwnDYdA5x2tmFGzNFBw1+/KiGr53f7QgHCS/s6Vr0ez9V1dRXER1JXTguGwTEOiZpRKBEhLUsmRw8770vOGJ2oSCSeWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk4MBk0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk4MBk0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 384A5C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718937683;
	bh=QCYF1pzoPnPmwOZ0/gX/seyQX/sI+LI3RXGTjLre/OA=;
	h=To:Subject:From:Date:From;
	b=Jk4MBk0ARLHPbomLyOAPVLfvOjupbV7MdkhTJqzz/4CIYYTbyd0h1/XQqq0PAVx37
	 dViR9h0O+BgCevyijDyrLQRK3dcCbJCm5mk11TdxBEUamA8tajhouj2MoC2hzRXqL9
	 d4m7+j7sjan6ydPQnw0COXM4SqlTzDPJE5hx/gXIzkNUyOfwe3Gx47jKAQabeoo8Tt
	 JssRch9DyW+nGErqc+ZxvVtkVuSlAqH8/22E8AXOsSvowih4e9edRmOTAcrx20QL7v
	 kfno7UodhDGJdG8FIUt1r/n/8Kc51mjuxHksKm9LgiCzUMtm8aEvfF7kKT0+wpueFm
	 pqhOL73QkJ/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22A4FC2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:41:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893768304.31551.3354437415743464778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbe04a4fbd51d9487c49b4f5b320a6d9e5543e7fedded7e16a38405f956a378
Date: Fri, 21 Jun 2024 02:41:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718937683
