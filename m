Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDC51E528
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710109697; cv=none; b=l94XQzyQEw5IA57aIA3kEdEkTQbKSqTT58FDEvuafEVU1dhipuqWyLNDREx0t+nZ8nNPCYqkLOUEr8Sc6pOFXa+SuV/6vCIw+ZH8kkSUxGCrloWcil9C4wa2y+eyT1SD/y2o312l2O5BSXT5QAO4t6o8B4o9rLdnvFwFSXJcQGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710109697; c=relaxed/simple;
	bh=6z0aOCLca58On9nVRofYjzft9702AGAjWxZFKTf2LuY=;
	h=To:Subject:From:Message-Id:Date; b=L4MHZ5Q7NTVb/fuPROXSM1BxOL/UPvM7fr0efPqVp098vqOTexz8c3t9y3atU26UVkUfIBDBpBe31Fvrb4NHNNl7vBhAa8srFW/nig6BC/zy8RVjyoh+jyZ5noqNkiw9IoJaBj51HTTWoxpCXqc6l1RYa53Lof9DfHoCit8PN+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fq6ptVTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fq6ptVTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7615BC433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710109696;
	bh=6z0aOCLca58On9nVRofYjzft9702AGAjWxZFKTf2LuY=;
	h=To:Subject:From:Date:From;
	b=fq6ptVTwuu6PeaHpcw5gu3FsD0KQ5CfAL7I3VdLRe0loOIsvJINYPrt7AWhpUDdwP
	 yWJJFwEXXDcSG5HDbYrwcuV12gmVgFn07EAJBP9XEkJ8FIE5i82Z0CmmuV/eBSjAqs
	 bTKspyPc4/jLzV2DZZ4lDCvoc+0F2JnF8vwz2HBZ/bs95dIvziDhljYhWwI90ZmxxE
	 0b01vyP6TTgpSMnvZbtidChPCo0+x5GTerCACM5y3mhxNAHtyRiTJwZuw5ofahwEfg
	 rccGiq+HZesxfrcNq2ehKAWYICSmmnCaFZnEeVNXD+5QXcZ0uXfgIiaemT7PcDC3ie
	 ato6I+QSRZF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB9BC54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171010969636.13833.8168412666050716251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca66a3ef1dad8c591e5e2d04b9b1d9846c11dc478ac33caddb31d25b08fd4a15
Date: Sun, 10 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710109696
