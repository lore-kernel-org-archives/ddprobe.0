Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536BE3AA518
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786888834; cv=none; b=AvGt6A08vo/gi+PFi/7mBeOpUIL1O1ceqFJj314UOP+C49JbuDOzVK7dbhVRWFwnJT4mFrkOIXvleqUnILDXeAkt9xHvTFkJ718OayUIzLBu6qXSuBAUtkZPzJUXEXvhog2SYptmoBgHinAEs879DJFZRDsAuHW7pcTTasZ4DWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786888834; c=relaxed/simple;
	bh=GM3F482H9EEHqndPQxNJRhtr96wgA+CQrLsMGweyams=;
	h=To:Subject:From:Message-Id:Date; b=uVSy2lhG2jY/oaY0e3flm2LvNPaUo3EvSZRqc+8nHq4qdw4TGALO067P+zSfBwTk70UOq0nI3/WnG1i23ITMjg6Zfe/DObjEPWszNZomgxov9rmZWu/m5L/Mhnt3fOe8LL/FNPpTmKfyzAeJlIxsajaCga6AXZt9acZZeSw5QBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XACv91i2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XACv91i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0984C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786888833;
	bh=GM3F482H9EEHqndPQxNJRhtr96wgA+CQrLsMGweyams=;
	h=To:Subject:From:Date:From;
	b=XACv91i2TPMiy6Xhehu2pJC2nWNv9zgxVeZNCOnRchBSR/gMR6pQpMV02XfV29gAa
	 QwsCHh3JYXmDO0g2TZd+hcoeVorHZF67pc/WQgHInp6xvpPTNNjAXL6drk6bPkwM5N
	 JAgUcUshuQtsWNxP6qm3oS733c8wKTsFVUW3sI5j9V6Fk/H58sS0Xk6CjtvFxkNYY0
	 XhVZ71bvbIl6mp7wyRk/8oiK1kECPnvqEbrsMAV3h1MYsknH26FdtIxh3VArj6njHM
	 xY6kowUbi0quiaDvCwWjSxtYfy+GY4cC6Use+LnMgDTZqaXNnTnW/AWkjNOjaymMmN
	 C5gHOKQliJ5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB59EC5DF70
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688883369.22026.6229276368011502829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4459ff948dc817a38a6f73d3be22bc868f9ef7aa733c95e057e5d7b0f8409465
Date: Sun, 16 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786888833
