Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663B4497B88
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791462634; cv=none; b=oLO6BNQPsLhRnPQjs27/wrYomyr82QesbHWlLd8UVX4kIFV6xrnRkK2DIdgaA7VI/muSFbBj/9otzqrG/e3aAZflH1mdyNQ137Q/FhMkXhv4dMKXaHSD8EYStVpA+3hVB4YO1vuXnIxD4ii88xFAAyoyt5OE0JVN5w8y8Ck8fPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791462634; c=relaxed/simple;
	bh=Kj5VU4sHDfNMj9t9VY9NTSJlzkcRw3eP7OIWvi9bngQ=;
	h=To:Subject:From:Message-Id:Date; b=XML4uY4SR2JbM5rx82jL15sNaW3rO+XmHgVmb9QG4C69SpBGhTAeQfKOWZzKt7/soTUGun2I6+Os2MCNsQG2WKRk6/YXgB0yX/z8YkJPigR9WYM2qmvQuJ2pXQONQZsA5sHVfUThcLKB81xYcOSysofzejrRqK2gBcgLTUAwJSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH+qCi2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH+qCi2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D99C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791462633;
	bh=Kj5VU4sHDfNMj9t9VY9NTSJlzkcRw3eP7OIWvi9bngQ=;
	h=To:Subject:From:Date:From;
	b=gH+qCi2VBALBbrarSRClwA//uj2ieuWcnmK8J7BmsZPswtnftWhjd4tjqdiWGELqX
	 a5LYFvbPSJQaJxZkEKITXsj8znkoYoGC3Y+uLy8z1IqJkyzHE1V59kCKvqjRL+JImj
	 hwDzTNbvKf1crsBEc5Zi7VRb1mlJauKfH4pjMUThYMPgw2ffoKxLaAP7JRPJJrD8hx
	 sPyQn+Nfga79SisuEpeEdd8bsKC9zqrKM/MadhEH7xU4g/PxpI20/iL0aLc9pkbEFY
	 ugLZHZPNtykksHtIaxiXuErbRliAk+J2JplKHIpJmbYF1Mdia7CL+6CCLWo6GVvHyR
	 iRO2/sMPMv7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB92ECA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146263369.1161.5118137322562927538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5753d4dd686611bc3b8f98954d84ede244e7deef04ab1e9882e478de02796f61
Date: Thu, 08 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791462633
