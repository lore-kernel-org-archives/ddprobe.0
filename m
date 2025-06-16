Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D75123AD
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750042794; cv=none; b=KB3hRZ7/ZEvP1LHMwVLnXOri32J9JxT5Jff/K3JVrFckvitj7DHswbtt5tlkFkM9Pu8evxiNflCUmF9dgs5iAghfJwn7YyNODylrF+12ggZ028J8c3bgSxXSUceJTxLnf6BpVx/B93K8G+mHnM6MLDupArOJsQryfJoNUL6qd84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750042794; c=relaxed/simple;
	bh=E0Jwp9C+50S+ydj4278O2D/HuWaLz4xBxer15FjuVbM=;
	h=To:Subject:From:Message-Id:Date; b=s8mkdTYC/DzjVyIeUm9c1ZK4jSur146ULDheqkKyeyae2zm48KUNFuehSJaNtRtugrhZQVftj8f3VshT0q5JiC5PYdLYLL38q/soukjFMqQrIiZ3VE0bPHFyCMnIfqTGl6WBzIUYkoCQJCx7WneOBfBm0/xHAtfoUbICjCprBVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nstvigSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nstvigSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750042793;
	bh=E0Jwp9C+50S+ydj4278O2D/HuWaLz4xBxer15FjuVbM=;
	h=To:Subject:From:Date:From;
	b=nstvigSej3F8tkJaWooYiC3uPzzgomorLboEBETozY4sPU8rnQsdbQda7/sJQgWuQ
	 1MqKMpakuyOtOCjriCXnELH1iSR9FHsNofFNtG69+Ba8lM97gzEVLD7MPFZoBVF6oh
	 wf1zmmz+RiPXFPidggy4fr32ZmYtkeoKsUJKQ+xbVEWndu8LXWNwCNnSqOoVRuVd4o
	 K9ZWoIVuIpgHMnwh9mhjOlD7Wmx96HlKvKu95ilkwozl9cKU7O1Vb+MF0LzZyCeDNi
	 ZZGgyfLFWDMlCOsnMS8KALokTtQ5hyM9inVJADRmVCv6ilbRcZq2TgnGlyBwfhCJlR
	 WkriruaKX+Fiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95107C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004279357.21444.969725177283340494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b11ce329eab28ca1c4491530f1a63a65d1166d51862c81972094bfd9536ab1f
Date: Mon, 16 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750042793
