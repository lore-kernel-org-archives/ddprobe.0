Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222C11FC8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769213034; cv=none; b=iAjYuIf+Fr5Fp5BuFHQSvBTCjBkRyadVUjOBj81SDw9ztnXnfxrjQlAHxPPaEnpEEi4wFewmoGwm21MmvDCJAruN/vGRPgYCwTu/C9seZry0+BZOFh+QHDtajPN9OxvB1ny1lev9Zwy878CADvAO7ZZG6Q1eT97lSOzEmG3Jric=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769213034; c=relaxed/simple;
	bh=0bl05h6CrWzXgxTRUwjhryJ/x0xemZXhiJeoOXaUCZU=;
	h=To:Subject:From:Message-Id:Date; b=PQsBpKUckGndxXLSTGCZ7riEdZXhpFu4mMzdeCcwXq07K9rTcl8Flr6rvRyeTfRtEsRH7Bu4c5yty3A6YlGkfMw0g8g+Miqdqv5UkOKo4SPMkE4WM614LhQ2jE/XZ7FGMz+FiUo5WMU6P+ah41YN9oruysaBreZX9HZTfItmuc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EowlPr7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EowlPr7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C16C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769213033;
	bh=0bl05h6CrWzXgxTRUwjhryJ/x0xemZXhiJeoOXaUCZU=;
	h=To:Subject:From:Date:From;
	b=EowlPr7AGVWDNtjDRnSjM1sMrQjnvCMZJCvci3wH+qxggnoHU2jkRp3K7tMjLG/ar
	 MS683FdE9Dabc3eum/PeY+uZa09aaX8PlDR4DLzzd8plXz5jtMHmh1Q1K1D8L6ZI/T
	 EIjU7mLf8v5/I3dtRshXGMqGOQWLxHNW+Mo//yn6TsPI2H8F6UAXfEnfaz4d9odGp8
	 DHStVOTkMi+5PDTXla1eh9C6UwpG05/PiBP4TqDcOxsvyx+nhPEwxUEJZkk9RyoFG+
	 7y55IEUwq9MrpIZ/kp4toX9Hjx6aqknPDBQqW1WBIdrVjMsNsURxuhWCUIlxnc8psd
	 IAsv3h1X0w7Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF7D778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921303358.32454.2605784798514323927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ea98c4f294996e2b0c39570940d434a81c2f8d0925edb2a6c491b2bdea8b95
Date: Sat, 24 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769213033
