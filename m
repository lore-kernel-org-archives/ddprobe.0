Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605D02FFF89
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790434234; cv=none; b=eA9TH9P7grpYQ4NjZhOO35YPEt04dtbSXUuCj7wbrmIKsG0FwmoGXUscLv8L0XrkrVE7slQMkXZ2nMbRb2zpc8vTnExKJOuK0eU1ZdmW9xl70iBXp9xgsErzRKI3MYD1W0nNzFS5KLGT1I/y7JO4cWenCeF5ojHehCY/jeUxULU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790434234; c=relaxed/simple;
	bh=oSW/trz3egOZJmlRP3kWEXU/VtDR5KhuSwbLMJdnwoE=;
	h=To:Subject:From:Message-Id:Date; b=AgRCJ3bQLcbaUOnydXpb6wH7Ul78nLdi/NrM9zqYCoKsUZDu2tS2mhzVlbGDoKYmzjetVR6Oxq8e9iyCizMKA1f7RaffujdhFOaicJlcgs9f/RCDwomygF6oTQ0N+3k7fwdbMbMiGPi1wXh4kqaAcMesTAuCaoERmWtZUjhP694=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7t+Iata; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7t+Iata"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A1FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790434233;
	bh=oSW/trz3egOZJmlRP3kWEXU/VtDR5KhuSwbLMJdnwoE=;
	h=To:Subject:From:Date:From;
	b=e7t+IataUGU/ZMcj0z0DovBN2aJBA7ZXjySjW7gRBamFxiz8rOz4v2oHgCTX4cYpV
	 mGF1uP8c8LdWNcnbyg4/vPf2Hk8jpg3PPuztiqYeyh7ZmN0QFsNVdww/4R+24+9IPP
	 J0XGCwQZigFgGhHAQKV0X+o/4OleCnDL/GfQevvLpiQf9uZx5BoC2eYyg5ql6kU0ww
	 jfaOg/k5vKhho9pJI3PCTd+3zKCbiXDY1lXVIzGEj0DiBwpc+q8/iqtMdkd10DCdg7
	 hZcAKIwkUtByDxjbt3lzPYuPEp5zXxblCg3FMUVOmPGqeOmSwpTWm+d9GUmkani4Wy
	 GEnkCnFJsvyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEA4C98338
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043423369.9059.15137838974789545777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd4fc7ea32f67cccbfe410e318be395eecbae5b62536b4e71a8f2b8d730b25b
Date: Sat, 26 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790434233
