Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217825F984
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780737274; cv=none; b=KX+N+4JX7zWFdyIjlqqKNyIpFbEAEfyuRrkdE36bfHKoAoHHORGK0jwEo0u8hmifh50mREMdHAuTCkJoF7wp8VyL2Ra0+QpLYBSB1YZtCRCsHs28uMrkAmAwnf4cP0ma78qG23YA0k03SFdkReh6aErBrGGfH3olTW9jv8dkEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780737274; c=relaxed/simple;
	bh=gdUKBmkWMuIZSJ2m1zgsBqNq3m2gS1rx7TQvAa3ow64=;
	h=To:Subject:From:Message-Id:Date; b=SD0qobGMX8lz8Iac3ZKx0/bndLuob1pI+UNUtuW8iCsIHu9Yg3zkWRlBpU70KrPUHGkuEjTl8obNyr5PcIpmNRUh6I2+jT+ahkQ9z7msF6tA1JJLBdrPQyteLt3FZwSvKre978BzVV2lN553N9I0a70IImhsRwEA3AZXLh0cH60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G31BDE15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G31BDE15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC54C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780737273;
	bh=gdUKBmkWMuIZSJ2m1zgsBqNq3m2gS1rx7TQvAa3ow64=;
	h=To:Subject:From:Date:From;
	b=G31BDE150bg6xZj/irRsvkJDe057LwXu6Uues18r3nUbMx6KaRGmpzdqb1OcQ40zW
	 wL+OTdHGSFHrU384P/Lk3eHAj20GknSZJP2MrAz0r1ScNW8gCc+HDmamtOfMujABgr
	 LdlJYbah7dSlButlaXjLLqjyCWscegL5L04fhq6f9yCnKOJk30a46bqYefkF0YFX2Z
	 9YfCZJgDiJp4G6NkT7kWO2jC8GJ+QTmSZqyFHNy0Ifj8gkESzcIrbPoZdhJCqDTYfi
	 Xfme57UBtCoPOMB9vk+2nCB58eTkdSyMGD1kf0t/K7ZfOSJb9sbYrTnoJT0zTn5KH0
	 nInxfT6V5FaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00CBCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073727369.22486.12837874771770078767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca9169a2b3a1bf4892d90f78a868e7c94555fbbcdc32390e8b0511dc0997c15
Date: Sat, 06 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780737273
