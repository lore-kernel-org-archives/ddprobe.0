Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427251B6CF3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735854354; cv=none; b=NOq8o3vdAlFzQOvu7vafTli8CA6s2isE7JeNzKsDHnRaGR5TYwCuaAebTutmAiVh4BvFlfTrVT/X7Qij3X6ex3m6i9tWPfb+MQ9TvRzQVzXwE2qZtYGGpS7Upg/5mNqMi4v7rGuVrWYX69oHFOl2RZrA7j9xbZvagP5x66NEg6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735854354; c=relaxed/simple;
	bh=7inGLeEd3iEaAM+MX59NOvNKZbekoa49om0/301I44o=;
	h=To:Subject:From:Message-Id:Date; b=WIuuMErxagsjYhx0L1+/6kQD851cfaHm8r0s5fFJlv4wMOsj0k85nsi4jNx0vNiEXw045QQGzKm480cOmluEMOiXtuWHG8XAv8f99xcfNSY0jEwE2SHYNxjEBpAonX70G1f6Ys19VboTlkGcM292bFJ3xCLiNP+CabLYCPIOgyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbcoSvgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbcoSvgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C8EC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735854353;
	bh=7inGLeEd3iEaAM+MX59NOvNKZbekoa49om0/301I44o=;
	h=To:Subject:From:Date:From;
	b=nbcoSvgdRaULkeOfbfWVOX9/weUw9VvsMspJniRinhPvaU7ViB/rNFrYYOzCIdwtO
	 Yws/kVA2fFy5sfEVpHBVWugL1fAjYKkDjLYVlEe13EiQ24bycpnNVCO0URDqIrlAYb
	 /o8mzVpWDU0/XC08FBkDjAe1Zvb+UgpN4ls5TcDk31hKk5a+zaTZ75O2yvgl6QyB+R
	 0RB0M0TKsWfIWHUw6L/R9VnmxwGIMbl5KpeNTiWZzUN+idRgiiagZshrZTuRQiRaO6
	 1NTogut8eM3kMoqcvXh5ypWlEADbMeoSCP4B6NUqQgKFZNN0mId53FCl439Sip/Rz6
	 YiTW3XWIoYt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA4E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585435358.20125.7715612897062372607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db290947ce8eb435b3a8c0c56b9510fc62e0c34a7d4a355cea73ad109d3e6f20
Date: Thu, 02 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735854353
