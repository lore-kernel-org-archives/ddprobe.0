Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340182572
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722563154; cv=none; b=br2r/JnfbX3keTf+ExvHvQNzpYkbmvPmztuxfOJaarQ/G32xjKEbEmpGrP0fJHNt4RCbAF2U4LLgbx7Il4uNS/FPx7fIfrDxDpBA2oBXc97LuGgtszFcp9XN1P1PeJEaQ3SvfqD8gzPUY+q9MedNX7wEiW1HTOPFFu61B7JkQnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722563154; c=relaxed/simple;
	bh=XUNcCts8CE1S8RpGlcMQm6b+VsCBI7ZEplcdUO7ro6U=;
	h=To:Subject:From:Message-Id:Date; b=CdChI7PxYgVJmvhK3/+hnolt8ZKv7BV21YOVeYVoZ6mr1ZhqADEO3bjKgR5eNwjut6iNJr0tZiqwyq55gqx6g/W1GUYfxEz1EeIcx4g1kOHZ5kf+AW0Qt3eZ+i6ozwg8S7+wjWPqI81d8j6YzOjMZ/aIrfOn6jK5m3UlR8xxhfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjQ+ubkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjQ+ubkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D7C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722563153;
	bh=XUNcCts8CE1S8RpGlcMQm6b+VsCBI7ZEplcdUO7ro6U=;
	h=To:Subject:From:Date:From;
	b=AjQ+ubkO9Kvkk5/R52NLsaWERLRGb0EdIKWPDMLZ22acivf4sogmjaSl4APBg7PgC
	 IF/kVBu8ai2zmywLlxTjk8Ma6M42Eh4vxp/BqmZhv4oo4204H4CLYr0dXpFu2b2mVX
	 h8aA4Q/BIynT03C1oJvdMm/wzGTUY1NM4Jgvk4yNJUjvhSgYV5G/b9lyuPtn8tKbD7
	 LwtZar4qDHq85Vsjs4nu2uSUUuLqE5b2HzHO8RfBOSME6LklVBsCz5Od3Bdg3gbxGw
	 FwWJKhcUjiDFYvu7swPe/hKD/h3Dl8fMXcY047LYgItW1qavdaZMGL0Px5MoJ2jD1j
	 VQlT6KpcKK1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D3C3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256315359.905.141444917954499948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f3a90d6014f36d6377a007d719eb5c650c999db9d7b04002778290e10b9f5e
Date: Fri, 02 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722563153
