Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358CB7260F
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769228634; cv=none; b=c1zyUBR9j+qpKcRwwxgOTMFdJ4Y42JeY5SLdnHRxcoVaYsHTRpbn7tZcuasASiaod7V8YP+1RGQNDvFsOBicvuH06hmsihQhz2/+kn59USgjFPzm3qUgJ69Ro1KWIBQ6jjB1ei4/jnCd2Asfk1lWy6EHoS4Kya9Rt9EamXtwAaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769228634; c=relaxed/simple;
	bh=gTeSWho+n8J55JjKN9a33dOKCrSOii7iWuARzo03Ijc=;
	h=To:Subject:From:Message-Id:Date; b=YZSQHYhDaVjk4J6jQ5ivpjXgV4epXsSq6NFYsiZKKxGwXhaQmwgnveqI5kDICVlvj5tNEtDrB6SFvK6rrzJMtAkMBZpAard7Pg9cZLwIl3sLhUlUdc2Le6U87CwXIab9GjzwGYsCU8jVfpic23EuzYhglOFiHhC4gf2dh9xEAfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6a6Q7Gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6a6Q7Gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FA0C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769228633;
	bh=gTeSWho+n8J55JjKN9a33dOKCrSOii7iWuARzo03Ijc=;
	h=To:Subject:From:Date:From;
	b=H6a6Q7Gi58VZm+SzPyIoSMNdlc2x6xhnFTjtNzEjoylY8eyJXIfYGBYLDxyd6fgwl
	 XHzJXPz1rgbDxYUxcTe0yqGKkHle2HfRLTljikpzcpk7AM0EuyVaRrhwZXBiohDMgm
	 p3dYAanrvNopkCoaqAFS1xOXpXr8qjXCfCc1kJqX82SKgFoLGBOY0NGK9ASZYONn+k
	 IpkbIjevw28aSwlp4vj0I3PiYJEM1fX1WthIbYwKRInXUfQC0WcQ+8bx0rOYb4nHTj
	 P3aLQPZtUoMSNpNQacXdmiqPHViyAswszY2+VrSIiRY4LnDXJvZCvrDQ4AkcMCgRDU
	 qIzSMQiipIoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C33D6CFB9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922863365.23909.15887628421438141061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a0c2333833c5842aee384faaa20aa54e04235fe636547e5f990350de97662b
Date: Sat, 24 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769228633
