Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10C7BAEC
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733972154; cv=none; b=mafJl6N98MeG5gDUV0eN2upN5cEGmlFL5Ror7kCvFkgNzpTkLfR3meTwOEYAlBcwOCkL5XcJwwM+xWaiuMGo2bpVRuv439+ShvO03obuznGoWCSP+IIg4xqe8ZPVTQ8viw+KD0G1fspdYHqeOQly5rlw8NP6e5yt4uC0Quy/jMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733972154; c=relaxed/simple;
	bh=DQCHVLOqE0UAojRcyZ2CBAXT2CL5yh7HH+6fpEiUs/E=;
	h=To:Subject:From:Message-Id:Date; b=VYZmGJ0FwbclesqdsLcdISS/Ept0XFSjaLgXZjgucFMrfLoIudUy8zDtyp01tfLb27Q2KavbtLgiCwOf0khcAEMyxh2SGNjdpyaI9GhTQAlC9c3C4+CTsNGXgpnT2ZasneDfYMgTjXG4eeeAZ3FsjagweuiZ9++IfSYwQFyaOYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bf7grP+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bf7grP+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616AC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733972153;
	bh=DQCHVLOqE0UAojRcyZ2CBAXT2CL5yh7HH+6fpEiUs/E=;
	h=To:Subject:From:Date:From;
	b=Bf7grP+E7sffw3yW1q15Wur+tITlaWME/yQlJ6YicrAiWDDlzTJ2BBa5ydJJzU5Yo
	 Cp45hC/5Eb8XEm1adqeVCQYZb8QCpOKyRphurQJV7xNnAR7C6OCTpaK9dz2W71+ngk
	 UsJSTBhzmNeqNO1CSX4kfYfzcps42uGQZD0qGBU/DK/j+4HV99+yTr1PrK0ILxiIP2
	 d0HweEDPN/33u1bDdaTLZNdZ9iQIbT74czm0dPkinU4zFYSQ0CZ/+IOWAqTUog5rcO
	 5HvxeOIkf4SZuA8lZYFykrybl/FJKQCC/ZiWdYXrdn3lp5jGP1udINpQoRo+z3A165
	 mpQhxTJJS1mag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C05E77182
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173397215360.8109.17714595776589042666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952e32bcd3ea45fccec0dbe982c0d179f9e64f9aa2fc2a426027bea5ebeef30e
Date: Thu, 12 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733972153
