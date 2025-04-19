Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF6B70805
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745093994; cv=none; b=DIDv1eyo1IKJQDxd/nn3+ItvJIiDGsGP8HivKC7OHakgOJf2WQqSu1NOaLlkgdN1biXoLOj2sPD+VOLj9SwkawaEdakl+9ynpa0dEuTrtlnDRix43Lt9t7cxsISeTuboxZzajop3JXrxsMUTLvIlyWnly0Ql/VV9P8uQj20ICR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745093994; c=relaxed/simple;
	bh=IjZpfJXOiAja/zvG2fM/65T3oRi+JchANi/uOpN+dSA=;
	h=To:Subject:From:Message-Id:Date; b=Hjwf0wvwiYa6MakfiI9k4ufIFQ30HajwORSzCpQgFs3Ozk84j3yy3zVjzF9ggp6VSE2fbtWx2Yd1lR2hvcg4kLogpB1t6IyjygvHhj3OreqmunAL60wzqceoBsF2gT7Y9F1SshlFfRMtEEKBLPhNvKi3ZTqJvtSQhFbjiG6ZzWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akwFhKk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akwFhKk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB82AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745093993;
	bh=IjZpfJXOiAja/zvG2fM/65T3oRi+JchANi/uOpN+dSA=;
	h=To:Subject:From:Date:From;
	b=akwFhKk7h7zE2LxMParHRMEIqnO4fvDPXt3P4+FzKeyzy1S65bohbs0SI63OnBznL
	 S7goOghQWXMQyoat8Upa7sd1M3Ug0Afv+QUUetoCUcRyqOiU6txtkkfQfw1godUbH1
	 wpEhSzBDfXxXYOAqpRkVzsZu2yGDAFHPjcWdx0eqtkbOLMsN5VRZ5OzYb8TLciHxQe
	 YlCU8Ts9EKOMypLNW2uE1h7Ctd2O6CpUT41UekyUtVf//vSIurPUT0nXKtB0Sh1XJj
	 UnDA97LpQpEr0O479eo8pJPfAKnQuRM8jgZeoWLqrUeflNoC9DutqrZdBlZ0In/nrm
	 RfLHBtGAqSmww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99181C369CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509399359.8276.15078939253349811165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce61cc34faab6aa558b25fc2b3a199e0ecafc73717c640c6e9bb3199c085258e
Date: Sat, 19 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745093993
