Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E67D1FDA
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745150394; cv=none; b=E5wXjHKMAHiqvBEMZrVHa6N7dUfsza0l6MehwbJ12PgapV9ewpaT1AaC16MbgPqngLs2W9Oi6p2Gwa+gBDX1tn70Nh2waoPkSp4Zfo7aAh6dIW7l+JvGXylJOoZXKeN+sqM0+4cVbVxNj0Kt03be/0NaCkurXnthzFL/hFc/GQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745150394; c=relaxed/simple;
	bh=r7w/GcoyKfgi6aRunZdbYk0MWE8B/4OvF5K/bZQZ3WE=;
	h=To:Subject:From:Message-Id:Date; b=pmRVuUJuchG2bE1OueqxUIc9LW5zdSxiO8BXVY6CPCT7r4c7lLD4SkM6/I83mpl0ju7Ig2wpOhMA7cvNlnexOXyCKjx9HWqMKrfMORZ+nyXH8brAe/cdvtZWWikawXzM24mq8fWnsj3dXnTBjFuMSohPVGR5Cp2gLmbBhvaCQQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VngxkG7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VngxkG7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3D1C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745150393;
	bh=r7w/GcoyKfgi6aRunZdbYk0MWE8B/4OvF5K/bZQZ3WE=;
	h=To:Subject:From:Date:From;
	b=VngxkG7oJo2cVK6a8m2272TauKpRiFmkL2kUTfrkQ4JedPCND1iX7GMbfU6X+iDiq
	 9oBuXTLSE+BUwwJMZSVF3fcyrTrqqXrlNxhtMtqfwzKo/8DoZ/KZT123DVlgcymfQe
	 AGzeQd3hyIOJvyedtn3h6HaqAQJe2w5oUFHoupZFUj7jMpSLpH1p9mxlJxmBFnRPEH
	 olIhBlZ+DThooNc2Gx+amt22Zvkcs5zov73vqexspxm49Z4hmAz3v51xCHD0LVze+S
	 7FRwx6sXG2NdH6ABK3yv5Eb8Yk3vc5bc5pf0BmK8GTqFlnBalPgJAGMDYgkJ05NNdr
	 6R8G6cBDi3lYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538BC369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515039360.7087.2449181229457460443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2efc9bf4a582cbd96891d5fa5150f8d71ab29a3a211e7f6e1b3064918bddfd9
Date: Sun, 20 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745150393
