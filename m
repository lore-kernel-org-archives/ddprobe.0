Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59316320F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719696863; cv=none; b=EykJiNNr3BhVtWch6bJvqZ5ZQk3MR9r04QnXPabEh0cNH9aMtYFyA9jx1ldjZF3+yMArfBawhnOa8cim/lQaGB9/PNRC/ocTN0SVqfIvj8UGx6HWMwhjGT2B5pRDMnWXSukQf5Jv2JhqbOQk2hUWPklXS+aIDfmuIm8LbjUMv0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719696863; c=relaxed/simple;
	bh=ZsTvDrJcxMVNSLYOqx7+J1vz2y2QSv68mM5ucbaCf0o=;
	h=To:Subject:From:Message-Id:Date; b=to1BEZDGb+O6OAa13dq0admWz9yOIns50f00qcqtJuLA9dWSKOQVoKBTA5Q8irnApGqODhA1df0A5gNp/rhbHYqDz7xpumG//vZp/DzbTN/hogfqQ5kWAjx4OBT24IFig44g2mult25wrMZu/4IFtFT0Cu5aZUqTwQcv24+UUes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV2Mr5nb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV2Mr5nb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE03C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719696862;
	bh=ZsTvDrJcxMVNSLYOqx7+J1vz2y2QSv68mM5ucbaCf0o=;
	h=To:Subject:From:Date:From;
	b=jV2Mr5nbh+1Kfvf60E+GD210skqu0dinuC+/BY09pmidg392GJOEJq1d3fZg0fErP
	 KUJLzPt+THmk2uy/PMD8x0RjLx7sVryppqr1OcQ5/4Auw9JMDG0Q5cWU2PjzuAAHBT
	 Pcjl5Kd9Z7MP7r4ADVVYQcHExJP9gvxMurzu9mQcqOv7+DuUrsBYiVyGx8fTu1KOv4
	 SuFSTPydKLCslWfUBice8Lq23nhTPHOVP6ux5HpJ54zU3INeL3Xjbv5AokTMvCYb4O
	 0eSK/0licacGXXmgrgjACZls2Z8yZgEVWxN8pxTlc+nmTAYlOOa6lQpuP6KphIMKB8
	 6OuZLtIdkiEGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE69C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969686279.21145.12311456120756930101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bb72b04ee2a0a76591c96f39f1802ca0c884b98f5ceb4c0459f2915a05f757
Date: Sat, 29 Jun 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719696862
