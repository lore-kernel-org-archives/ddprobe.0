Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B279266A7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754377794; cv=none; b=abnRV/RzGPWFVpRtRwLQWOnbedgaA9osVhHdEY8zLGzKplECk47goXUPZRStvmPrBQ7kzYF2tfqh7oyfJI5COc0ZVz+wzDq5swZ8JBcz8+vhzUQF8T9GRyTX/4+34VYn/cgQRP3uMfSIS0dXT0HKITt9NxzCL2qUdeIA2fOoKMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754377794; c=relaxed/simple;
	bh=gMb7Hf/IRua7c3kY/HM/kVSeX+8hfM+TGdLTLEBXh6U=;
	h=To:Subject:From:Message-Id:Date; b=pf0w9ZzdViPKTpb5JVbYx+UdCyjPDZO4k6yUOhlIOOGjxPwmiuH4+gq0mydrk9xXhK36lopXlNSnekcEiKyD0xSZZRKqFpyM7XxiUT8K7wiF3zJskqs2q2wASIelyPl97uun5PibZLP9rJbQ943qm3ykJ1cqa4bxvW+47+u2Bqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iciibdxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iciibdxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96BFC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754377793;
	bh=gMb7Hf/IRua7c3kY/HM/kVSeX+8hfM+TGdLTLEBXh6U=;
	h=To:Subject:From:Date:From;
	b=Iciibdxd5OWVcxoUyN5EFPcj51z5WfdhJzxORWJ/cB2mcqvKjcwkZMEJMfNc0vy8m
	 cTL1GMkebSeVn3pFlkW1FEjoH4jRC6rCljM3ZmZZ1z7xhy1ykFLoFDTwmuJrpUTAci
	 Mw+vz357kYiGuam8FSl3CL819kjHTT1EaXQ0MuRxUf7qWuOsayi9pNdAy68G3sFTP/
	 sGAlYvh9dQilyohHVU5Ta8UR8DK52kSGWMJlCZHzC0e984LPvI9l6FqmaNWx3n6CH/
	 Pz9HVOM22eiWnEf5niYRYEwZ3ypsShNHQTGCbOc11bPgRCIhLEj3YiP1AACoGF1SO/
	 GcZPRHnqa3Uyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94760C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437779359.14076.17874579842216140391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f727d91dc666bb612b0b48213d1aa764ba3a3e9bafe97a8730f2d7c42e3a9ce9
Date: Tue, 05 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754377793
