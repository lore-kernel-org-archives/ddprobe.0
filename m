Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCC848AE39
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788284434; cv=none; b=k3dK9eHM5qmz/T0Tz4w4AKqMRiSam2qMWUINvEH6KNdzhjb9V/HqSqxC8YYU83poNpdl2aa3BbIqd/+CeFCUmz+9TqRixXszwIWGkMt0kdWzVhiwJrBwcyrevHCq86gcYmh9kaLbx1DgkGsfM+j1lfdTFrfuT7F6KWKsb0t6ixo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788284434; c=relaxed/simple;
	bh=lKc9H9crKpXD/5R/4zq/VYns3lUqXgaLwO+IJXh0oXg=;
	h=To:Subject:From:Message-Id:Date; b=WPW6YTSUqQPB0JagrMkvYuPAlgjmegcV8bTRhuQnm4cSYDWNLHWUhpQwuuAbzecZrhKjjtUTusZrM9TWf4DhNpB+zJT9josyAEOTVSXQEiz5zYfPidCy9SCoUP4uxul378oRwrqZwaycHZTxn7jZSS6BrmglVJvDPXxWRGNbI1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqFm167v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqFm167v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF55DC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788284433;
	bh=lKc9H9crKpXD/5R/4zq/VYns3lUqXgaLwO+IJXh0oXg=;
	h=To:Subject:From:Date:From;
	b=QqFm167va0Afcb7DNJacDmtTVPA3y30zddFxObEYhg6uCZ1WjE6CG6vq5kE9zI3MJ
	 o7DBP4+Mdi8T4jFR01QJsMLMXRsfA19KbrWAThaBFt06ix4ROJlgNIgiPPTtMpRaN8
	 6Yzylblu+5OmYnmSrO5SfncUETd/xB+mfAnEOq+9jQqg89qEk4xS9vsMnJTlzZOa+x
	 GNizUOY0JVvMu6E8Tb5lN2yc5/pRaMa0O2Y8nBrpNnBqN3QLI56Qj768IBuywmhP68
	 94lW/7T9tTxu1gn1DovD8aL8qdca8yUBz38S3Sin+XhsAOZkDHb+P6e2vCpdlcGU9c
	 l2VxuU8E2qhnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA506C624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828443368.3916.5428342213300541843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50e60ba504fc45a3122664b6493ebaba73f735e25af19a44d6d5c1d92966641
Date: Tue, 01 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788284433
