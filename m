Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B418535A8
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715547743; cv=none; b=WcfuzWjx6pXiYzbQavCtdjbeNyrUxtETlb5m04rBL/asiNvW+OVxdtE7nbd+aWHZQf3wwJ+FmkuUnND2NtOanFR50xXP2qO1bVBcJduxiLmL6dRzJHjQFqLdnOt5ZU0ChBmE5b8FaSusfL+0jH509Y92MZL7bRz4rshnl2clljA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715547743; c=relaxed/simple;
	bh=mTy7hIA1fgcTBtmWFe44n7M49Ar+LcP6InZ1MreLMmU=;
	h=To:Subject:From:Message-Id:Date; b=Ucb28m6Q+1JDrNEWIe3432ffxTa5coCR+NAVBhnP7bI3+mC5GBKgFwWzNPQY2C7AydCtYg3x4cXkYm89EIciC3I/E8+IuTxKkG/CPZI9ZyS4n7OKR9M8updmWSmAF6rs0EaIfrlh7OarSz9tC7+ePsuVIKbwnpkjfMXP1YQpa/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ05q15U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ05q15U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE80C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715547742;
	bh=mTy7hIA1fgcTBtmWFe44n7M49Ar+LcP6InZ1MreLMmU=;
	h=To:Subject:From:Date:From;
	b=TQ05q15UJ65GTr+izQUlOpn8/SRlkXWdFPFtNGV1tC4Y6c9P00xcJugFGgJFM4GZv
	 wfoT7i13F1yo3wlMMpHZySY5l2hpEuTk5SNDBrFrVs9fIWiGg2gPy9MFzmlwtepQag
	 Hc+lyyKKYmaB0myIdenMSf4t5IoQM77C9xOWI8qs1vOcajsC4uXvZLiQnkLmY854S6
	 5fkHIn7fhePM+72ad075j02L1t5q4ajMYSdjrooSooaetpand0VSLBVlB9J8hczB1a
	 CnKvGGXdvxDfHZcs4iq1kbN2PqJpXqgPdr9bUkvr2oBJHVXj9e2oclnh8EVsphUonM
	 t9CRsZno0nu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BF2C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554774275.13728.14076818420711804922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0625044cc38207408da335045e61910865ef8566fec4992e3cd6470f4a53f0c1
Date: Sun, 12 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715547742
