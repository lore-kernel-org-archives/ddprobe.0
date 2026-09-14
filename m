Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF63424D6A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789380034; cv=none; b=JZnkAefX5JTC0bidUn6GBIWp1vCdGzE31y1RHlF2MbEzfgY+VxEn57A7pp7UaRB+fg+yBv3kGmQYHh8erwWaVMl0vgWhB8dGvKaQ88P461SyTydsbYl7KrnbEvlielpE6Ori2/7kJ5UAHZcYYAg+7+MxrJ0JLunUcxT93RwX6bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789380034; c=relaxed/simple;
	bh=HEVFVF72WYG9iyTzxH4GGLD+igStDDlsFg3OdLctHFg=;
	h=To:Subject:From:Message-Id:Date; b=QqWb7qOXXFIaCnlrRT5UabKKYDjbRs9eO8XPgjc3hNXu4RaOElKzZOaJ7oxUUbs7nIrn/JJhpFecgyBvG36R/EFUezoqLk1NiYRCxbokgkyCx4/yaVCWTtG449OW2LqnN9IRoHI9Y1ZsKvXzAqoV7b4ciLYueETh0Iy+8zOQKk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pToEW90H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pToEW90H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E94C7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789380033;
	bh=HEVFVF72WYG9iyTzxH4GGLD+igStDDlsFg3OdLctHFg=;
	h=To:Subject:From:Date:From;
	b=pToEW90H3ZVDfE8WJpSCGjq6ZcostbwTIEnByV4lucuoqF5gmN9M6jubUgVZfuHKp
	 99MNfa5aC8kIdFHoSGPKbO8aDeMzOfavBGMv04AQ4OW6ya/FMG/rDG+qEcJlZ7XgEY
	 96io5igJn08Q3Wo3YYEyA1Sdc1S1cL6Q4pd34m7JX+BZafpyJYMOc5hanqvrtxe/+x
	 KyKxarTdSy5xx69BARqGbvqv31Sy4A+eORa9J9Qea/V/byv/3IhcAtZKxjt9ToZGzx
	 ZfzFBHID5zZyITtdKWm8G06HgU7hcGtvNVhHktM11N0gBa/3EISjH2Hw6B1asZrGBZ
	 tIblKkoaBGYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15EC88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938003369.18625.2625269622921085751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09c5b74d5a9ba153ea0dc779e9fb21a9b7e5874f9839a20b4e0a7730aa8fd58
Date: Mon, 14 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789380033
