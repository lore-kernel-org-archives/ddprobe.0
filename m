Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A3F347BC7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769120634; cv=none; b=jvsHnSPw1WXu5xO43Y4Py7nOkbabC7SwMzymF+fHp4pk1+9hHWCNBf4TGfX9xK6MkQBJ6PToPr93L+GeuGvg+6NaQ/cibZ9JSr/4buVrkBMpF1E8QBetJRDjpJ13dk3aaaymH9pO+CpXt4ODGvPQub/ubz3QX9NqaWTAR2udzeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769120634; c=relaxed/simple;
	bh=bNMNEK2lMS6XIPvDouMxjVYeTVK81FJzXBeT4F0KMpA=;
	h=To:Subject:From:Message-Id:Date; b=utN7555bAS55Ss8fUUHoGBvc1AiG6GtpAAqejGgxLmRsQtQERGWZRA9oKzPG1wq1wIgLS5Mqspxd3BBBOztwsVX2mru2vg7XXSZc3LPBCvBWpdmbX8FWeoW+u4x+sPTzYXc8CB+YARsNsEDgCIOgRECHX7JjU0C3D8/prhvO5Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlr2KdOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlr2KdOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E2FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769120633;
	bh=bNMNEK2lMS6XIPvDouMxjVYeTVK81FJzXBeT4F0KMpA=;
	h=To:Subject:From:Date:From;
	b=Nlr2KdOXSP6nZCaaskJfDTBD0ju74jgcNkIvY35v8JPn3DLS+t1+bKHKAfLcameE+
	 He2P5uZBtNUkZjG2CgwDWNl/0Yg46hNdgKHYqCJjJmn8MGtrsp+oR1uD9lfbcfje6E
	 DAVPQvjan3g1gC/yzcYsP4c3X/CJ0w5Qfx99wrJAkOiLuYrolhiLKMnBiVfGq0VDna
	 6pDsDziYr31LnvEEJ6VfGd+VMPJu4otN48luZPw8h2RvijI4+A/u96Ja5MZpD/fmdh
	 MoKe6Ln4GNmCONOyaaNCOlxZscuu3sUFsxYkeZjXPcjPWhFqkgY2Cffis4inInrzGd
	 O7gJcx62YTvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC3D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912063358.11356.12146286825931070932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1f04a75fcdaeafc698b45d5faf8d2eed1aa872fe78ce2da6a2150d3c22e62a
Date: Thu, 22 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769120633
