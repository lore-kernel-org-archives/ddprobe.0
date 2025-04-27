Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE2AA945
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745779194; cv=none; b=sAXbs9vlKcWJJ6Us4l4fEUeg/JtRB9/W8hrwGTnXaKXtNJ0swYhIgi2GiCDIBxjlPvLyAlG2u6H8yetC16ry3pjaf0Wfa1EP2xtJwcH3huZZ4EFhcvC07ronQWwEZwkorJT9GDQJz7jl1n6ShPCQdGxeDr/OhT16LwhXzQaJ94o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745779194; c=relaxed/simple;
	bh=0Krv9IGic7a3hvRIVsC7E6Tcxw27YQKc93hH/8WYyCs=;
	h=To:Subject:From:Message-Id:Date; b=QEQUk9IGkvuAcZkXYnsdOpt8nS7ihicNy9c7k10WG20647kKIK4exRVvqi37lv3ABN3CYuVwXzbWz7Bea/WLPAowwsd56kG3s6VJAkkA4a2juN6jIWIfZeHd432nZDMNeNg82EpfnBKgOO2llMr3bKnKT5CDD7zWfpHCk9n4C9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyXzAjrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyXzAjrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A13C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745779193;
	bh=0Krv9IGic7a3hvRIVsC7E6Tcxw27YQKc93hH/8WYyCs=;
	h=To:Subject:From:Date:From;
	b=GyXzAjrn3r5+kT+90hXc+sod6PkXBL85Jbx2P5jXG6rzpsC0f3UZtWtYJqoyOaT+c
	 14l76BCVhB7rc/TtABFPFEevVRxRFO3jwLImdCZaxxAtBYuNE/fsKOZftmtZcy+VYt
	 g9AVx+Cha/bZOw/6IiqUNgXN3T6GAgGELTjd/DmwfhezgMj0iPP7TvFmqzA+bBbsKF
	 kF2br4+T3fTgicnEfNewSp8wDFCeQ0msaXTilCUR5v9a/XkCkS303cZ6h0S3FYNTLm
	 U7p5NXEPqPlqXC65YVSbwdHdOTAV1RWMW97Id8gXXipn4bChmJ1pFCopHpLVXzcR+l
	 HbclFpqnrUJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DDFC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577919357.7374.2263093237169154336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e6e85cb74f4f009463c1006e400bb9da93879e9ba81fc2fe3104e6fbe96244
Date: Sun, 27 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745779193
