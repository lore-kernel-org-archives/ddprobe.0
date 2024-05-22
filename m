Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E687BAF7
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716413003; cv=none; b=MZ3xFJBIRRqlBPSGPTGlkGl1ocIc7z1LsSHeJSnZnGBjr+qCQNW6+PcNFhrKCyCjzJuD18hLLrg8xQVldKeHZKQZUxL4nzQy2guI0d71TXK59n4QAlvQNA6JzfWO2umSaLuxHWA6bTKgI1i5gKJjFXQQLUsJs7zTHKWQOz3Gov4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716413003; c=relaxed/simple;
	bh=PFx14tIsahL5Za0GGVzAxdTeE9WX8ErkDU6xeckEz94=;
	h=To:Subject:From:Message-Id:Date; b=IPTSG3jaJE1ZXbrr77SAm3g+La2HYvvactnczAtbnDwfdiHWNKm2fr7lzyfEaIxjl5AMJdMc3ZM4M1YgEdQj/6St8F/fj5flNJC4IqLKsMGNpCHx5DxpiUHDLlQqbkbscdi8CDp3S0JsEfrBaRZb6Q/KIQsW1HGXOBhWzqTq+8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpFKFNht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpFKFNht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D620CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716413002;
	bh=PFx14tIsahL5Za0GGVzAxdTeE9WX8ErkDU6xeckEz94=;
	h=To:Subject:From:Date:From;
	b=tpFKFNhtPt+EtTkBIgap6K/WuPL1h2GbAYYuC8paAxeTQdGOJ8Kj5dhF9aE63s1VM
	 uC1KjRm0cs2w0lrl8Zy2b0xTilD8tU3YT10SrGW8p+m/tqqjDre4SwpVfAEqCWnqYg
	 hqea1P1GpPfTL9k7PiVSTwx1GbzQF/j2WidBzdB7BaU3faen6gEyLusiCuEZqQzMfz
	 zub4js5rT90ZBKyK4wXRVRNQeQs0NKzYciS5A7s+K/NIIfBSAiBZeikxLY2n8Sg+Os
	 A3UjRXIsrX21/4IFdZhEud3HmNA81m/J68YBcCZHWn1bVOFl0KY5u5eqxHWJa7wO9N
	 os+HndmU+7Ldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E56C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641300279.24534.6651196407550836786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57bb720e08f39eb7e426d783091db1109c028cc273b167ed03388b904a574e2
Date: Wed, 22 May 2024 21:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716413002
