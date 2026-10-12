Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8F343D8F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791780034; cv=none; b=aHnshUD5iCShaHwFeDSUwcX4voqeu6mQmv38E2Jv/lECutInPZwzXcUS2HUA/Zf2taXA4X2LrlBJ+TzsJrP8m+3q4IgTYIKXjEwIDXBjm1TDD0Z4AodfBQRPUMs2MgzoOCAjJwyI6VOIxNIEcLnID+lNPUo7SAtE6GuFsFajMg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791780034; c=relaxed/simple;
	bh=TybRlLkfhq49d17OHDd2fjL0UWJ+TpJ5JeQamQOYVa0=;
	h=To:Subject:From:Message-Id:Date; b=S0zo0IGMlJQkhpW6Z+eM3MtLgyMkl3veoXOWCOEi87aa6541DouOdDSixaPvK1yae+/tCEAgz0+GQ0ANzJaabP7h/O9d+eAAoHZas/w+o9DzJGghFiUQBqXUGoloW7Z0XUW1FNSxWfuxLjR/Z3mMZ6hLVAmPltpU7CVEUStsBuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsDVgDbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsDVgDbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC231C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791780033;
	bh=TybRlLkfhq49d17OHDd2fjL0UWJ+TpJ5JeQamQOYVa0=;
	h=To:Subject:From:Date:From;
	b=XsDVgDbnVZfcWDEFHPdzsooXuuawazht+A4hq6bVzFKj2rhiUEmiNmDXmDdvhLprl
	 +QDXVFiRawuSOh5qQ40DQIZiVvwIBm4v3AuVtqcy6UFqFUOZK5MOxDvXD9WTseajoY
	 0sKaUlHbtqi7UDa2gqUnO+SK1zH7lg1eKeZbceck90ijczeT3sXp7T+qP/1Ppc2aib
	 NxLR5rDV7VEDwELlgem6zc0QUBDEytwRVidmo20G6Wu3DTx/pUpxS4qfmeLIfa7uNW
	 Nm50KKmOItGnpKcoVP9j44pk4oFpcTstSosR8FGaYOq+MOg3wJR75iKQj9YdfYqK7T
	 6lFRGFyl5Lv0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50ACA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178003368.13592.13715906480546898308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e289e049f7e547eeb733151007f2e16ea54574c7ed78c405c0fff268ea1ceec8
Date: Mon, 12 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791780033
