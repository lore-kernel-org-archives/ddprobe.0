Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE4539EF23
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780996474; cv=none; b=DAOwHLiNbI8ASjKf0OIcTHF0TGOW6y1HP4uJ8LF2wC4BxS7Yy3sgCyH4MTyDTp8NNgd8LCOtu72WFoXB+ZDLNMBAYECmTbTgG2guM9M9fRixDz9hjAgQHO9/uqSSVpMj4L8RvcvzAKDgmS2gVQ3/oz1HeECJXkT1Z7bhik0sya0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780996474; c=relaxed/simple;
	bh=1w8EU7PTlBmgd/95r2+cVOOQetZ1KfojE4bPo/sjR3o=;
	h=To:Subject:From:Message-Id:Date; b=NVvsuedM12gjQDdFV2h4BUJtG2TpWN7bVkR2gLVhQY447LBaOk58gPRiM+rlYPTB1eUd+mlaygI99j+rLuyoZEa3P/7IhHpaIdyxPdEwwUbiWxHeLx2kq3/zcrR4MTvWYmJ3XbCJcGyl7HtKWsYxGzaACB9cYacYyi1Xa5jG0pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0TTyPm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0TTyPm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C2AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780996473;
	bh=1w8EU7PTlBmgd/95r2+cVOOQetZ1KfojE4bPo/sjR3o=;
	h=To:Subject:From:Date:From;
	b=j0TTyPm9tJsBQimGz3+EE7qJu/PQ/epXVr2wRCwIct0DtNo5bFy7nvjwHDNFVUzBH
	 59a9oqoWH4jhh5OBf6uGJHDKXrXsMi4lAZ7j2csPQd9Mc6k9T5xSdwR0Q6PtDeiVhR
	 jm1nA7/o2ijLS2Ln9V84PselyqYevcyIrLk3OgYke0IyO/Y1poiqvw7k1LXnG+9+x3
	 uXfUm36mpu13H+piUbECXzPXmEEv1jQvM8le3sXD67ad1bgsJEWlvnkBISRk+n86CX
	 z7c53jFTdVqsfEXEWg3zTa6EFiZWF6YeaG4LL+a83E9c9z4/lZlfhNL6IBj33CsvBI
	 mo1aeuRMSxYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3907CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099647372.27854.7853910669730940100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484509dd2485c072af8a8a52fe29f29b6d55f000cc1d80ef65460f4813841ec4
Date: Tue, 09 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780996473
