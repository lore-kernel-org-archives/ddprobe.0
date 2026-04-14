Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AFA25A2C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776202054; cv=none; b=mzykJDKnp/8zS+GZj0znzFW8mxtiMGv7wHKbVHTGTz6LPCRNk5bO0eYBT+IkJdAuWYPSd3T4j5Em44MMhdB9KsLG4C5WtofYOygvxXx859emqDvGdz5D5jMmbAgu7ONgAQGWnP5ULDPhGHbW55gZs7cfMRiTdCqAtLCscIl43wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776202054; c=relaxed/simple;
	bh=F9mL8rwKB5PuWaN/fpfu/tE5rSDpCwq7bimUzM2KXS8=;
	h=To:Subject:From:Message-Id:Date; b=foK7MQByym09E+UIO4LxPvXkSODgN4RZ1HlIWBbBlRDWuoSd1ZOMIv6C+Yptpu9wxhWP8/NXHJ3bZOQzseyloBqu84eaNmQ7iAReRzlZ5CYOpPoy93qBXDF2fWh1DYhG0deG7/HIyotlN8JklLlURGYKnTIcw4EITAJLCpllbYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi78ktHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi78ktHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1E3C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776202053;
	bh=F9mL8rwKB5PuWaN/fpfu/tE5rSDpCwq7bimUzM2KXS8=;
	h=To:Subject:From:Date:From;
	b=Zi78ktHRK8M2AD3wO5LgHQv76Nf2Pwl44GYvuzrUaYV2aEye9X0WPqklwynko/0HU
	 Xc4c3gaSkPrXGNuEXERksV24RvY1XAQtxFwncyg7GWwLz02YohEoEM0u8R3vRiTArG
	 9o7FmgkHIslUyizYZpnTpcyTa7iIUSWyRvWlQOIegNOnVbExDgQgW2P9AWYtsFnaMp
	 9ZZe2xYlvQbMiClO75BtUDmmO6Gad1159Yocqb3sYKF2qGLgPtT9tJrWSG4/qiZo5s
	 ZDsRD/V3gNAPv1itjugy+p03Sxm1nirnjp6GSDoLFbjEfAVQJz+nrhXwfk0Ci9PS1a
	 tBK6TtRZ6pKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8FEF9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620205368.31720.9861744530487273933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bc4252faf62eaec06baf2caeb388f26cba5ae369c0c1242069da8ce280dde8
Date: Tue, 14 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776202053
