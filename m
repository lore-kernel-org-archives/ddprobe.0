Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA9317C69
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721649954; cv=none; b=VFF5r/bwleY5VMtDnoiVFt7wrHhdiQP/OCO6OQ8Jtf2s1BPoAA4HCwdXxtOTVuajRY0gmR6Qhgn297wWqVQUl095gTZGt1qMbVxF9rbdJabVLFJLJY9W6OGP4kzBNwzJq5Ij3ec2kwR7xhickmzGa0j5I1wqVq1zLUnpiJEn8E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721649954; c=relaxed/simple;
	bh=W541HzqBT9mv2R5At4cwd2LYbbMswwVKF8kYTZktuP4=;
	h=To:Subject:From:Message-Id:Date; b=rygKsoKnDvtRItuJc29nxpfVjEAssgmO6YdMEyrvHCaK6fYHRVnzFe9RRUylzZU4ojxK7YkaIJam4bHk5H7xiS9A/dfBUoSldhbKpGuT29gfZ2nuIImg6SnEtYLfJDZN2g/4ZX4QJ8HF+b3XjpaDw5Eth6gg1IczZ7cOAXf6XxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnBAiRRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnBAiRRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AB8C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721649953;
	bh=W541HzqBT9mv2R5At4cwd2LYbbMswwVKF8kYTZktuP4=;
	h=To:Subject:From:Date:From;
	b=XnBAiRRj0H0PyJeSGCu94/UYE74mswx7kDE4uQQ2GvF4G4sE3Fx6vZwKhFTBaet3W
	 A6NoyBRPHBtb9ot8Crz1UpfeICzODpv6IaD27ZneyrkGEKL4x/6wISACzyOOLSThkj
	 b5OLqxpHMp1DhAhfYfCosN0hqeTbuKW8HylRFmctMq0GD5GHmm08PIWxphQoexC8w3
	 aCNYjJml67KGm7IH0HeyQ9T2Kxp+b09b9fMXNAhv2H30lkRI6Tp8Tu/P/Wpnv6U+MD
	 LNo6hB8X4p3HbmZ2HJBCcDfEJdd52nY0DWR607ETeuM3FZBAssR9lIqXHZxYeJSu8v
	 PxiL2p6i3Io1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9820FC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164995359.12562.13320140037985646179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff2922481cdf12a6ba11b7287fb602cd2b6513c582b529b83ded25e215b38e1
Date: Mon, 22 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721649953
