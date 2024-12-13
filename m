Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2039D1AD403
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734082554; cv=none; b=tg1DPCOkiL1H//tBR6HtyWbQ/zMx7SJ0Iq3c8q/DDvQ9FwCXm0NkYKm94Hh3nN/FXyUGSe5ylM+5wStunBzMGuob9Vbjj3mEsRdN6FsncqCol5aRjKwFYFcv58vdrSANnPULHpoQvobgLZz6NAzLYAXgirR3u4+DIGveFO6f0rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734082554; c=relaxed/simple;
	bh=nYOz1TuZdgTkXuJJIIp3VmTF0GmcISQDDjcNrmSLO/0=;
	h=To:Subject:From:Message-Id:Date; b=JaBspGob2Ulf8ILk6lYQe2rHVIH419Kr+ufxzR7v5du7gQcilu0J3tbBVyzWWViW0NM0yGhUhFnh/+2Z5HX7B2dZQ2g18LJfn9DlhFOgM3LwZ1aEWCJktYMg0/qyaVYFCv5IaualdZ9FABZT86N1WyH2I/D/PwYJZhF+4W/FuNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s91ALY8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s91ALY8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE23EC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734082553;
	bh=nYOz1TuZdgTkXuJJIIp3VmTF0GmcISQDDjcNrmSLO/0=;
	h=To:Subject:From:Date:From;
	b=s91ALY8cduLJGHFfC3fQ/vIvGnXTKHLIgSImd6Uvhg/cDEURdeM7Niktb2KY9RpMa
	 00LAjYx9gKZewzTzPaa3S1Clu7f+ZaHtidZkxrbou2hX6mpufcUWD4MKZCgTjTsLAe
	 deH+C/XedpQhJ6bqy61+E5KIxLO+ewKUeJwINe62nezCaTP7wv/4XB9PbxI+AWUF6i
	 pJ+nvIHj35/RlqJ7hvCaUNdepQLj8KZ9H1rU8umpQnxP5uvlDsvgq5vkgapf+BbnMk
	 vLK0qnPmP2E/W7CcW7Lcz6Yhdv1fv0v4GbOoZd7wFyYM2G7XCyXKxEjTu0CH6Nqi1M
	 ZyP6mgy8jm5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A569E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408255362.20986.7912434493974142120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6b9d810194bb3a2c122053adafbe700b00dc6a138915763b3f1ff29d229aa4
Date: Fri, 13 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734082553
