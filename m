Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E7F32E6BC
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780009954; cv=none; b=DAmpHU6pt9xiU0enL3T3wA1jOaAvqB9400mXuNZb2hGWTM5PUCfUMEXpe1qVZn8on5UtLt8JOVkrMOPnQBxo+cDugzdLYhmuJR+OgokmdmZ7VSQPgn5Iuo4uQcrldRWQC+RkP0dlK6YpZYNJjmiqpw2TC3TVBtoIw2hJVcMdlkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780009954; c=relaxed/simple;
	bh=hHdHeKTpkV853aXGglagpgJ9SXGfoMtdnAh81biZtWU=;
	h=To:Subject:From:Message-Id:Date; b=hkpdmefcRenMll4ymn8FHoIbAHKwnd3mnaa6K49tDDt7XZxqoP9/b8eDJ0PSGnKWxUMiF4v6DuEq378Pv7HhITY/+psrGiL6w3JKSttj88JJhV+pbGCqk+KqKF7Me6rXpSFaTAWMTe8C1yglHru43DNHNk5Dehv3NUjNEPNBEHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBbd50Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBbd50Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C793CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780009953;
	bh=hHdHeKTpkV853aXGglagpgJ9SXGfoMtdnAh81biZtWU=;
	h=To:Subject:From:Date:From;
	b=EBbd50VtNVwLQpdtKeTHP/ZvHgBGKhULD4+YAXPNAIgYfW43AFXPUeB95ogExFnjs
	 /u1M+0qy3A6hcxenoRsdEOZk+hSpvqMz6cDHRg+/lcL84//qju3+8c5kJ+xFvG7I9O
	 Ge2y3gNKqC8Oz/jzbDv98LMgWuSwZcLf9jmSSeeAIDwHgXwHRaFVASJDi8w3Q/p4GG
	 KKK3trLCDLF9qPpTZxoMwWVnnvh2bXxwVBLGSPCE8diA4GnNzYhnPTDdAAoxyBbu0v
	 BKhRx4WWmsWXCAXvIaxWu2nW/+MDGML3TW/jDI+hQf/FcKshXYF+H/mhfeC4onAF1V
	 1xKVMk8pZl+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D85CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000995368.22009.16186109245114135060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa34b67dd8f435135fca3f0ba5a1ec5fe8a07a262ac2e28d2a5cb291244f4e23
Date: Thu, 28 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780009953
