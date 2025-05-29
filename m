Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF215A864
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748483395; cv=none; b=dm9RMn2Mqa2Lc8rFHoHlNITL/zYCLsWwt8CABVZPIepyjVBqxAo7HRX4ZpoxTAwEO8ZzeM+P77hxci8r0eA8bYoGR8w83WRh9NKSdC9TBHrT6jM6WsD3npvSbJ28IC+Dd646VJeRbyNmG1k0VfK1zvFuOG3WWQYxDU2x//6cQ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748483395; c=relaxed/simple;
	bh=Qv9aCby6f0JFfjBw0SlIH6MrWBhnSJRnN2cMmZdvRi0=;
	h=To:Subject:From:Message-Id:Date; b=jiTSXBSiGUOgpT/UOsv4rhJMAyjlbUtsIpPTtJy52PaXKSiNFSvJkgDLrRdIgc+e0JlRLNwI8bdncS0vU8Ps0lLhtmFDoejLaxccMfr0sZwhMjLESpUPS5kU8/TO3N1Wmbu8VfLysp46S2TcCzzYD6GPFOp6RDyOrFZDqGbNes4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUIJsT57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUIJsT57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D04BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748483393;
	bh=Qv9aCby6f0JFfjBw0SlIH6MrWBhnSJRnN2cMmZdvRi0=;
	h=To:Subject:From:Date:From;
	b=YUIJsT57Xn3PkTpn7XCJHHRUTfSzWuT9yicXjwPWglQVJ4gGKZ8XPfoQdqVtJO7BS
	 tekuNCAota9uF1aik2AGnCK/4i9ET271GkV9t0tddx0QaUi9mN9IYyPurmOoe07wjN
	 P8y+OFkM1vEDCxAFz524uK8ErxoDDHQ9+WOglBO6p8mvNkz3aXL5+dKqWggt6oOH38
	 veaqucCek/NVku8RkdH3ozbsAxAghkFsMonSYduYs4ASw2foHbpPOd2856aZHV3vJy
	 u6kjrGYAxPf0jpGbPVkjHrssN0fjj6sVc5lNlNATcpRQYYAjZWF/miOQjj4jmfDjLm
	 DixwKEgp6fS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E95AC3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848339357.8563.11017417996016148257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ba424a4d82daf4983e5a4af27f38da54253ada1e6addd90984d2f49c1f2bb0
Date: Thu, 29 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748483393
