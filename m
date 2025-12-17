Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2202317B506
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765944234; cv=none; b=AZrKo9YW1SB/rU4LgrfU4xU0b0qJNYuKf7qtQa74B8mSBWKRXk2OTthWurVTJmI0OT3eOAtUSFX1QDAdFqLAHI0kETM5QVyNw4r5cBtDm/Qi6u3FPjzV0onQtlpmo4DNrsGXMUCUNnwXqJ2ny0tXo4qVD8519b+G0vhbcJsKa+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765944234; c=relaxed/simple;
	bh=y/cNkbit7/4wbQWbDjl6sknnR9bdj5z0ecvetzQP8Sw=;
	h=To:Subject:From:Message-Id:Date; b=UoH24KD+upI3y9Gtet6diDx47mM3oSpjUvqOV4xqurPkwqBjZngauGmq82ugntJmmH9Z3f91MOYwt9vd8FB1t4MBxsAEOrXXGzDxBsncsdmB7v8bADt+2YOVZlAcCBwDMHabguzqcDQZFCPYC/z9Pj2PlFEDtg8W50G8wIgQSy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POive8Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POive8Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0127C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765944233;
	bh=y/cNkbit7/4wbQWbDjl6sknnR9bdj5z0ecvetzQP8Sw=;
	h=To:Subject:From:Date:From;
	b=POive8Cds5Fm5SumOkjj4O21uaDuAld5WAQlhOZoQy1MDq5cKPseIkCclMwOGUQMK
	 F5MR0dpNtYvGAY7Ic+JR6w08iRhCff/l0HpjVlvUHBf6Qpji4LsBKAYCNryB38U6Go
	 j/GZmet2vsDpR70Dm5qfQMboBJWrx5Mex6XdLwPDhtClJIruIrn31NbNlSu7HKVSGF
	 PpgCG+uxeGLu9C6qcZtbu0I5k5k10PM5/dijCBtoLjPpdW3HbYGA0JXJUg82pIulJh
	 ZzdUNzMEUtAGdjr8Ufy4gzc/X3Qk/yDgPtydID2M0zMDwwlKFDXcYv7iUgevzTTNEf
	 fydWGQ6OFEViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A410ED6406D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594423363.4360.14698138505271149011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14392677f26a32ba2415f54f72132b221374e675706c947ecb0ff65f1f34ab14
Date: Wed, 17 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765944233
