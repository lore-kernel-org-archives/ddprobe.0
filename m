Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2F952F70
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716334403; cv=none; b=G0VILiI8hXibH9K0SW+d2kyFMKSYija5qB8iBJq0z39+LcVHEnCC/SVjrkgeZDH5+aLr1UfsJ5GN3wW7jS/BS5pB1NeW21RWZEhNxF/CHhKwUDCJqzUIySuWKAYgLxG7LXp5v93NhKK9/5cgfWjTG5KI1ffZnqbyuK4yTOa3QTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716334403; c=relaxed/simple;
	bh=yupqeSrqnDQxWVdKzmNwneYZt35oo5lRYrHhxF1MJMs=;
	h=To:Subject:From:Message-Id:Date; b=Zl8ZElnfU8L9o+50qxm02vFGMY+GB5x9iOjqPKTr+TBKnJ1/77NmzmpNpGk0JrdoUH2tfNylPeDjHv8KWfcrlNzLiCSchJlXzmixMzIYCEhLRe/qV/HfvY9W3HyYd4Fkv01p8DwqqEJwWJp1nhFzglixYf9gu2v+zeLV8tYKkC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5bHqh7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5bHqh7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3743C4AF08
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716334402;
	bh=yupqeSrqnDQxWVdKzmNwneYZt35oo5lRYrHhxF1MJMs=;
	h=To:Subject:From:Date:From;
	b=q5bHqh7kUYnmnGHsl0fCQ1xUV0Qt6A7McItlC98u58k11q4wgiau5W2z/B4sQ3McZ
	 ckTmVNREIm+pAhQcOrmwm1onRfZ6kTgjV/Udboq2djqK4JTLjxOIrgQbUj6ZfdJfbG
	 EsHBSPe43Iy5FIwfHqn4oUlOOGreMfSWvJmKVIQNDztyGt/Yw36+qWfe3KAVTg+Tlb
	 yk9xJujbTJfe6Kd85QGtglkiFnEvW9GzINKklr9ZamIVZuEtrTqR+AK55x9m9zrobA
	 ialYcb9EBGRg3e92+N0CnxZy3STIauKO8za/8UTJQgnAlqjeBBmcGMtPV0CplStihl
	 F2+Xt2zYTVghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4367C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633440276.27377.18321509734319094308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ab06551009c33b96807dd917f1fbf3de5a436aba5da2807c6419c1a3836346
Date: Tue, 21 May 2024 23:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716334402
