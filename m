Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE1F312812
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763403714; cv=none; b=FtAXp0FQWhjyzdZwExPLgOjyYmdqrslphhAQ3pSB/VRUKhlE89RMI9DkLShDrOYtzKedGR8qAhrCWFtbLvwZqHvXrQYnhkvtqZofL+rgEVmqYK7rT38FdvfVqrOWUbzYGP815x9u4n5Q8CMP0w0q2cxuL1AYkmhG+I7Mtv4nNmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763403714; c=relaxed/simple;
	bh=GF2pDL56pisKokuGFb3sh1Qltvs0qMVIjSOZncCigeE=;
	h=To:Subject:From:Message-Id:Date; b=Vm9b6NL/o/wlGVrE+ozPYj0Zko8/ByktJW3B8dUL1R1oPQZR4siyVAAvsNAd6kKlBx97bq439eIYQNhHIX7SEMkzwidZS9lyodxmSjgavN4de0FY4OwvwH1uqTRQ/oW/5QGtg7Fr49Ygy9wEWkpBcG4Sk4+Rm+yzvLsxH7yIE90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h13CbpE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h13CbpE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E87C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763403713;
	bh=GF2pDL56pisKokuGFb3sh1Qltvs0qMVIjSOZncCigeE=;
	h=To:Subject:From:Date:From;
	b=h13CbpE6cJ1jh/n2AxFbaik2so3N7OkWwIzQKb76b0GuKFkkEXra34VeVXLddJo46
	 adw/OqejwT0v5eBYL8YlU/BJ8fibHPe5EXDHKmmiHqB7WCzFeLcIjNVboiZzhUSHxz
	 Ec23/z7LE5P9BeZaG67HHX9oRRWB/b5FShkc0lJvcJCSvkNJPTUBRsR1dalBa0aeZq
	 P1hduI8Sxn9KKjMMuN7bWGE1utRMmNrMBvKbDJKVAnL1gwtVNEWkbg9O33B+R08PiE
	 fSn3x1wy4RhmqcwtvLzHFJbUDPUhUO56OGpw2kuNNlDrJX1cKZhngaLDAkJOtVXzCD
	 jLxrjAvjoabjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E3CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340371358.6616.2638754524058888971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c565ba5f7fd3855ca09c8af00b3ab36695f342d0a3087880e88d0167afbd2770
Date: Mon, 17 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763403713
