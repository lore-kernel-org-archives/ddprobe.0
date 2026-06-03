Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBE93D75A5
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780454674; cv=none; b=Qo/54P/jcO1VG5hgJcuaSpvflrm+8SGLiitlcaoQmteDxDe2IqJVI/PQkqgDzolXlBRRfSjRkifEW+2uXgKPo65TRt5zNUByHalTojW8jOumuZqdyryGpWKbh+eAGE9+ZLug5hYFxlkw4rMy6frZEeEBKr/MQMUODvHowYvtO5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780454674; c=relaxed/simple;
	bh=5Cg1nUdaR1FXV1Weg3goWa839CD7dbRwm5ihjBWDCRs=;
	h=To:Subject:From:Message-Id:Date; b=FuvoR/GDHTrzeRNeS1LDgI6ozlP7BgsTl8iwGoGZeGslCQyhcJruAr6QTIhVx3N4kkntK0YbrAuVLrZDIWFRXVcOcoPgpQSZRpg0RFobrEByOE5poPvci4BPQ+Y9T5POI+FGtMfmWaoPVBkyhWQY8paub6lncd4daRdOkZlK3Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9pCQoPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9pCQoPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15CEC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780454673;
	bh=5Cg1nUdaR1FXV1Weg3goWa839CD7dbRwm5ihjBWDCRs=;
	h=To:Subject:From:Date:From;
	b=S9pCQoPK8M138HazSWET/j2xXkWPPvmgmYV2C7DGsj3CRz8aBQX3aX5WbNKRAGj9I
	 zB5taGljUtNfHepin9TClSkg2XWTbjuyFhrQ/PRETIaCtdgG2lkvZcEWunM3Ijondr
	 /+Pv959H/y2f3bujKIJniqoGhJfg4duZgxcoBR+RB4WYk5wnHcjtzvM0tBbsKoqQcu
	 feLJ+QXFKR+RIyX3ml5FV188RW57GVcZCZf/mCNsgjwvmA1KJKBNgHY5U/jcgMqBKc
	 SW7PMu6EsAH5eeFgpzLHNR7MNMbhT/SiBx3wVUhs/XGBAM1r/mxsUe5GeKV+RDDjJG
	 ckg9oOotPE7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB652CD6E68
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045467369.1728.13245292072111376141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71898c885b83a2f9ea92d6e1977602230d9d8e7f02f1e61d4d2f1ff1ffb3a911
Date: Wed, 03 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780454673
