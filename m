Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503F513E02A
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791648634; cv=none; b=fp4CCAo6xRLa09CYjizMONpj2RRRAHra2Od9j+CM7CERwr08jOXSQmtq4lYntPDwRgCXoKCJTjQ5ZBHdzSxTfp+lTlihYe1I6AUuYPUZDBYVTsfpQhfrW/pDHnjSUYsbaopttqjExHckcX1SUs2hNL1P/DmYpKDulYumMnrFSK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791648634; c=relaxed/simple;
	bh=Lsn1xs1UsnA6B+uHshf1PSWXswg6oOA/SnP1rEVH53g=;
	h=To:Subject:From:Message-Id:Date; b=Vo07KjUbxC6bUhWiqb88EqX3eZUQNeeHcZr/8QqznxIcFg67Kza1ubYmuxwTLox3YG9Tmed/XHtyj+32HnkZU2RHIrqgZ0ys2x78dL99LrfH36FZmhYo0AdKzC5su7tGUElypmtjYhmZ09OXHTus2Pjz944BI1jsGfK/FkMq5SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taK29etO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taK29etO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C54C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791648633;
	bh=Lsn1xs1UsnA6B+uHshf1PSWXswg6oOA/SnP1rEVH53g=;
	h=To:Subject:From:Date:From;
	b=taK29etOzEEjCf7EQu5+/nbUYGFrZgoXpjobCEx0ILivxsjWV+lyAwuXITpForznf
	 co+hfgmwWYBViszV0+DqSmrHrDNTwqY4FV2nKMJVUe9HgcwFmUAGew3673bPhxsKOd
	 MPY74vxnXt2mZeiZS7p/Z0JHX7EaRwz9ncSydXkBjJStffB1T2FHGyzR0r/IN2Vdg+
	 Gnwbjcw5t+3ysY8TbCYhzJLiLKgnZLCScUdoqZ82UtaEB55KFA86EL4Jd75mhztM6y
	 91Wywv6rAyJNWeuIy/7EsngzFssKfWgn+zNAYzOE7r6pTgbayZurDRLZkOhIzMHggv
	 GDZcsevlSJIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDCBCA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164863368.8373.18346907438380361627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f621ff866567c1881b1b4258eef4cdded6dab4ac0e16d7ac33d449a4d1738e
Date: Sat, 10 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791648633
