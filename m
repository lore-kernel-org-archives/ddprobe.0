Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5571A9FB7
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791005434; cv=none; b=XmhPpOgHGaeDfkEa3UcI9Fs4RisyG9ylWqUe4gKww5/ovW6cpcHx9RWw8YJQKNly1h3OEdRTl9kDIGCtJGGIffRHGmZMexOmu7R5h1yisNHnIgc6llGsxf69FcoDw86LyeteFBhxQ91ZISRabNb4CYEmhVVvSppQoAgi5ypVyg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791005434; c=relaxed/simple;
	bh=68BY2jYHyvFsDKmrJltA//WjVMLbgnCpNhecx+D2Qio=;
	h=To:Subject:From:Message-Id:Date; b=qkLBrbgIAWmNOtYQccyKVmIZ+ylL7D2lsE76eNYz6InAfGmyj3WQZi16Z0PDEMKSvGSMFaKl5xRLF6Tlay57cohItiH3560yQAI0YyNiQ3i06UHfVJkJ5Dsdq3VHTM/pIN0saalqHiuJ4w48nYjlZe5JbhhkRi7Ft346MXMMhN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjkSh2xO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjkSh2xO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97DAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791005433;
	bh=68BY2jYHyvFsDKmrJltA//WjVMLbgnCpNhecx+D2Qio=;
	h=To:Subject:From:Date:From;
	b=hjkSh2xO+T1ScBzuEXOvzXB0A1QX1+nXcyA0lJzMo/R7qOMpv8brYH4W9oqRBw7UM
	 Eu0Yb1F3ov3MnOAoZog7vRSdMvLojid1/nseoSP0QMA9nHe4tUvOvPNYYm1oE6e9/5
	 Y2UyuYk9ncg+a8DJJPjQ5dHUcpW1g2HzV0REWToxYIZHS6YJBK97I1TZJl/ngac75f
	 TZSaT1KFeW6TEjHg0I6uWOb7P2zOJ3xFIRRyT48c//l/6SzG+oE3woMkg2kp05JtOZ
	 8E0eiAAdg4D6q59y1JyMAXSIon2FyC6ktaVI5f7U4KVx2gChPSSgkcu+Tk+mZVuXLU
	 ff58AT6FMYshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5CCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100543368.29716.13620370206991283964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4dfe1ee83dcd3aa35039458f0b54725ee08fcaaf56cd4f13fbc82e58dbade3
Date: Sat, 03 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791005433
