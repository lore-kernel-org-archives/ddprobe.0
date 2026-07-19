Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B8C1F938
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784431714; cv=none; b=ImzHDm29OGotvhdzIbZDdJoqNQNVO6KJVfI9VQRAsOhoUz7ARclT0GnNsH2QGIsHmO11ISRTXbJu8G7llldvjpLuVPIq6Kn/rcI+fP+qaggWpZm8l4Q308eOXp7E/PHCqfXlULo+u8f1xG/S03M7zTPrecTi5vxW8jv+wqqAMPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784431714; c=relaxed/simple;
	bh=C8EGVTcFTE+YDrEa7QaeEC4L4AuBkBRNY/dRwa8s3oE=;
	h=To:Subject:From:Message-Id:Date; b=dTAqaaQqi192hddkuqeRRRGbewvkSirTEjqUsEor58azxySyCVsoJmkBR8aYSTZwSxZdy+zFWhLyfEAb8gHcadN8MNEafZlfeGKFlkAcZfsOPqvI0YhUJ1VU/XEFDPFSqy6NIWDbDonqU7tIoUgCL1LA7GoIymgjjUUMUJDcjbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSX4xLvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSX4xLvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A28C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784431713;
	bh=C8EGVTcFTE+YDrEa7QaeEC4L4AuBkBRNY/dRwa8s3oE=;
	h=To:Subject:From:Date:From;
	b=DSX4xLvGBhYnlJFDuYbWkV6FcjTJRRttPhwp4EkHmR07Kzqe7iGtJJYbj+u5oDDTr
	 qpTiOhJZXZ57n8Oe4Xnss7SwtCeWyapQN1g23/HNXFXeIavq+Y7FeTh5i5lf+dcCkt
	 wrvBiHwc36N3MdEdxHhbXBAq4oxc/88kioeSuiZv73kqObSl1EG14J07HLzhdtaT5z
	 SYQwbhnARiBVASr4FqKuvD/64oe184htZGZfk/yFmmpDULNX0TYZg96HTFdHTYELru
	 6wmzzfP6rXCSQa42tXxjITcUyKIZPxEmOY1WcPdWtuc2axfqL9yIOMTH2UfmKnrJcM
	 RxsqLWskEmljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C6C4451C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443171368.31286.6925402631536459295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fc63efafe3666015ed798fc1e11c640d894b4f34b84701fb2c7e0b3b96ca4d
Date: Sun, 19 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784431713
