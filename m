Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5897F1BB6B8
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728305754; cv=none; b=egvihOZXMjZjNXeaV6UxFCuHfnVYij2b5n2rCpKH6Eaa33CLUfjUrKk7HsxbpMJDkP6aZgF3ySMSkXvVmgeTkWjq54q7vhFEHJ8hg1uq8JPfzVSXTf3WQm9FIvXH4JW0NGJvLWU/RAV+BsuwIlKcb+q+sq+B/uVb02FZ2H1/Ds8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728305754; c=relaxed/simple;
	bh=nh0Q4E/SHH4OAMSojV5tbRmtNV3XFmtdDNmCL2jti4k=;
	h=To:Subject:From:Message-Id:Date; b=ol4m05/xcmrlZtpQKT2TIQ/oQz0T1lWIY3orjVsUMgmubyk0WuGrwHRXEvZeYJTfLiypHhWtwigQigu0Zx1Z0OCfqUnTOPHIENuJKJetBQ+x9RaEopoGQ9HFRFbEtK3LIttsUf9sgUyRbZRb+H6zknUwO9JEYFw98z5rLjV+9Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGDsFcjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGDsFcjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFDFC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728305753;
	bh=nh0Q4E/SHH4OAMSojV5tbRmtNV3XFmtdDNmCL2jti4k=;
	h=To:Subject:From:Date:From;
	b=rGDsFcjjs+pe4+qpIrzOhbtD908X3S28seHHYccydFMedUH39mARSPUK5dtiyiWlC
	 1l8exyOfadpL28bsusG4ywquy8+MjBfMiK1zBXCnisFsIQvA0bheD4E6TPSQsxQaZM
	 wFza0jjUExCl0exOYZomA6T3XTeROhbW20e5QLLjlMT2WRqpIqL5bd1qeiQkNpbEhh
	 xBEQj3OfilW4t4J/5KYtabbsvWCeh4kpFpb+V0j+6zeEPkoXwk1hxFgXojwUlp/BBO
	 X2K6UMNCQxqxHb9QM5pOIg9AoVmhCWuqeUlVOYYdmeBC20Xi2+8+InMexShl9SgJKM
	 UaakEYhR5KC/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E5CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830575360.3585.12227106201060700710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32b5b8270abc536eb9c1288993651e720bf3533b6e57ce5e4023921325cc5ad
Date: Mon, 07 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728305753
