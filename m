Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5B3ED8
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723511754; cv=none; b=sa4+80HM6Xp0Tu8+h/K9WLS+VMZEyNE/mwT84oVMHI+MrZstSYtDocnIaMGnr5FuL+Y1e2aoOuO5U1j/6qd00PngYxdMgUEMGTqk0OCJzW4QIXgbJbS/0lhO1p3xtPFYtPFilKJtMTHEePNwNHZv4pUeUpTScXn8NPvUhheyuVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723511754; c=relaxed/simple;
	bh=fg2OqfOIkiKpWvMnEtkCzWj5VKGLVU4uexkEVoZ280s=;
	h=To:Subject:From:Message-Id:Date; b=EDNPySVUi9IEXWtz7PLxPfUPqAdsoisWbGzIzldt6qRgnE/XYhn0w4lInvf1aMsZpgnkc6tuaRskhQRCI27svPJ/+ZUoA95D1jMrD4ApZLARQeeZ5uM3IwxXIOEUHmqiP5L/zMMFt6hHKsFb3cqHdZkc0FfIEgTh8ybtSH7F4OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHcVmK40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHcVmK40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA15C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723511753;
	bh=fg2OqfOIkiKpWvMnEtkCzWj5VKGLVU4uexkEVoZ280s=;
	h=To:Subject:From:Date:From;
	b=VHcVmK409s7lTVHx6gSntFYNOQ5L+NZBWEcZCEa5QsAUByrrm9hFBHmsO9aAJPRYi
	 rQKFwd1bPGUEfCwb4jSOolc+E9X7a/5IAcwhWHTxgQnolq/zB3pKZ22XRWTUkfEJGU
	 FerKfEX8Sd67qvNLJBVNYnP4lIvqu3OdFFMKlSzJpHM0QKOPdxifyK5yVACPXoH51a
	 wV5qm0z5am2QZYKEyBGqvrhwgvTlY2vPh9Q/3ojdHxlcBeoCms1ff4nUiCX4gMs7R+
	 K4iikMCiS7qmKJnii7BvB9Cj030MQroPL2dwmylvkg6tBk597oAB9Xz+wVBx1PJY98
	 uySSGAGSd/4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC1C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351175359.1981.17965024582791654495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df72ea7cd09389bc2699293c62d4a11b05893be3cf31fec68a6bb1658894cb6e
Date: Tue, 13 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723511753
