Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5650234753A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775749654; cv=none; b=qJIjJT7QrKHzj/nICRpMtz4jBjLrWn5szXL++7KVqB/cjGsz2MarJ8WcC1HnGmELm87Qlxaod4GNkj5pdo3uSAmWXXRdZ96atmJWA/Z9ZmOr0XXT7sq429V25FtCZlUWhdhQ4fAg9xQFBWgKHPVrwXRvrTQwsJ3+GVoq6d7+rX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775749654; c=relaxed/simple;
	bh=TaOwch0PQQGtTDG/6O6qSCOWlitBRFItGrcpso9w+mI=;
	h=To:Subject:From:Message-Id:Date; b=eEkxKNvIo7DDGLyRTCYCQMwnjwHuHKfMXFssBL7OsmCyUcspusWmOJi1llYlnF0zUdotQ3DQ9SnQ2OsTaZ1wqceQWnRXEbcyQ39ge1s/MdnXMrqy3CW78clyuygrFwI9QyibUV6aulJ4MKEj+OIpjkryhctPvZNZDKGQ6C5ax+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3RUMt8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3RUMt8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD90AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775749653;
	bh=TaOwch0PQQGtTDG/6O6qSCOWlitBRFItGrcpso9w+mI=;
	h=To:Subject:From:Date:From;
	b=I3RUMt8wp2q9gvYNW4+NhfJZH24HsLZ05L9+hbriRQ2Tb1ALxkH7aiwXN8Z4AQ4JU
	 9CLSTkuacsd/r+iorZthxrpYH2DK71U492Ehcm7IBc99aNh60tJ9UOXLmdm9fOkfEG
	 eFJxAfV5hSoDx2edligiQR2lHS3UL6fYWWdn12eSLjXkskOmars/W3xxKyWLIB2g69
	 180YGCD6InC8MbS/0q2gs6jerY++CQ67Gofq9fVLTYPafybh9SXR1ecv+I1PLpdx0U
	 qwX2EVkUXPA+MCrEQP4Ha17wm3HtyAfII5AcvOMnX5FipfyuMBJ8UuCj4xHVeU5Y+V
	 3pYVgVL138tuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD823F31E42
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574965369.32420.11491455899099121001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786ed1575486c419c5dc75dea7718a8c018925b564429adeeb3e745df277dc29
Date: Thu, 09 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775749653
