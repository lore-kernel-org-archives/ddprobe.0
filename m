Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1430D1A08DB
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768128834; cv=none; b=n8VCl77svlOuIEBbyNeQ1G+5KXHsY8GgH6wRiREFff0GRxNLe/ZspSnDD/I79P0yYHsRivh7cORGdTiBXu/WYTPFG7XMlsiViUVYSWKeFRNO8aLaLFgB3uwxUo6wk6vPob9Lui8uNFq4LG1cVqR6I7fVB3zFZ9Cor1ulGBrh9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768128834; c=relaxed/simple;
	bh=DmcFYgJGHgBvzLhL4YsbDrElpNW23mYEeLCkyZfuB/0=;
	h=To:Subject:From:Message-Id:Date; b=fZiTIBlGVfPizTl0CR7v6P4LeI3Zm1qBdlfUMvuyhAt3Qz4g7AAPBaJT4Bi694zRUl/OtZ157uMo3O3iyp10hy48nzlXkXZMMS2PxqsT7WUVnyq0vGs7Rmm+cKI72LIgxb/K0H1wPW0OttGqhDMtr8y1rb6f52aKYLxPM+pYzno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiQMyUWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiQMyUWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768128833;
	bh=DmcFYgJGHgBvzLhL4YsbDrElpNW23mYEeLCkyZfuB/0=;
	h=To:Subject:From:Date:From;
	b=oiQMyUWggIsdwBu0YAz2WR/2WvPre0coj0BtSwdMYW9FB5PjuCz4t9C05Zz4wqjqW
	 EPmz/EYE6BfkMsqezDRqYUFZYjZWIQMFPzVvU9b57G0fAR9P7JaV7ePIDEIUEPL3Nu
	 HkI4LceHZF8Sculy9ovrXs+qdGYf7UvhCTDR5m8q/Nyoxhppn+ASe/e7w9FPWh9rz7
	 DA63LfayUSuC5tfNEZY8gmTWqf8NJLW0+1ZghODfENn4EmT5ev3vVPxGwCZVPrevpv
	 KjeYlm36IrExSFuZCdyBX244IBMxDW2xJy8EQvl9Af8W6t5OsU9b26F0USSj6wFTW6
	 qo+rZRVw5ANIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F7D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812883357.16586.13383180717807247801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ca7ab8f4c318faf86622249af632f6990d4a89d7ada264a2c8432d9f01da9b
Date: Sun, 11 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768128833
