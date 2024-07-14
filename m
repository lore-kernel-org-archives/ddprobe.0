Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B73810958
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720943423; cv=none; b=RdV3WCGmrobxAFgdIY4Nt1fgHUL9F2v6TqjlD0KYAbrXlF2nGKztUq8vS17GEyytlewdsBTlYVa1+6bGt3O+ch/r0B/OXPSIDmSz0CEL46tuy8j4rwsPyYbxC4rVSCV2LMmW+GDEQgcp9MFmnsKpfpHYl6fCIMxJh+zy4n7DQsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720943423; c=relaxed/simple;
	bh=o38P1yc8jf1LOEPOgsD0u4LCjyF5Lc4mksWGORImrbE=;
	h=To:Subject:From:Message-Id:Date; b=UHh1rGc3I4XlCnIJACW9tkszrgnXa228vPiF/0/OcfOhrRVRkCYmx70VYqiM6AYnSC8PLvWCRLYVJyuoGNXChbqq2D079k0b41NruxlXTfRTGQ65kjEel2GYaQVvdSqheLnQdwYX4yEzi9ArTCXb1JvBuMQFic10rctO2SDtU4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjvXmwJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjvXmwJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE011C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720943422;
	bh=o38P1yc8jf1LOEPOgsD0u4LCjyF5Lc4mksWGORImrbE=;
	h=To:Subject:From:Date:From;
	b=tjvXmwJ25cakGyvmxxn+7cFVybR6UUG6m6Vt9H9y6RmDbOsRcfjC1PwLpVNlswTeJ
	 BlID2kYdxhpSPchKAdTj8w5yZX4ZykJM4XqSI/PamRdvLhzmD14dN1qf3klo9BRgBY
	 aKvpPnXrK54MvlWn3XNxVK3wZMH4HuhEVqRk8j7uY+NAUGNT7Eb0k+tdzKm6gNJcKy
	 ygGscQSqz1zZb7HnW8FkFPf6TeRTQAdqTZtUTHhQNGLcdEBJ88rRwkJEMpheWyPFDR
	 rUGT7qmhz5wvoortiCztupZBcLrWfUGGbazT2pybpcvKQP36Q/eqdRC+IhU5NuZRFZ
	 RtWmwH+mq3gfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF34C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094342276.13641.16391983606661746572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0035ce21c8b724dc9b1fcfe29bf1e4fdbf1d3c6663aa2138c106230965a09c44
Date: Sun, 14 Jul 2024 07:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720943422
