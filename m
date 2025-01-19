Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C272A1BA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737258954; cv=none; b=OzyifyEXBVX9/mLR6/66LNHHVa9KPLbfIovxsOsdS/EBitto17yNdXcffUVJ5Bh2zyawc5m/2v5PW2bqSV/Bq2ExA3YtGljAAbG4YKOfMNCVdsGgeUouwSzWLXnxwMR/92Q7AbK9rydx5/+Kj94qMMILVruwOblrPK3iohdNygs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737258954; c=relaxed/simple;
	bh=37XXrMyxFIOaYYBVnpyEjW+EE0VOD/Saj0wrzN6eUCY=;
	h=To:Subject:From:Message-Id:Date; b=MSJu1oc4/0/FyjwgHahn51JCv+vmRjvgG3NreEhpsc87MJPpxWvDGhFKkr3/C0eWhfXUOYzOLt3UStOCMWnQtuPXLyAfb4WLZvkL2GkpE8DnlexJ084rSn2TY115LO0STI0tTpjmt71+2VpazGPcqDngaPLtpamECE81bONUqZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXtIXoLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXtIXoLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE95AC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737258953;
	bh=37XXrMyxFIOaYYBVnpyEjW+EE0VOD/Saj0wrzN6eUCY=;
	h=To:Subject:From:Date:From;
	b=uXtIXoLbWNGE/DVkyHxsKUWW2Rsj2NvW1S7Cjt9exysA2IxUrbOwcbqTHV9sM89I6
	 jAlB1L+VvbN0uDJPQ2gYFAsrLuaKbylpKtF1EcJzclfPSGjnTqM0/8WGUJyjI0Y0Sg
	 8PI5W45so9xaSBtzhom+Bfq3uHR4OQ3Z7lHZH2I1jAqRUUdCqU/WehDZtNoePdrAyI
	 VcX0H5GUZuxzXMIAaDopGVuXjoI5H2hyzaa2j0Zm6CKD+7slfyOXZ9puYWZOy5AVRk
	 yQHCZJLdhb4nS84Tl1rJg7eEF33knenD2DMgiJ2/a6LpK8ND9bm4roaFTeMpuLISez
	 amj16Db96nQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6F9C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725895359.9632.7890924909508304038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda0620956e154d612246fdebcdc16137b7de9729d495ef8c67cbcc6cf649297
Date: Sun, 19 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737258953
