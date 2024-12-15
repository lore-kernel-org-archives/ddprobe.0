Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFDA189F20
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734296754; cv=none; b=dchBIS2iUj/B0uDO/aXruojssG4X+FMsbuM0D6WVPIk2Ak/PmSUVgN4G36ugtQwEyNMmhzZy9uH3nMAqQDMtxrzHHAUIAhO0HfCjy7zKn0sK/U/cY8+PwdWazUr9IQKpGvrfA729WIw0SxFI5vfLO8rwgOh+TLr0VVrAHrs6Qn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734296754; c=relaxed/simple;
	bh=+kkyv1dltLXlYegp9MiIALmoRavNCGQKFMUGYowYHws=;
	h=To:Subject:From:Message-Id:Date; b=Y+6SKG+HhXyDX7DaNvA8k6CIvG32GxGMXh3e3gbInZyV3G6vmypBkP2ihxlhyC8sqJbHxoX7KaMqR+YM06779yrAOfKhx5crKn9YHRjGBw8XI1x3u7JgRusupj3JaVWk8FqnIHJLGIeWf7ZrKa5jfpsJ2EHaz5ybVrL8zp+j078=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCDy6x/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCDy6x/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB716C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734296753;
	bh=+kkyv1dltLXlYegp9MiIALmoRavNCGQKFMUGYowYHws=;
	h=To:Subject:From:Date:From;
	b=fCDy6x/GyvFU8THJP8l5voHZxF89vl0ojPKaaDgcQt19YjtRLNvJIi/pPdxyrguyo
	 L9rmn2ya67f71OdCxNzDduudjp8f4LEJa2VGhxvWpnqzVWtfSkyx1TrEOL7OfMfjPP
	 dXGg5wNUCzUeHefHD0yIFMCFKQ5p1IMzGsmIE209uRyeZeZt/VSUznRTSfn0OtjUgy
	 Nlcj10/50msn6pXrfW81Kz/Kw2jSRJp6/8TC9LfK3UWsAZwpCa9xXd953SFcqskAah
	 VvdQQRrdnAmLN9NuEoVXseRge6SaHuWQ+zkFgz3uoICtxDbpU8S2pUjGu0pGPPZjTd
	 Ex6VZEHhDF9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96567E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173429675358.29317.5401482721305280389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac0e2501d724a4a845ac6097673025636554d0a528c1222b597b8d488d3b4f3
Date: Sun, 15 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734296753
