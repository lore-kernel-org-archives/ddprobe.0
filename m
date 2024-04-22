Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DDC16C86E
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713826223; cv=none; b=Cb+EmPo08oqiZXwtyu6eYL5u4VkJUoDapgdexnwTVFKlD2B1XA1Zlwdrl/y4bAMY1hAf9X3x8b7evADN9lK8LTufZ3FyhY4k/v2bGh5XUFeSENEl8qijJQhQipCKM3vQ3KFjy8F/vJ5wDeT0U5kWgkduUPLdSi7SF8/duJHXnf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713826223; c=relaxed/simple;
	bh=YaNK80f1tQ5mToNLQKPeH7e7tPCq5sV3jZdU2OVnwAk=;
	h=To:Subject:From:Message-Id:Date; b=VZYaSkgg7N2l5ie/WrJEdDjHaKleXIiR5757OfiT8ieT3hP/O51Hd7KkimiRGMT/DHTSSUNi2pvwxRknJTsIw/9hBTktg4FAMda1JYXA390pdMYjeRAyWsU9g5XFQs67BkOZBh7L6q2H7/yGIlvJY8zUovJDrSeKmekY+WVFHeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnXbvh22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnXbvh22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D822AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713826222;
	bh=YaNK80f1tQ5mToNLQKPeH7e7tPCq5sV3jZdU2OVnwAk=;
	h=To:Subject:From:Date:From;
	b=FnXbvh22O1KmIB/SI+TtcoeSLnJ2loOEX8wlNGGcvtVyAKLbc2x4artMvxuaxsHKD
	 Lnl18o1x2wUbaRIjSDH16CHue6e/IU6CKAwU5uTCb9u0wDyij9pnlqGi0vlwZFmwS9
	 LwHQR1RIn+qeCH2incWitxdm4F/1bnj1BIKfs2D1PrOIyYSZRzEZ77UG18LE3VOh3i
	 nLSb4/y84RazqplfYVdMwbnl88aAAr/h1/U2R7Ba9ddLYYrN7iXavZjW1Z4X88WKLj
	 7mWELZlc05ZaHHw3Bs4hDL+4Vxi/qABVaqEe8/9FaHLTt+MkAx7ukF9nMo8IN3Ue/1
	 R0xNSs+pA1mPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AD5C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171382622279.2246.12427114696169880644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3abee74ab8395d0aacae09e10d09695f78c79f4da74e69f741a3637309716d1
Date: Mon, 22 Apr 2024 22:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713826222
