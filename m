Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4552B4D2EC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788632434; cv=none; b=tMF1rGJPhaCBBmv2K9rCdlIlHdi7DHhzzkflbBtX1X3VlbwF1uRIxkcL/AQ4G1VYLo9WZj3yNy7MKseWMSbOJefZqdO8WIxJ0pJKTmOlmLeX5yjb8VTa6p1muhJxMNDd2QWxRBWfW74aiPishCFox6Vnog87MUUoKa6HPqZOjFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788632434; c=relaxed/simple;
	bh=hNEleAuaLlIXt36fMmtYDJ4ZpCzzilzjFjSXAXXIiBg=;
	h=To:Subject:From:Message-Id:Date; b=eEJsrOvesJhPxqpTI0ZVHIRH55iRXybQJ7VHBvolfPad9rXo3NQWCsD9OdAc2iYd6TcJ1uNj60uimohCobJVd1wHcLjE+FlmO8Zxt4i/ZWUBMYum+UpXLSOaibzbT96TssLA95Xr9qNfs20GLtPnDCbNIbfNkGdwMwZYQ13iay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwng4NZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwng4NZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB36C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788632433;
	bh=hNEleAuaLlIXt36fMmtYDJ4ZpCzzilzjFjSXAXXIiBg=;
	h=To:Subject:From:Date:From;
	b=hwng4NZJg3Cvp+jhgzp00YxdWwGnoBEhkQH/we1azxOLdqqCTHOy8ildFd5jkwifW
	 DZL4qrlMggOZlPvHSQ9spJtjJVp58gEtrqfvtVMSi9eadVMvMrTXHJ0/OLHMZCkUh1
	 c3q2gCOxZ/tuFjXNV2DxHVhBaKRwkQ+WP8c33y/QhjVBnt0eWuJ8mH9yI//CDNRH2L
	 Y4GK4zPP7VP1s56zd3UoGdnxpVs/XNYGfTxbBA5JkvqzVH+IFkibnznlBiFK5W4amV
	 2Dc+1fZunzxxkDOGKe69jGty8gMQQsQxAGrurpH59lj5XKF8oqIoW/BRYEBwLTA8na
	 fCn4rz2UfV6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACF5C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863243368.20414.14055942461211898199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73529625fbd963f1104d9796f9295da913eb8f369105aa3f573164d3d05ebe5e
Date: Sat, 05 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788632433
