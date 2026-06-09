Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADCF3E44ED
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781032534; cv=none; b=ql2OX4K4wyI6M+dWowqch09XdHj43LCfFpO90Xn5w5NO9JWeDo1BSMH+P5CY0kPJUjA8yA4qSsVCxf+YKZCRRjyb76BtT9x+zDnbXoZjb41iPuaZq2MrSOMn80TNpsj4JwLnDEoDnLE37PGFMXs02Opw+U0TjIPPuE4hdrRr6wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781032534; c=relaxed/simple;
	bh=Xt76PusFqAh2BPifKvZBXn4nlwJoCHlvn4Eoa26JrzM=;
	h=To:Subject:From:Message-Id:Date; b=uHkbZ2lZJLA8/U9WwfkClLowPGlTCoOacVkI/f8TXqLS7Md5of1RSdRNk5hO8i/NRcYwuwfYQlfNwgva8kQwtb3HptxAlOz9Fu8MnCZjpF95YunHyDxLC0Z/DmeBqDb4y9C3XOi/Zib9tObX+UHlJQtJ7lrzwzeQ3ltbOqt78zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVGjSYEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVGjSYEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01853C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781032534;
	bh=Xt76PusFqAh2BPifKvZBXn4nlwJoCHlvn4Eoa26JrzM=;
	h=To:Subject:From:Date:From;
	b=PVGjSYEX8foeOo0E7WTUNcokgb1hIaQimUvJ0N4cnRK7eC+cE4li0RnhTbJRSR/Gg
	 244sgHZu5IAjUCqCA7O3D1dVCiJKLmIGXQEP7g0/xZ+6z55eKhVCu8K8uzjaNLl4Ba
	 1esgUXSELEfgdCEE+vmdIyK0lqVdsg2p4wjrjArYB18wnnizcHkBTm6CYsxdTIsaQ/
	 xNs5JDidBleqT8jrnZ144jASgc/DAwSNdKE/fU7cgI4xpfIvlZvbjK1OY7h5oGad1K
	 5C6QIoQeph4EYZM6Ukd0NssaArDKj9ekOMCVv961y+szUyc3h3Fr88SNTNXifUv54b
	 0LZTaMYHsqbJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA73CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103253380.20996.5721412346287295339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cc071ff87d444a2ba3b3164c53cb8bee2163415ed3d001162f534c5f6a5d5c
Date: Tue, 09 Jun 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781032533
