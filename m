Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27193236430
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743586194; cv=none; b=iMPjQKvwBSbq1tUx+d12QsvSnuymCfiihWqnK0NsHfYztmF7dPgJa6Ok5AqiOQxYvr6Z21E9bjKZtDha4U/5RqZP2rBG+PdsxUKBORQZZiN/AeYxIWfPTl9bACGZ3a69pvQF6Y9UzfWx26jUfInp+0Htn2ntztxj8CoQ1LeyE0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743586194; c=relaxed/simple;
	bh=NdSTdQZXvGrAKae+F1Ha4lwgyB6nbSO83FSS5c7YIrY=;
	h=To:Subject:From:Message-Id:Date; b=RPFeL4Ax4SN0HgCuyg07oGpucALtrt7WPoM4r3I/jTzC/j3aOBVXWsjq9usZ1omgn938ReUZocDa3tXjTvuZnCXv2QpaQ6nivlrgmoE2z9n6QBWtaD85lxHdydIm+LBNdWN6UwKaC1upuktB7qyfgQ8BLqmkajrA9NxAtqgH3Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXm9JkC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXm9JkC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6545C4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743586193;
	bh=NdSTdQZXvGrAKae+F1Ha4lwgyB6nbSO83FSS5c7YIrY=;
	h=To:Subject:From:Date:From;
	b=DXm9JkC3vtCvj82AYSJwGGvQD2KKeU/zrZAucJ8t/XQGi5++ArjuKgNQPj2m78ZcQ
	 xy6aEpvuY72M+f0pg3zwUd7XlIGsodEfdG0hokPAsAFKYbfdFZC/aJX51HEdREXu9T
	 8gFdHYSZ9jAtv+iajHVsFl7kBHcy60YkPl6XkPfMHiNkZt6Q3nvv29IBnCa5gCYZiY
	 JVCg/dUp2XOrn+A2pfqbdMyXKh/nx6iUishRni7Zi1hZr0d1B1tudFSkpdzpXt5e/O
	 t4W6uOFfb/GUJIPxnGi85i2pupRPmvAzvPnN8Cp91IG7Nsf5QNDPfCuyAE8zCxcPbP
	 cWntRxnQSjXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D4C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358619359.23469.8559022330568833772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfdbcf436de0ff2ffaf024158ffc6b517f0bf8b7c8be67e5711f5469bf0fcf0
Date: Wed, 02 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743586193
