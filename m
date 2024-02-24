Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C3C4CB20
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708816097; cv=none; b=iEQEw/WO0PlYCKOl00ccZ5t+DyHqgXZpW5W1wdXifNVsQa9rZdz5N9Y8fvt9qo4e7ccRaHb9DGofeKi0uFjFEf0u9ObtBvWw73OcA6yQiwcEw38V8mxQ39bWulXukn4h/lSPF2dfLxpwvNsUphl2JU07uBqoIwLkdB/nPC6c5cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708816097; c=relaxed/simple;
	bh=3nr4+8BlUbFOPO/xiWgNoRvOZ4p6oG9ETTasdQPWRhU=;
	h=To:Subject:From:Message-Id:Date; b=fWCAqIOFx0NPTFPcXgqTK413mJpy5MgYW3qxLwUcMh3l+q0Y2kNy9xfhc0SsOA3Q8QZ5BDgpKvMlWLMty+VWPx7b/BFV+0kvmZY7XSenvUVswxGZUuQvfEK5QW8N8s3PHAyCJDb6BGQ0Xl0adFT5ryiJA9wxDzYkrk3Wpmds0Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tl61jxBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tl61jxBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F67CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708816096;
	bh=3nr4+8BlUbFOPO/xiWgNoRvOZ4p6oG9ETTasdQPWRhU=;
	h=To:Subject:From:Date:From;
	b=Tl61jxBqFN8HCTCOEJtZSOV8auUMjse80Zznf6bMIcVIwh4g20nsMSM3ODa6EVhdH
	 uJhv02QnhjvXX3QlAnNkLqZ5x+6aK2gzNcaFURmGu4XJeRSXG5Hr0JfBMhdjsle6Sq
	 tGTmCIySMKFBlcZQJDuLY+CxH5XMsJ9HVWzo0O5KZPgiKlRuedh4pCxXtut8TxWCU0
	 5ErxYEen9xdE9ide27tK5G+UzoRBWeaoDyUKViPM2pjh7pzLit/4IQ5UmWLpIobzRX
	 9+HVav+614h6xu1yOlxu8UnEt3VmgLetm9jEKw/1QXfc8dqlxAxYg97oBajYTHo1aN
	 bcJiledGqHPBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637B8C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170881609638.12585.1779767985028430124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74d9dce6d6b7db751380926f9485a57b469455a14fa382718d43f2a20748874
Date: Sat, 24 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708816096
