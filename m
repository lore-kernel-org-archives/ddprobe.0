Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B48D25F7AB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746824394; cv=none; b=T8CO6oEPAWOUnbHFzFXpHGEW9zUvsuZ8rj8oZuoXvInnebcTgP4hJWciv2xeHGANu0ng42H1yc13mKA0mY4Iin1huc6zB876DY/hAMAzNB/on2KHsN4ec490uEc+VtUN7GNCdXI1D3HePuxtVnabcd9uHvpCzC0FCyb8BerFaPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746824394; c=relaxed/simple;
	bh=7s9ZS3Yvx55YV52F002wjUCbVP3YOW9NEWQYX4Q/G8I=;
	h=To:Subject:From:Message-Id:Date; b=X39QTshw0BJia146+geK7sm3Rzt6g/Tzsq79PIToHAQHfdQpGpcojeQaw/vieqJVocUFD4cnJ+mtM1DKTcgLL1NoKENxQZgBBrGYM+u5IPkR5lmPJTjBaUGaH2RdfAseId4Ee3jonuWs/Q87CiAAA57+H39B7/+JOBScBmHG22k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8QeebAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8QeebAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0804C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746824393;
	bh=7s9ZS3Yvx55YV52F002wjUCbVP3YOW9NEWQYX4Q/G8I=;
	h=To:Subject:From:Date:From;
	b=p8QeebAl/OqTbn50YOkAJanQxqFwtL3v2EaRT0rdR+FN6ZNe15pbp0LrkVlfNGnaY
	 HvQHRJfMSt+3xTLMLzq/004TwTzsI2rhZZHGVevP3VeAfUsFnsy451ThHKQEhzvEGU
	 F654Cdu6x+K3Pv/m1cHVlVJe4khWH7sUYZjxjEDeg05rOTcwHa5Cl7VzZA7xQAe0Va
	 3toMCEIsfM9jHW3K6xC5x3yLCiZKsKQNpUF2GXLGY9Gzg1kRk4A+kPvoCYL7fBzA66
	 eLHwW0ckzjZ2WQESvb3tuuEgTw+ESnsiNMR8caPaTpu4FCTpHVX/Ih7EDKROxYLw0u
	 aDnd1pfMHJPuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99837C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682439362.28385.3457516877090499484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8257198dcfe6e475a41e5768b13c7eeef4357da7f3ad0533096b3f33bcc31f
Date: Fri, 09 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746824393
