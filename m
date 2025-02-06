Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8FC1A2564
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738817755; cv=none; b=qn7G7pq/ktFElJWi7wRdHX2w+lSFlRXmDz6gs53H02rK6nl0teP280MjeqXSxpkE1UfUgmFHedQ+7HUID3fy5SCFO2N5H+o0eCMdc9n4gp5lcgElKmZk4FS1kZCwChVDBGBPtW6+oBVWhCvJHL5b5aKdPFhwCRuYB8m8Tu/fJy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738817755; c=relaxed/simple;
	bh=R13YkihJPr9ArKz2LxTdufo4rJ3NC2QILk0olmg5rbk=;
	h=To:Subject:From:Message-Id:Date; b=MmNklP590xLvd49Q5njPhCoUQYY6/zuqpTtTYZM9VG7kr7R1pU3pom+fXVFJLta33rrOiwQ/Pt4k20ACNbzd6fWqNZ2HpIPtaqSZJLN3yHlxwoJtziuzPka3TlT3RT98AmXPpzck2OywCmG2SAr8pVWuLykS/8HF365uyZWzGHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5VSGIOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5VSGIOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3880C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738817753;
	bh=R13YkihJPr9ArKz2LxTdufo4rJ3NC2QILk0olmg5rbk=;
	h=To:Subject:From:Date:From;
	b=R5VSGIORx9xbOBJejrYtsC74PWNB/vIyE2U/335E1FFIb5v5zGogYaG0Hm4jW3UKd
	 Eq/8wkC0/O6Hgszfwuqrlc9c4oBFUFSj5NHJnxro4bG8xGVyPfHkM+7oWesZIPVz6N
	 0O16VYSIxA6yO/LxucnskNxXB8E5B0OPqj6XSmmHHM1hIcedeLajid47eAbiESE6eg
	 N4M3FZwhRpvvxTDIQFWQzt25GaArYtybKAyEndcAHPjFgLOmZcHptUA4dHibY95YYC
	 E/QVJsgpgMQst7qCnQp0RpVEvZRZLSESOO4YHPWIJrxSh4uOGrYm/tgJJNYspNgEj7
	 3yex44ng+jnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C418C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881775362.14033.1006194006088521283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a24aec535058b88bf1054744f0b32503a1218109180f4e4f3eaa38c89f524b
Date: Thu, 06 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738817753
