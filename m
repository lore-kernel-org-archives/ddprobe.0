Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2E91991C9
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755420595; cv=none; b=l9zVoSLhharLHX7Tr2MpYnVPYQSxIfAuAtyfmkw0XajhUPuEK6ZgcaMkvdk9ICKjKbP00J6zKPnQOHVGSEZG04bkARgRMvKKeYCRa2rEpwet3TkaAUGQjugAkiHODM9M489s2zAn+Stf1Qgsr0E6MVL4nmTQoS/7fOUTDS26mrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755420595; c=relaxed/simple;
	bh=G7PwKSQG6liMCFOs2Z2actHF0CkDKcse1ucVyjQmfNU=;
	h=To:Subject:From:Message-Id:Date; b=mbNJv4b7/TYtqn4K9yb5mQdQIarUXwSpwk2gXTTSdygs9RwA5f8PTVI8KBZ0W/PbO8mwqjMbbFHNaTBNXaIfnp2O+LabxtA13B+zjmJcqV3edTPH3rbnyNAU5egEexToObojIs++T9iqeR9WgUnR3N8O1Ftz43hJ9Ydb99FJZPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ik7/l9Kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ik7/l9Kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E077C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755420593;
	bh=G7PwKSQG6liMCFOs2Z2actHF0CkDKcse1ucVyjQmfNU=;
	h=To:Subject:From:Date:From;
	b=ik7/l9KhriYSZBm11Lf/0I+I3VPAjZLftpSGokqHwEjqAk+eL5Wj4TiCvEjI3aocg
	 hb02NdScN9FJMwWxQrP38riBhHr4P4kx0ENYjqZJ3qpVZFVjI0YYCy6FrKirv/4yZn
	 UI+RKWMG73/ozVVfXZr0rOxqs1QF1IEK6Gl1oNK2wxarmJD0OE07P5A9QMVzJ9tUYS
	 vKMPEEa4mCqYpzUVIsP34h+Ika9VLAtHEN9HyW8xoPwHwP3SyuM6AXUtm/oCd3s9Oq
	 QkngRiQSiPnzu11dQG093hHZbADK/7Qx0vcRQtYszTRLB46Jpp8DE/zfgyBwUFZJP3
	 +hAV+qsYUYbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD3CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542059357.2236.6013099887875796207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befc2095e7cf4607da67cceac9fc63d8722a2a88a755e449d9e8da44b9d56479
Date: Sun, 17 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755420593
