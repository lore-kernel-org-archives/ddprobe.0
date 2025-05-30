Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399A013AC1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748602194; cv=none; b=nXoVctwrsG7Wc/3eRmDPK8DlHRI6dR7YgbkvfN01nq4GqcuQiLJfxl0n+7UaZNxrmW7WKOZRPeL/KY6q9Rs79w/VujUeuyjLuUUVHSfRerNSTOKtDBd2LmEhktJdEjFgv3z2HrT/YZFyRjC4lf7NmWpW+PhxlxW7eXDmtGU4id0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748602194; c=relaxed/simple;
	bh=tIMsCJSeuQMMLLjV7OcHHltFzgVroRfzOcvis+77NoA=;
	h=To:Subject:From:Message-Id:Date; b=rJPZ7wMD5+/sNGjySH/u2WzL3wRMgaV87wPfqFlpVhnZyjFFXOD76XTK41DDDBZjwIxol3baxA7l3nYywgEskNsy+Xh2ST1LK5d+kTDXqjObn2Ta2oUv4xCy4mdt35R7mBSPaNzrUAPQhhgTQ7mnTejZAQAKmYoa6GqQPi7nHGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+/BbjYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+/BbjYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AA3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748602193;
	bh=tIMsCJSeuQMMLLjV7OcHHltFzgVroRfzOcvis+77NoA=;
	h=To:Subject:From:Date:From;
	b=s+/BbjYdE5L/3FnCwhBkKAtZl0ozJ9CVQkMnRVg+VlXW5PLNOwMhjKac9iOvERA1x
	 k1B4qH5o4pQol7wAsHY7bPyRf/fxfv4ImdSPkhbvvpibF5oqgXerPOD2cGeNyWWvJw
	 P2rZX+6eBh5F54fNujTuGAX0Vzcdy5xPGEE6+jp2BoK7v9E+ZNHZ01Y21vRoldKlJg
	 wgpY36ZJWIoaDdQmQWXrfvrV6b0zwwC9Yc7e/x6OZJVNbyMzGPiHTW2PFjlDlzllIA
	 CnNDpTV2WtxGPmYfD0vFxT9imgCFGSlv8d5U1Qq8irLnmwEYu5qkAYyHuieRaJT8d4
	 /pFoex2terSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EEC5B552
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860219359.26885.13444257793933953611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9f1b6ba74e651a5a4b1c19bc1d1063d535a6dd28c06351e972ebcb9e9aedfa
Date: Fri, 30 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748602193
