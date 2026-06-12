Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B13D669A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781307394; cv=none; b=jvyISdShD3DHIP0cMH3TORfScePL8GOZcdIyBLz2o3awrNSlICPxPSetx28tBMN5ju2X9ABUJFZDZ/cxXLU5UELVAXk3WAQO6RdG5W+oshfxLg9V0SfMQTNIOJzsWUaGPR6hgM1hbbM+oVZmYg5O+8yDF5PxXiUtOLbiGHqvQWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781307394; c=relaxed/simple;
	bh=f8AK6rfFMAeQudT7g5l3CDd610UuCIf3t5nY5StVNCk=;
	h=To:Subject:From:Message-Id:Date; b=MXX7QlE1DE9KVgt/6WtdwADpIwwuUO+heTILQAuuPWO5WrpFNObvOxoCDkDg2h5Rli9mLnuR1hYhyHA4lgUWBSc40kfcmzCkHLFbImpQ4SNUvyxDkSgfspzq4vNjqPgM5IC6aI3DWc0gNk2KKkpk5MaATrVaU9hPc6VaaRcJKNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ermzEcJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ermzEcJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4971C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781307393;
	bh=f8AK6rfFMAeQudT7g5l3CDd610UuCIf3t5nY5StVNCk=;
	h=To:Subject:From:Date:From;
	b=ermzEcJRaTDUlIhGtLP/r00XcvYGg0DdEvUuJ1yjRcG9j2O1JMWpSsJ9vGFoYmLex
	 DX8jdJ2wLjp9H2yeFLtzaQsoOqpRcAKbgBikTa2Yz6A/FJcBDwngz3OGQL48qtV615
	 fo7tK3oI+SyevI/EfJtRhZiF2jRljg+xbRVgtBIyLPM2dwkxk6B2K4web+TOm/0FvW
	 5DLkczIwemBfvQwABVMrjnadEJHySs83FbOldqY+DxdyOhoBVZfoHfss4hjxDvJmP0
	 Tbf2ea8tQ4g9Tahs+uLxNRR64/Mq4008RCAy5NKJNnXVoP+0CYTEm+bdwsdT61+0s9
	 X2NP1yKkjF2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C6CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130739368.30196.14483685457507720347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8ed5bfd1d7d0ba1ea58bd697afc2f5778f8a2ff5c0dd3f65e9f0fe01f6bc6a
Date: Fri, 12 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781307393
