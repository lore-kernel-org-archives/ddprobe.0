Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AB77404E
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791348634; cv=none; b=JqNhM0OOv1TgyURuEVfJRTjOGStPMNUO0RyEeW6ceumes9DdUI6rfxKxuelp4wHE6nQVgz7xi5xfIfZ6jfQVVNrKMTj5SN3RgBbO+YBo5/N0Vpdd1vkKw/ZjLS4dPkn5/N0CrifTSCwc5xv4s9VUcvKZ8M3LNExgMIrAR86rjjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791348634; c=relaxed/simple;
	bh=RQ061ZcPINfQOV+dUnPFg2p/qaMGylEkFowB8+aLclk=;
	h=To:Subject:From:Message-Id:Date; b=aF7DO6c67zHbdxEj9MRMqmyD6scC/EAwP8/38OZq0YAXqZXcAUdKhvjfwdQCXKZjapewkZnm2nUVjPO/SsnDsaKM3XodnAnaq8OQtBV5jPPAnOOexc8TIPTIh7qIIGCIhR1HRwJYMiX43ZXDHl6Ioq2yOBEu7pB3O7Kc6RbNmJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R33rg6uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R33rg6uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6BAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791348633;
	bh=RQ061ZcPINfQOV+dUnPFg2p/qaMGylEkFowB8+aLclk=;
	h=To:Subject:From:Date:From;
	b=R33rg6uA7KxJYMXVpX3h2YAKMIKtYbS8PFBEbgwt5lCurvY6qnvy5JdmpWf/0N6P6
	 ktoIUbAuDoiXpdkBRXEfEeCzICjgI1RW9wI8Z3HBIoQmmeZX2oy7a3gi3t09um6MRE
	 vQ8IDyOYiS7iB8WFSe2hwboyf3z0EIX4+Z05lE7D3i+wx1L2VJ9zTtvnuqtSSTKGO9
	 NBs+5lBUU8srqZLtRQV+PAhp6qFHvitn44aRD5lUn9ifa4T1BFL1Kk1G4beaERXVUW
	 jbW3YrmxcDFxe6AXynS8+kE3BS0Ix8NTWM+h/mxe/SW3zck2MuSZtm/db62qfT8OCK
	 LhWays61+YeUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9723CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134863368.32289.17036655164758514093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63da635558a22c2dc2428d22f1115ad083ae3e003c63f341dc7b682e21eb349e
Date: Wed, 07 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791348633
