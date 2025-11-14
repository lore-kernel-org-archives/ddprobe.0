Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431A22F6926
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763152794; cv=none; b=W4rCe+5NI+dUZwsHYPGycHbxk05JMeRDRjZVcBylRsSTlHs4YTeEZ9A8yG4XiQzPleG/O6WTR0R9baelpBS3pwqNzzrIrz0Bnmx4jHX/7XgMpWk4NSyc4k+V+uE2mZ7mEABVIPridKpwI1TbzAa7kGT0CaGbkW7NXSjNuW81WSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763152794; c=relaxed/simple;
	bh=n8p8caQM3dpulMIuaTGlkeZ5R3SaumCGYng5zXz9CEQ=;
	h=To:Subject:From:Message-Id:Date; b=OZIGwORvcdh8JUNh7E89jylwrie9kDf9iQuP9DmARtHIuE4K7+Nej8MQk2SlPs6wKrY88pwTYJCYL04JQYd60Pn8VGYG1PojVVPmkZFlUCE3KcOFgGdyEn0fR8733VvTN4jKx7YgntsC158a63soRfWfzLq2KkZNJRKR0hmo7PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odd9SnbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odd9SnbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E057C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763152793;
	bh=n8p8caQM3dpulMIuaTGlkeZ5R3SaumCGYng5zXz9CEQ=;
	h=To:Subject:From:Date:From;
	b=odd9SnbB19inuVKTFS9sfSitAGXtfz1PSQg924DlcOm0JWEpbdtn3krW7r5u4DAcK
	 7kfTcslUY0dgLc8iQ+KQUtlVGhwV3GUHujfx38DCx91Cql9PX7ThQ6SYcitLS8ADk/
	 V+7+/o3G9yIDVQ82D6bpLDfRfn5qcMRAUTo+RHBVDZWEmrGS7QXQpo+2vPSqNUMrfo
	 IIFcPx6VRFvugef8s6xdm9bYML0EF+xdBU6b2X3S4Bs7A+nHya8dNthsUCSYZtZQ02
	 ToRS4I+IF2NK6KvpYk2+nkb32jJM/+IIQf5whLFMqg6dkQlCL8UIsnwsIBp1WHdP2Z
	 q46P/gLG1OC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91165CEACCE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315279358.5447.8094773322169115232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e9d7220af67a1393af57fd02d6273e9f56ca51b30999ed92045d8cd4897880
Date: Fri, 14 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763152793
