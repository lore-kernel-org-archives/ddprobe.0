Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8E133F59E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775741794; cv=none; b=a77iX5FXemt3TKJUjpdAuXZilYZtDNeWIDKnEkHLwnZXBLYKz5IGgXCh6AZgf1Nrk39rJPd+EIV3iNLQuaqpfhuNhYPzvKpPkIr3u4QaC5Hnz2tY0WJlu9rMajw63lMb9oRJmcRgpi8C/rY2McfyhJ+uaRJme7ISIABPZAZZGW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775741794; c=relaxed/simple;
	bh=5G7+xxBZ6ZGZnTZpGfbJlQw/J97kgioIF13KPH/I4BY=;
	h=To:Subject:From:Message-Id:Date; b=TArmRqYM59P/lrzU/9cu+eEArL0G0m6KH5j7NBxgBch1X1b+Da63YImCmKV7G00snfmIoQgpoR3WnRteMpk2AwDZPZRHM1yAByiKUtUT0ec91W3i5M/uvGBI39YZGjqOaXs0klZRibNYYq3uY+yhKqbNuIn800kKBOZGNfZLhmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhU1I6XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhU1I6XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06967C19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775741794;
	bh=5G7+xxBZ6ZGZnTZpGfbJlQw/J97kgioIF13KPH/I4BY=;
	h=To:Subject:From:Date:From;
	b=OhU1I6XTp6Qy612SVw1rY4IlBCaVBBJV28pKGPOMbVJWfMxAyU7cAEqFCc7L7tH1S
	 V8RXzPtRcjmAKy/qZI2uRGfNAfMgsqPi2QRMIkZe/YZ3XwrF7lONr6bjtyoTz5Ok2D
	 D/OYOAz8z4MztXeAyf0K6n7J1kwORP8iunY8dd7fD83LYkCjMoyrXAO/XEb8bafXSU
	 XtliaF5idkOf0popEdxKXfQXmxHgqwcFHswAgeKyn3Bapqwrv/mKst8rsU6ETd4sEM
	 r1Y5joR8eTHN+WO7yIQAdXEFrsOqF/+ZgVoDQKELs7xkzuHMNB5sEg2IkWb8wr3Oee
	 pgzgU/EqcGpSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB498EA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574179380.20041.514341950162292468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fc5859c6a3a385d232c03c27320bde114cd6e2c948532bb8a80f76d0fd42c8
Date: Thu, 09 Apr 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775741793
