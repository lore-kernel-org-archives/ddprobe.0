Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A9F397ACC
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803034; cv=none; b=OmzZjGffVottzbKVCcQpZIZZeEJ9mXUHAa6OKEOole2b0iN1r8nAkV9a3nK69Oqr1uLVblHCfGh93NE/6uF2phncJ2jch+77J7702JQZKclN5vWb1MNaSwNkKFTP1LUnvEDLprhmdmzWf/UFtEcMGI62PvX/i+y7wOSPX+6ff8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803034; c=relaxed/simple;
	bh=uyO+2uWWbtQKqUcqeoSqsQ0vAuXNX5f00Dr4CaWUBC4=;
	h=To:Subject:From:Message-Id:Date; b=NQn9RatScHsW6cZk13WWPga4q0SqerkQCWjsjJYZr3esjIsHqjkebx3XyMszVf8btTVuyN2cgR0/S5XSY4KHm3WqtDx3elN2aQ5eRrxjrCKjqDVrHUWJZZZo+bCRQnGArA8I0AkwIqJnTVaD+kcHCIMfA4WBftf+EqMfIvWFQZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBc7Q1k3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBc7Q1k3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC89C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767803033;
	bh=uyO+2uWWbtQKqUcqeoSqsQ0vAuXNX5f00Dr4CaWUBC4=;
	h=To:Subject:From:Date:From;
	b=LBc7Q1k3cgAx+h12VUO2+EwpVloVCfMG+82DWHfr73jv13MdrP7u0FHHBomj3FEqT
	 taYVdcmBpepxYQNTWgoIsF4axZgttRrfcuYUqxtVFspYG3ZMPZzzO/lxY9venqGpqQ
	 PWItvRhC1EKU/uegWkwAGLnTXK3nywg6W0Ov5/vvzMOxMhRrp2qpkaIDvZb340CC0I
	 Vp7PpoGBfXQFOXFq1qa3GEFuvpnbHnMbnyYMR1ZX+OC2fzcSl07TkpYJ09dRQIhhWO
	 lpZqsIvLy7B4lULpMBEQPDZuXGHLV9z5urNSPw+oXePIqu1FdUjYIZBZASq5iABY7X
	 +PCvqGnRlm+/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90029CFD65A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780303358.15774.6700603983940950142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264e34ad2954cc0e79bfd7ab1335fefac185faf1e2f4ecff306a5ddd0d865c42
Date: Wed, 07 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767803033
