Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259E0533D6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755401394; cv=none; b=h0ZRYkF4mCkwkNk7IPAz9S7LRgAds3E1shNNMuSLq7beetdt9Y9IdWZYaUlpcY6uUXw82GJpbCwz8MjPYOuaRq8l435q0I4/lZo7t0ruXnuz1nDRYPo1M2VyHFyfaaPCuJskICgV1TqRNntYhTP2QaUbP9Z77bJVU2WeGR1oQOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755401394; c=relaxed/simple;
	bh=s2S7zTo/BbASMenPKeNksrVkotP8lprZ9n0IvuVXC/0=;
	h=To:Subject:From:Message-Id:Date; b=VEOxXw4EgE7LSrxlk8IIOWX+eOr/D0Lkd0cYuFj9DwdwVw4B0UTQJsX67XntcPcxZPXzmkf/cBCpR4zYCw9B7pVt5SVslCTHsXoFqR4L4+6T2Qy/imSeBzRGsgHKTWOv+tUaeF9Uke1GwpEH7XfyZpWXvPr1DRQLMYbyWTvhURs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwVpKz1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwVpKz1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576EC113CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755401393;
	bh=s2S7zTo/BbASMenPKeNksrVkotP8lprZ9n0IvuVXC/0=;
	h=To:Subject:From:Date:From;
	b=GwVpKz1E2UuHMVFc2wDyt5s4ZDgAXukd5yLC/hKyhFJImef4Ct8CsYpizbXk7ncTE
	 URnivMghP9nlrO5VXM7lW5To9gbOsKM2rhaUfxtyAWUl7oCFUkWih4kmUKUJ+E8UTt
	 ztRMac5qFJl6KcWk8iWL6RxHOj7QUE+g1lj6ODZqpQgjYMX0emSmot0emDHn6Y59wC
	 ACYCI93wjFTE8Z5fhTFv+l5RjhHmhseXmd3+u9KzEDgTz06ooYrVfJFQnLwvelRx4x
	 s5jkarPCEWojrDu0s90qMkGyDTtnTI3q797Ji4NQP2L4B5Z0jEaRA2SV4mydLjf3vG
	 XFj5+pvEcCOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94989CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540139357.22950.4416219199394326490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a580bd7e6f7af6ca609909989e08ebb2b6f98c57c793a04b0d6b13c7914c2ce
Date: Sun, 17 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755401393
