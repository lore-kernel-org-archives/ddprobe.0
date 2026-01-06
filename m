Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E421E868
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767704634; cv=none; b=Tx/EG8PNPd0Ki/BOfFbot18za4JEIZmRxv4uGQk9bnQSWz6jp2XG5TkvM42XK4GCIKh8u2STkFeM0TlWAR5oFik9omrFF1bEGKDxWYciidZRUJQOc8EB+vbVnSEtu/1G4YBxu/5xGasnplvLa3gZH0tn/AOV9sahALmNaQQrDbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767704634; c=relaxed/simple;
	bh=DuwdL3CILleJb/depUIJRZFqyNyxqjWyg41trkRO+YI=;
	h=To:Subject:From:Message-Id:Date; b=UMNmPTmX3d1yKyyJCu1ncZRBGM7K9k1U+dc0P+l0U+VtFt7oV7ScJ2f1FHUjhK948oTYFbCIYG7EyJjau+qPTPDvROC8+Zm5EzvOsa3ukKFJ+ktt2kbAnoQchYFatIgG8jIIhsNbdG2NB6n7s4YwCgEmDSNwSuiCXSrFjxHNZi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B24zpODq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B24zpODq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED42C19425
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767704633;
	bh=DuwdL3CILleJb/depUIJRZFqyNyxqjWyg41trkRO+YI=;
	h=To:Subject:From:Date:From;
	b=B24zpODqnt5SbyulMg/xaT3fKYQQzy1Bp1Y7crQL6bUDfFVAPGyhO3z42Gj/leSva
	 n21vrQ3VIX7Q7/NZHtzb9fRukRrmKqpo4hEzu29VH/jPbEUq9jVEBISyQQxm3/t/cZ
	 RILMGjO8SRp4MHJ28FpgjzrmXY1OOTVx5JUppOoV19zZ2dhlxO8tQD4pXjIo7kXnXr
	 liOIHaAAHMlnX77krK0c4SI4el6CJ3n7gnQyUmxUSOb1qUVrOyoAh5KY3WZ3jwVkRI
	 RO43kJV1AQeBIQkaA0cYc+Y9ZIwhFrpGORxYNyEwCZsj1xOn5KH6otcV2Ih+UAuRGm
	 Q3jCPOS1U0Spw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91397CDC196
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770463358.1659.10732792078976286823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a0556d81713217d693ca6f82792d0b6f24526fb74ceaf4bbd1ee5add3d03a3
Date: Tue, 06 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767704633
