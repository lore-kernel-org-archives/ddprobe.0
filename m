Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10EB337692
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770402834; cv=none; b=uUQ0+uESJlYtilyLbg6v+5eYIaiL79VPz61Yz2Y0o4wxls9piYpL9iKDJJ+QKMDCPcDsAa4J4UmG8tBse+ooHL1P7md1QH4kdjzHAP76XEtalbjptbwLAEyGVAY5avi2aJDc//yLVAhTuxctpv7In/o4OmzrDz4Irbm6XMnj5C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770402834; c=relaxed/simple;
	bh=WpfZ2MDaOZUkxi/5T+ImcuQg5sv9n15OHgF7Jlbni38=;
	h=To:Subject:From:Message-Id:Date; b=fylQ1PFeBfJwUwa1cX4dR+7K3VJN/6LVgdUecLuij4AjmDMzvTMv28chS6FoEfD67kX2CbkjSIeHa+lr7oRTHP3RhFoXRdS2uqdg6k20r5I+J8WMa+WL8ScJnhYGiQXScB3OXraVf+4U6KO+aoSjSiOSeIu3lSCs4WNicij2CTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIuVRfeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIuVRfeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A566BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770402833;
	bh=WpfZ2MDaOZUkxi/5T+ImcuQg5sv9n15OHgF7Jlbni38=;
	h=To:Subject:From:Date:From;
	b=uIuVRfeXeMzf/2yNeKHCeOVHKlXoK6PKaoia5bz/iltjhvwa2lI3gkOA/yWZfdAbE
	 j4PsrtEgc+DMOLdM4VoCrxuRV2uifr06A29UpQjYpx8iPJd1T+sj2yktt0/WlPTGfn
	 FJQBxS/RSLnTJjhmeImAoadA+MGLqcwUece7/7oPmDmHUB7HWu2CaP1+E1u26xAE6n
	 3XaAtMzK0s0eZLbe4XEuGM6IzvMzWo8u+5/p3ebT04WGzT0RiblWZOsr9uJ+OFZF/w
	 A6kvPBzXckPD/Q4R4Bj4CTjPJxiNwTDjkGz8k2dPAfybibcUK8S0L8vd9kXQorZFqx
	 beppn0mhpvyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE2EE6B49
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040283359.7990.8941051534979516811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8420892038acb8414eb8afff7dfb54661b7a5998e579252c8b37dd9b6a5a90f4
Date: Fri, 06 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770402833
