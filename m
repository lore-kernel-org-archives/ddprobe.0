Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59435AD56
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714284743; cv=none; b=BQogdnJ+DCK4bwp3r4zgURzfvTA5Bib9djKUrhW3b3r/7rERVZgp6+Ydav76ruMnp2TZAHEfhqMWXoxo55tGyErvjoLXhMD9YUgt1zDF0HQmHShFrcUdMu4fyqecVTMRjfLaC/Nyq7ya6WG2vy0NoOmEFV7XwO63hiqb/eWwfUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714284743; c=relaxed/simple;
	bh=0Sc4EcmVJXkMIN0hfzXQkzOijgrtJspTinPni/5lTuE=;
	h=To:Subject:From:Message-Id:Date; b=oBYMezs5NqhNqFWHadM0pCWe4OWrWs+yeKJ7DZzZwDzH+VtWTff4AvkjGmGUlR7AkDyFkATjda6X4cRrygEAmfmHI9ep61p/GYGpPPLrNwe1UajFZM9bIfxeJ5xn1y6H4umIxD8tDBjs1GKhGpjSmSgaXWchZj9pjcF0jgJj2rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD7sDuQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD7sDuQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25D6C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714284742;
	bh=0Sc4EcmVJXkMIN0hfzXQkzOijgrtJspTinPni/5lTuE=;
	h=To:Subject:From:Date:From;
	b=rD7sDuQNEK0BfgqngVTaWFZYuxcAKvfDahGv+LG7ZiEMnRqH+0kycROqiI1fTt26G
	 poGphz5HHuOwHipU96pq24RR2p22njP6QHPP/812vLEAAoeL+1+xK3lzUFFs8Ui4Lk
	 lk4HURpHKlTfu7PZb5Wia8gKw9HdoSRNk3n6+R1WTYYulp8LMuzbq9PZan3xFYQI90
	 wdj07FSUK+KuBObtKGFLx+/are+w3O+nqkeisiqoz17wj+b55Jx6Ft6SlZgd86y7xn
	 YaERqhQdV9oOOGz2qipBdPf7Pvi3xnFt30R8oLNobKdEGtgDs5+3rNmm5F6zj6SgMS
	 m9gAkwXhw8t/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB97C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428474275.20903.16246521642199470295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c12141e750b9c270b914fbea567943d286e47d3dea75c5332215d2b4698911
Date: Sun, 28 Apr 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714284742
