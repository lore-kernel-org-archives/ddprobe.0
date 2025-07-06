Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0691A314D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751788194; cv=none; b=kX26rsOerBpHHqtR7tjTfOCQ8tN0U4z+f894K+j2UvyLsyjF1yu7pwsjZaEFiH4ZppvR0RVq7VnJXt3hIL6/OCnm5phILI9x8MHunwXliRzG5rDwaK9Va7wwQxTkkF4XP4khmIyvT6VtZC6s+UCSCi+s/0cuxdOBQD126G865M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751788194; c=relaxed/simple;
	bh=2E11JlV7pjPYi4RhaQfWBVSYOQPrUHl1CL++L3cFsjc=;
	h=To:Subject:From:Message-Id:Date; b=Gw4MgSvaG3gO6nWoYpYr0oFf11xdDIP5SD8EcXjJEJi1j5bOIdNkPdDA00GXG8vQ0nr8HAfAMlmm+5sEW+3YqXFfbd56ZS8hyq6ojWDhBh4pQT11Sdi7FSsKRKbUTKJXCxJxEqNdA8UUhwc38fOs1dKrS60GY/DEgP6S3F8zVQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0krQ7eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0krQ7eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0FC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751788193;
	bh=2E11JlV7pjPYi4RhaQfWBVSYOQPrUHl1CL++L3cFsjc=;
	h=To:Subject:From:Date:From;
	b=H0krQ7ePYyKYdE80sig406woFqHboFw71iKczbGk5mQv4+XDmjv6Cc1r6Xg3X2whi
	 zD2LyCVYA0WQSBh9zNiXYC3ZplBv8d3HDUArzUoOLAdAGTlyrwFvmW+TTF6cXZ99Gr
	 UgAtORhtyERSXjelKlq6Kfh7Th4Mxo/clVjTf1h9+ZEFZQfoHb82M9JNvdZzX6/Ogq
	 NbIj1vHohTSk9wtUfewJuYJ/AcV7DpXrgoOFubFK0QLMCNLA7NrBO9dqvIxTA8CTzq
	 0xOyaZ3dDSPuPOF8hGKJ1wZ+DeSXukniGMsWmI82U2L+c0tiLV3dBCEyFStFzSeuiX
	 v8Nua0NE1D+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9295DC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178819357.16671.7034551873110680368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed60d13ca46186d9d3ee480c79a674334e2d8bcd155bdc5fabf7d3ff00084a20
Date: Sun, 06 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751788193
