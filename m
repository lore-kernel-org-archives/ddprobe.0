Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2663834B43D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768543434; cv=none; b=Qweck/Lnm7v0C5DOzMpRJ9zoDdlD6rtWnJsL2qaCXBpFfg/JeP20e0XgZGKCUX2HZxKFiDrPujiwCW/ou/6aan9t1m8/CVT5mcb7KtH+smgrd06dVdHuRJwn+rpoTnbwSvBPDlOsaJFTMFh0tQaNaIQxBpk4X9syZcAb38oRzcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768543434; c=relaxed/simple;
	bh=f8u/ALCHUICVX8PofVkMQ72q2DUAdyLxicl8yybKKpg=;
	h=To:Subject:From:Message-Id:Date; b=FMATw+L7Fr+onWmIZE87tQZbzQC9SU/1OtYDawSZcml7En/U4A12J3SDI036E+0qZE0jevJKxH9pK0m7TsPbNtXbtFFoeWhC+/Rax+DQlWAeAbxL6xT1U84EWeEnqiTBiiBoRkPgaMKX+ep5Cs2hMeJ5GGQwWyRA7mCB6LWU+Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejYJEZcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejYJEZcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117CC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768543433;
	bh=f8u/ALCHUICVX8PofVkMQ72q2DUAdyLxicl8yybKKpg=;
	h=To:Subject:From:Date:From;
	b=ejYJEZcXQaBZGxP3jDC+43Zg38gCX0KnEpRYFTpBg0oqvO7Psf7z+S1iDztjQIkDK
	 5M97fgIJD8IqM1qXvBaCgPzrfgYyYiEfShzpIYirIMZiz2XMDES3Uuy0fSennkuVqT
	 K159fOCspBAha+bzx7zaH5V0QASaxMHdWss7GOmvEcAe6QVsffzYXGUwW8Y+rVzqb1
	 5KVT3yNdrPgWNDkBCf8WvM7Cl5XdCVw1SZqIZqtYj6GgYaZZNfmXIbONLxW2T35NdF
	 Z92zi6GmjoUXazYEmYT0rwJ58+3kZqJ5JjPpC6DL8PpEqaX9IefKhQzISs1HB+SxW6
	 T9q6Qx15cZdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91442D4A601
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854343358.9387.2727063324311898189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc7b8c01b5a40c360a55900250ed096856c8abfd80b9628558877e7144b1073
Date: Fri, 16 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768543433
