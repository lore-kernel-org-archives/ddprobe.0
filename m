Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A4921FF4B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745536194; cv=none; b=jHA6O9vZfoIbh09MjlFUA3ZHjQhD6RB+k/W/AtrZloGYbeUHXwL9CJ/910m1/naMGmR2tyb0kTNrSZ1gl2Ujmhq1UobZ9Q9O4WR/QwRHsg+zcVDrc38LvU4J2iueHmkixybsd1uJOa96e7bVrTnuf7x+w8LJP2+AHG3SOJnjiqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745536194; c=relaxed/simple;
	bh=QWT1j/tUiQuJiX5P+3Ks003+cRcazOum35857uC3De4=;
	h=To:Subject:From:Message-Id:Date; b=uqZ5+r1Qcz6ucGB0xo40jtF/EucdX1HR7E9NE7hc7eI+SoQA7Ifx9urbIaR/ulvQtgP2EaOI1U4lHjpsQx9pUJr3dMjzhryqN7Ai1i5dXuYJfUIcupmfu2F7QUDxndmmkFli8P4ysOXphEWlFSGgNcgH9p4jpciKH1pZl9I8rmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNlhx4BH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNlhx4BH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745536193;
	bh=QWT1j/tUiQuJiX5P+3Ks003+cRcazOum35857uC3De4=;
	h=To:Subject:From:Date:From;
	b=tNlhx4BHyJjymsRQNifynqRH/4ZFvlE/vlkv1WA3Febf1YZvr00P0/BEU79ngVM9Q
	 bREA36k/vCnVaYNlRX4ZIZhgdXXsgUzBlg+o2F+kpU5cmr5owMF3C1s1ziiM6Biu2P
	 Hpcx3BtZuB/Zax1no4ElCJ7R0klmLm8ULuBCXiI3XKi60rmqJY5IGw3zOx/vnTcHVV
	 WlcxK7h+BpK2rFiKXsuWZtC5SRZg1GC5YxEsbEWZJFTMmdQ3yNum+foNa0CWmENTtB
	 hCH8nDtiRkBjX0gZ92DF9uDNa+yuiVYqztdkvktOw8sUahVKvjeeYONUy9rXbOxzyR
	 8iEcGLtoTAHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78FC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553619357.8284.9379373077384805734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa7e008704ab694e6f2a82d9076e30eb0536f7323ee8eeca34d16c5e534e14b
Date: Thu, 24 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745536193
