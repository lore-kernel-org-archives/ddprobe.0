Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E42128816
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779933754; cv=none; b=IgzTknb4rRqeW1nQGoVJW5/oaGrbXdSqcOWjIZsLgIOlH7kyNmQihQJXvNRTooURdfXPd819t3yD29PkWH/Ll4BiD1Wi8tkpBClKMZqN76cr6Sv7IIqvOCPHpTgWHdPVkcUEdxTWHqHv0R+g9fmPwAyjq3HzhUsUEobHXp3szf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779933754; c=relaxed/simple;
	bh=hEiwxwzxcrDUZ7dviUDFJQusz2cKWnE8Q9lFUum6OC8=;
	h=To:Subject:From:Message-Id:Date; b=nODxLEIceZKH5oZoOZMA5NzIn3+Vlous6apoSBBhTIwfcmJfbCWAk4J1Pe8mSzeIfBCj2cAQLRCM1Hp9vuuticE57qrG35OMdhw2dpV1WH4Dfe6SUmgn3T/iTXZJoGIHNssNrGk+YVMUcJH3gQjFnjLbMVRa5dVfBbLHzZyvVRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKo/bcv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKo/bcv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E03C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779933753;
	bh=hEiwxwzxcrDUZ7dviUDFJQusz2cKWnE8Q9lFUum6OC8=;
	h=To:Subject:From:Date:From;
	b=YKo/bcv69EWuHwcOpshNkd8G82D7XpyFgiUUNuqGQTTPhJXWT2LYzFPr1MLVyvrm1
	 C3a02EdXoSmd3e5o8quvxxx9pQhjW8dxWgodpm/nFGMPC/OdFLLR7DY4XjB5iLKgjW
	 lsWE0vQspAbfPOj7Ago7Gc9ajinKm8iPTDoAE+QBxKo5bRi9C431meYv+HOwpOl/gV
	 6a0CdRbeASMOZikgEvyPHQbU8Q8GTACCvTR0PRMn3CW4SYTqnpg/n08Qj/B+aB+Qml
	 ESsIT/spuyrVzWQIgs4pWITzCmz9bxIBB6+4gv0HT5utu0Ye3ZGctKCkVBYZL29Oy7
	 4vMFh3NKmmBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F16CD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993375367.8546.12702468637098665967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fdda903b6289c5bd3083a104ee515094a3e0ba93176de2309ac9e26cf0543a
Date: Thu, 28 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779933753
