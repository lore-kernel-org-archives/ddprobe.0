Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AFF279DC8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766062434; cv=none; b=frUjqpgQtnmg5Abm6VergHhZCzwq56clr+wUC6BX3zIKB9SyuhjZUKy7rbgIWN336NsvxS5if4WzeWMkL9oq6EGdNM+JMFGzuSNePzfnPodCYdQr0nu3XIv/usv2xvub1FyYbvoY2k8SRUVSkZGWamt+s+iN39cHMicXyLAuUJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766062434; c=relaxed/simple;
	bh=baAzhw+ZkI5RzHRvC6DD9AWqaTBp9cSbA+sNs+QEwlA=;
	h=To:Subject:From:Message-Id:Date; b=n/ssCYyqDV4cjcNbcuNP9QBfSQeskCta8Cbp4crf6PvFSF7j7aW0OBFSwdViTvL5xxsUwQ9dns4EZT1n81gSYGjiw+3HBGxXbCDXhV7pqdmf2tzsKjWsapZB4g1y2Y5K4Ufd3nIh1/6MBQdG+/a5GwSo5WE7uClvoJ6Dw/VD674=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMREqfhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMREqfhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766062433;
	bh=baAzhw+ZkI5RzHRvC6DD9AWqaTBp9cSbA+sNs+QEwlA=;
	h=To:Subject:From:Date:From;
	b=mMREqfhF9Ze04NGshZcjEp50H41cSejIb1KwuPdJ+JwAJ0cMUUpT/psXECeBhgHjX
	 ebMrne4uaHvvb5d52pJjesD1fy2uLW3xVi5OVdnQWarRcEUDe6Lsp6hdUJkV+vbKd4
	 abc/xBiKJ4rZcEl6c+UxL8Yf4AXP8qvuq3QIyiKInJbJ66S2iTySwqKtsHzGBe99ah
	 MEYNoTJMmu2SH3aS58KTkdREzQR3fW/UdFPtROr6fdeNr2J3wta/G1aGY65AW+ypsq
	 w9ZWuAubYrLhEmJ+pLjclv8cIbWiI0/1LxGnXuS90t60zqpIOaKdQazBJn9OXtnZBH
	 lUUNnjTp4t+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90723D6ACFE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606243358.5746.11466203430442016126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a023326c4f7d50508711bab993575f03ee4838d22f12e4ba6aa20d3b096b1349
Date: Thu, 18 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766062433
