Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE820DD51
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790305234; cv=none; b=Bzz7T/6piss42BVQ+u+iU4XQmRNKS+5OkteU57oOXECnrVatEcGOd+NX5DonmpsWsKfDpmCYKABQJaWMBONlSDR+b5HRCWnxIBO8byrsuhMs9ECGVvLL3Tg5UkI0vGlA1lQfUIra2kKC/9o1GY7ozGk4F5ZwQyRSPm3h7ROux3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790305234; c=relaxed/simple;
	bh=1G4VfhRGiRypUYcnsdx1YhL57FBAUCpz4PVEtD+p65w=;
	h=To:Subject:From:Message-Id:Date; b=scKRc2VmiSaQCK+WepCcVbtG51XDZNZ23Eo7GjhOoHzzb/UVBcCYQqMT+ZvIUBIWOo4+Y6BrCWeXdDKzU6r6NLv7+JkrZLOHuI6Vq0KsU0dKmGHGf3A8x9RTphTYB15b1evfG8deC/bz4zn1CxYj/rhlwWrnrPFYyIqbOuRqFG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdXefd17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdXefd17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D36C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790305233;
	bh=1G4VfhRGiRypUYcnsdx1YhL57FBAUCpz4PVEtD+p65w=;
	h=To:Subject:From:Date:From;
	b=RdXefd170r0w3HLc91j9VCo7fQNCcjQiTpkAcahugtDsmM7+2aFGKZtBxphBG5M7T
	 O7NKgY1nZfrQknBglQ4aAPWqEjv3yW474sv5mllhXpsQR+/F3VeWK9DdkPd13fvgnF
	 Dqh0FgVDdXG0pR6bPxmAelwPhzaQ0LOVM8F49tk+9T5kqvAk6Nw/CjOh3cLCzIOs0+
	 MzGkvZVCMLQfUIHVuYLz2ClWv0xLkcY+vlou6cF9ERJRVM7yNzK3suoPMy8Q4pzFo8
	 lXYxzrYQ5Ip2kNuuPNyOeQ/jpDdU5+QDF9A+Se5f0AZaCLysHkQcz/imPPMixtBVjk
	 DwjziY66vnmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95BC98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030523368.25827.8455293055029206106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d6df05584c9f393899a7e6aeae3baa360411f105d8efb3d7a0d56ecd269315
Date: Fri, 25 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790305233
