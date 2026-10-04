Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5701A1E47CC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791074434; cv=none; b=sx5V1dBCUj5fq/prhBVoTMUvvAkuryj9PYSuAcEH7CN3UzslbZq1Dw7awy9GIJo/fK8NKH+ApaLeJOeHugZ2EByqqw622zt8uA/tb2jBGYIvMY116Gm+qBoIvj9PuUhAVHvEkDVY7WXo2zwgoSWxq6UFZUL434afPUqTcnMzq80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791074434; c=relaxed/simple;
	bh=q56bIlEtdTaQHndUgmTVzXyQwBP7TUi4caEvLHOgSvA=;
	h=To:Subject:From:Message-Id:Date; b=ozFqGh3p4w9lAoRDX+cjHTXKNsQEhS/6bg5R5mAzcIGMEX59+cp9HC+cNrmP2kJqg3cHScK+lqG7g3QjRyfgLKZHAzqn0aSZ5yI557pwLWNahnEV/Vw3EiWv3euzchkv9LCPU6ZFwkiFMfeu3/gvzIfo2dC8xknnjgo/R4bNeYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpT3x4hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpT3x4hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D241DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791074433;
	bh=q56bIlEtdTaQHndUgmTVzXyQwBP7TUi4caEvLHOgSvA=;
	h=To:Subject:From:Date:From;
	b=mpT3x4hG2Mr7hKli9h8eAsBV2DPO3Lu/MLYbI7b/Jmn1bpRgbma571yGXLMhOFGiI
	 1WKwSHv6V6e7G/Wkbfg/r3MC38GslodRoIA6hRJnxRIhPBPosapNkcG7B2WDS7eJXN
	 DpZnk1naMaLy/ETJyU0DRoUEpA8inU4tupj7TBmm367H4DFlth083WhVF5wFXOec7Y
	 UYNW4rxZB6XuRc22bmeHYBAh/5axm3uKRuwjHeyMKyBmyPKCeKwwJufcamsN7ZVQPE
	 96eALmuXgLc2gtjVWz1BxHgBOp/mt/s72uJBgWzwLogOpkKFmE+5Dm7G18o8V7Y4f1
	 v8A4rgQ0/Bn8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A6CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107443368.25535.9507354905471000593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e2b680ab13443f29c7b5c4ac25ff86b22d73f96d535ae12dd913648ac14a39
Date: Sun, 04 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791074433
