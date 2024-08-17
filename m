Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2873713213C
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723885554; cv=none; b=YhGLYMctRs1j9s2x2HzATastu8fkCoJTfZ5mykDrj31vKeGqpB8g7EC5BGc/HvpT0yLtNcUnBGknHdl4hG+RJ37dWlO5j6RCJQhTcIrog8C+3wOhKnN+nYM7jQVDSHttU11Glo0XQOfNWH7tZ9/+UCM6/+d1gDbGGArl2LIFaxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723885554; c=relaxed/simple;
	bh=QGtywIhT4UnfwJaUL6VM0xR3Tb1wI7RsQbWqvK/0Ek0=;
	h=To:Subject:From:Message-Id:Date; b=cDTqi190EgULvQhYCRgL86j7ztUDjMCcahBahgI886tHHsM180iLyGBZ+1jLr5DXG+gGCyoYRfKg+UYCJW/3bwZ9n6WyGgEPDYesJ9J8Y6TaGP2Jz8JbhRLM7CHrimuZ0qNLyBlvmHQ8fCvX0NAhnWaKjH3cBL0E7etKJ0JAvd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpRH8ZjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpRH8ZjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F3AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723885553;
	bh=QGtywIhT4UnfwJaUL6VM0xR3Tb1wI7RsQbWqvK/0Ek0=;
	h=To:Subject:From:Date:From;
	b=fpRH8ZjXiTEJwv6KsVjN79E8u1Jnor7i1VuoItKtEZYltA/1WSoE7hMg5DJVUzdjr
	 I1R7LrqgutTZ5Sk57YthnlG1To72C87NQOaPbIgYET3/zxv+wdHD0SHpOlS0p5bZrq
	 qU2cc2x10LyU3AEsKW9k6muqzLYaY0GdfDkfN6AskWswaU0+p2+cm4q4QmdXeaXAJz
	 7yRWEHQDm9VLJDZ2SY5FIGhx7C1gc6WkpJv8H+eM/JlkIE10nVystkhcWop8WPBAgB
	 IvNJh96vcivtWSe0TPWDFA4Yi1XKH0hmSmWmtgRTJ0q0yVn1di7oggqaTmhpieRWjm
	 vPmc9zlSHOmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18ABC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172388555364.3756.660626605907536481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e505530d3ce133b6de7401a1f9f4c3738698eb8d50f7330da7ac1d27bde46e
Date: Sat, 17 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723885553
