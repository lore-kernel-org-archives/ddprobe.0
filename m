Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AD63A1D00
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770206034; cv=none; b=uvaKNj9XFmRJ6FFHHZXjkFQzPbzuZfBKpJ2ouCFNIS9DCr8b0IgaVBp6JktJqNkItggFTAftZg38TLiu/MEoz4HT2rfs7Aach/L7eSYbIOHaQcgvBy7dnVLIpa52D6Qy4kZBxxgYRNDLWR4/abaLpISw2ZOL6E2z73D+IoNzcPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770206034; c=relaxed/simple;
	bh=rp1H0Zv9yHkFLJ/rWKSONFVdEOqbFQ4VFaE9URF49/M=;
	h=To:Subject:From:Message-Id:Date; b=h6hIIDp9VU0do+K5i7yg1Gw7dkk6WSfTcdi98A0xFsAyeQMRmDr2qQOUNXDaVO1FeqgU3jWZPL/aqiW6LXSUzGHhKf8WRmsB7NookNW44HsTVyPGiFJLFNsKuGMw9vdoyvUIE266wil/ufzfCrco2p7CEJIj12hjtHRZ6J///8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp76Qi5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp76Qi5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D97C2BC86
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770206033;
	bh=rp1H0Zv9yHkFLJ/rWKSONFVdEOqbFQ4VFaE9URF49/M=;
	h=To:Subject:From:Date:From;
	b=Kp76Qi5PJJpICa0y5neE8MCFFN+Ydsa8jAHXZNUy9YnFL7VpMRdE+yskCzRIo8aM4
	 oZHkAeWHTpxU5Kw/9vIO3niNoABhaPHr6ukYYhVq7tpT+44lm+F0GAdKVkY+BjLtSg
	 e4nGVPLn5OhqHFbYDIm/LQK+G4WUSe6aAlsNTDAgD54DiQHIvpokZJcF3i43AaSlW7
	 N/cfkIcUCF2WuX21cHntDk0gFRsdc6MFfA5w0tk1OI0LuooS1/2RoXTBo9G/vxTlXd
	 JkbPb4oMLqMSo7bwepZOva5pQS9ehrUCg7EjyaSj3k6KzjAgkRMd2Quc0H7U7DBoiK
	 leFt0rRnLq0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB3E9537B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020603359.21142.3254666128070196215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1dcaa8456b807558194f0077dab5e8ff4d9260366635b5e725df69bbfaf0bb4
Date: Wed, 04 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770206033
