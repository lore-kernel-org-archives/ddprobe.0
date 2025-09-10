Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EEE3FE7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757544594; cv=none; b=R8QX7s36pQx9I7QcB3F7qpAy368dPt4e3y659lr5XTZIdGSINLpWHI3Wfz9l+iVeGmE/EjSCTDtg1fCI7joOXm4mgyo/v6dNnszlZgCW7hudm8HxBiQHc+HiYouCvuEaweArIBGADd2FiFMcYs6O+I8F5766okN2UhE/ohPiZac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757544594; c=relaxed/simple;
	bh=wsaqW6zaoQK/hl89f5dyDtnIS8mqyle96RSNVPXWdIs=;
	h=To:Subject:From:Message-Id:Date; b=EvlkPpRkUJisdXD6/uqaD+jb7S2IZrdphAW0SqlypNjSvfOn3ZU/2ngZ+LWlof/q9X7dgZEQjypWTDZ7oln7fBPp80Q3hJviKWfJArwgJJ9VW90SHKAo3T+e/ZZAeXbicuFi6hPYBT97tFcwxOkqxa3+5X2w2e8geVo6UjzWsCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDo/cBhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDo/cBhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A146BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757544593;
	bh=wsaqW6zaoQK/hl89f5dyDtnIS8mqyle96RSNVPXWdIs=;
	h=To:Subject:From:Date:From;
	b=hDo/cBhSjP/w3k9MgY0etXiQ8x8lkVlkaYoVy7RKQe3ENkCNT0IA0wWSRk4ysTjSK
	 cp+M3Bq8XkpRNpWOumHxijfz7upVpmF4IIl+vwuYcQfK9TX4MMRE9Yl+KSCFICBd4D
	 OF9tw790/azXpKJHiSdCkYbVOvQk4/CFf/17AXRNO4Ts/Q/uo9iIAmIe+6NqrsuO1A
	 oUlRlxqzbVJL+TNfXADkpV2+jWnOofhgOZvaysb1S2HBUKrTjlgd5NqiC92YmcikIs
	 MNzMEnylEVvYb9iTR8Q5MV6NRQgH3HK9S0TgrHbTtoNCuKACl/wlDlvTEd6PnhLdE2
	 J+izSeHRa5kVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBDCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754459357.28865.5091193593502032160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31443074605ee219a142be8588e083d0156b6681ee16ef8d942dd9528065c28d
Date: Wed, 10 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757544593
