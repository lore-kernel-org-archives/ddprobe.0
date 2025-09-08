Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6702DCF65
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757362794; cv=none; b=gCdB5ukGvVHalGDS3MMuALK+C3zHhq2NeZsrhNCgicX0vsFGli9D8OU5bYpRZ/RrO18BG0QSZE3X/F1QnCN0Wtvn3VznbqgmI5IRZDEc28UDrEZqBzlPMVZ8wkKiV1vKkummTDHh0+vQ7K7/K8UXrvVrYlszE1s3D4r9t7u1qIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757362794; c=relaxed/simple;
	bh=5rt0gJ2+D4yRW3E0Kal0eoUoNWnmGLbAcodzED9nKp8=;
	h=To:Subject:From:Message-Id:Date; b=pFqwG3fsyOH5K8GP72F/4VdjZXquwdRQjt5CEvEWwkYjEpT5tes6tnF6UgMjBQ0DsoJQ3msV1jD4enApSFq3JWirkytBYi98riwZFUQrHM4Xq4P/wEkrI+KpyiPw/sR+1bxWmga3u8d8FoJhIbFpGV2K7oDP2iFvnTOKLHrQTT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs1z6Nxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs1z6Nxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBE4C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757362793;
	bh=5rt0gJ2+D4yRW3E0Kal0eoUoNWnmGLbAcodzED9nKp8=;
	h=To:Subject:From:Date:From;
	b=Vs1z6Nxxjock9Oyyskk7USNeh2kttXbWDrEBwOsw1mkLPY7Aap6tG/ekPnInA1W0o
	 wiTZ2760Sit3HLHN1vyHrvTrqlAD+IKi0pEYwpI9bUtNWAJLS8D+h94EZcWU5nWkR/
	 bAKaIU5gfRMkXCIaWyxk+NOg3cwZzO42kEj22cOSUeceSVRLfqjdHPuBYcDo2Pa/Oq
	 YM7dE4wOT7Xp2XHjU24iEzjbcjFxiO82dN/bdn7dEcoHcUY526TTV7wmpXfnxOJkzU
	 7JLIPz8PI2qwxdKlEWvG70D9naiKVOo08FCNDaY/JCsBLibkkiNIdOfJ0AwFbwYr+S
	 o3ADitgH9hRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB65CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736279358.27763.10515813671463809868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ab6e2d753e8fb9225ddd563f1b5992765827e5bd7499cf89ef7cd34c372089
Date: Mon, 08 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757362793
