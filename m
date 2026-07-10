Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173B23DA5B0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718914; cv=none; b=N02HRPc6TTlncfCaqjEvKXdTiWVtnVW7JO7XHpz86IdhdyCR6lU+VsWcSYLFHjiGaSR76/xaUDE4TeSKVjEVwjG+eYPT07wK5GrBVCBotm1vdJLUAJx9CIBdV+1V67pn+CROQPTR7CXOQeiEWMOC415N82hhz3ds75ncI3Jnd0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718914; c=relaxed/simple;
	bh=ZLhR3R03zgwYMnqj+4Hw4OmsQZpof44PCtpRqAVQvow=;
	h=To:Subject:From:Message-Id:Date; b=D4jm56YZoNQX2048QmCfK5PWTrIBBgf2GRr9dDJbE/mnmVqXwoElAO41daeWqKreGHH6Vf5Q40LMnQnF7WZR11uLVyroV9+ufbbiQYjqbjUlqgdJ3hy9vovKcJfzlb6DdtcpOybqmO0H/VDywTujlRXEjstOROTBIJfyU1HiYUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR/UdQt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR/UdQt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF149C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783718913;
	bh=ZLhR3R03zgwYMnqj+4Hw4OmsQZpof44PCtpRqAVQvow=;
	h=To:Subject:From:Date:From;
	b=dR/UdQt3uCUGeM7DVwPKo5gYi0SjvPvyWWibJv+DKkvnazbSZkdtRAIkNILwF5QwB
	 tsDBTYbCcobRRo6e2LI+10JvT6Ly9oQTGuTvsEPlvwMUgniVGwOLupSNaZAdi8S+uL
	 AhEyiHbz/BE/bMLtKBmMsnDvtD8jpLqGMpz8cjFomffUZtKMKWCmUACyCtwIHKntgC
	 0F/9ON6A1AX8YOsVkpu8C9pUfWlRAewZdKiy0wMA0uSVaNwUqbLL1IWsy3IcE4M53S
	 CPIxhtrtfAG5+VpQO7WqoA0xN7WL0tGNnakyklz+6DdR6Gdqc36yRgQ4Sui69IvybF
	 46jy3TrFFcpzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CCC44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371891369.18233.17862366134808425776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68df96ff69f30899b1f4e6bf93d28bc01e88aa1ab3ed87b33de59de56ef0778d
Date: Fri, 10 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783718913
