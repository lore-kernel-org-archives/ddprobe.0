Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147DBDF49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706434097; cv=none; b=OkuflVQ5wiYFhs7bVzm2FRcb9U4cX2NRo4p1YLGSYLabYVr/knSfVfU0FbiWu7R/Zvf51nqefbnjyLacks1vLsG0MKbW0dhziEEvDhN1OGP0JJ5+7/UJjV0XJ3w+fl2dl+v+mQ2vfUnNcwez8hJYIxhSQ09m5LI13laPxnWpjsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706434097; c=relaxed/simple;
	bh=vfyh12ShrmlUdN1bPV5GguZeiSfdm0WZcQYs/PSt5ic=;
	h=To:Subject:From:Message-Id:Date; b=rL/1XhWcxWtbyXpj+VvTgqzse867Rp8Gf7UxgcDgY4X6X7Wr33z/qbB5w/n7YqkGgxuaMbJlgqhE+lcUCnqfotHP8yUKth6wMM7BsUg+f9UbqqeULHdPhEK3644xzkJh9uhmGlhoQL2BWM8DJz/B456tXVRvs6vvA5jJ06RJN6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP7b+525; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP7b+525"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8257DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706434096;
	bh=vfyh12ShrmlUdN1bPV5GguZeiSfdm0WZcQYs/PSt5ic=;
	h=To:Subject:From:Date:From;
	b=JP7b+525evFC5wX5zlTurNSBakYLtWWkJPZ89em3pcYgj6JepZM8QlAXYtAfb8Iw2
	 qP9r4sdBBvlYHsGWCtIPz9/8yhfIb9G2F87Ce01O3E3x1eh+63vCaROMRqESlIhNt+
	 lJPEgHbciaw9mFV8/ixm82NY0VUqptV+0qPqrCCYIYqAFEt2IdD5K9ZDvTLcWO21vN
	 ZxQhza2Vpk9Zlxr4PsstueHEC6li/5zCx+vHOkAi////j3GtxwYFDcLsD8S9TFn0fR
	 jM98M0Fg2O+usVT1WuOgfktCtA77y+ClavEP6kHz/q9LGp1afrCXc0uTK51EFh64Ve
	 RuBG3rvAGW8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FB8C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643409638.22868.8130148406355726245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b183126ac543a1ee48d04be0746a123b0f28469afa32467e851606928fb26322
Date: Sun, 28 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706434096
