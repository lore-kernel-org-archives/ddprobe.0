Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583476FB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720749443; cv=none; b=fZE41Sn9e3KcTCUedqWdBgx/KNaCmTqFrig5hRyoUdjOhkSGJEqEFqIR85v0EIEdqmebveyRgTbLZj7HMKotDSS3GCeOvJBpbMwvidao1t598iP+SVfgbzhfKgbvMp7/1luyz03vxD9zE8W6P6jftrIcu3YkGJ3AhzYFiZBV7Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720749443; c=relaxed/simple;
	bh=XwWnqV7JgAUzB0S4DyPcpq9QBvLGUvw3YjY5N6lOzFg=;
	h=To:Subject:From:Message-Id:Date; b=AUDdIqKo6aioCXPyRVwk48yP0i7/17eKnE1RdVirQLTCHY/qMpDdjesRGCDLMeNMp3Q4daeqasdIyzxH+eTlSOWOVeqHgI1/NI28RMPZTHgkogitwVGRQbWJFnzw34Wi0wZ1BhES0NJMIB7+R8/uIHZo+XsXRKaWGP5sVpaJ+qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe11UDY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qe11UDY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF141C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720749443;
	bh=XwWnqV7JgAUzB0S4DyPcpq9QBvLGUvw3YjY5N6lOzFg=;
	h=To:Subject:From:Date:From;
	b=Qe11UDY9RMVU6d7yLQXIj1JHoHsPkvySZvd7m9eI3GOV4OP2KJfEHGkMMl0ZP2Bh7
	 rXscOSyDkRpa7z5f9aCWZOMjOUYWlFjsaR6sY4kNTPWstcIeFzv8Lbkr3GKJAV5o4Y
	 yxPHSpr8JvlFWIo4G6iQ+BlEgfKIBG4TGL/77i9WZ/noke+2GX0pBWPFg0pFqacgG5
	 io7fOch/IMZyitKPnEzdGlws0BgD6CMNzD7p0jrrYoQjRv4M95EtB0GOTO9XGjYlrx
	 ObrWjXdaXklzERu3ItqENjtI2qHqrrQ7Y4kf8RSaNendu993pmnb/Mor7pLvwC13sp
	 2NNIcwTuBsF0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D536EC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074944285.20738.8605721089748084578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f68877ebf00957aa2bdac1db8e361e4e2482ddce0ce74f3df435570aa706b3d
Date: Fri, 12 Jul 2024 01:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720749442
