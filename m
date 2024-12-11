Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463E51FE47C
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733937955; cv=none; b=mxkB1XtgZXql/mTwwJJVCkM2RpepBEgdKDaeiPROdnxTDN8eUvDV9du9vGs83yBa8l+6wHR6BkNEHk1heXrX8XLITdpwurj2hZRqb7lB6HumlYoU89ThDuhPnTadQvRDx3ce4ybE5+2EABQCqC3AZo9BS4WJlYFRvMtxKqczaLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733937955; c=relaxed/simple;
	bh=lvufK8R0U6lAXdyL3LqlyAGyU7whBP9nANocKMU6JgQ=;
	h=To:Subject:From:Message-Id:Date; b=CGWG5F9FkN2+EfLCasZrNm8IVKIoxB/qTY10WVZnwHnbnrHpzFn48HxboHL9xr47uL/nmDdhSpchrfqQXs+KCOtxafJbCKYjzWUgckxxmlBESLDufAc7nj1cr2QNvVSsgpMIrDlu3C6avibKUwDtq6pVbpjoNXO0PamaazE9aNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1G1F/Nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1G1F/Nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1125C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733937953;
	bh=lvufK8R0U6lAXdyL3LqlyAGyU7whBP9nANocKMU6JgQ=;
	h=To:Subject:From:Date:From;
	b=d1G1F/NqUkWSuEDjKJC2zIF6C+hpaJ17wTjPrsQvu7d/sBa34zpLA1xd6qw+X4HEw
	 FRu2Qx0Upsc59tbTJvT8U60INH/oP4c9c26ez9bovtRjp/5R0w/mjOgx1imb3K3a10
	 KzZscSEtr2R7tBhw/xVQpzSxXDfqfYn7W5UrBbfO6zTTL+djAYp7rZkhG6bgCb11aL
	 0CokdezopD/OwVW7+ntYt7puAdPMVy5e/TO7WTRDVQEtQe+O4fqWUbMlCsKWQPNNpw
	 H1xTp9IUIH9VPWU9eV/BPW43XfbhH2M2IWMsCTEs4jeADDgEuNvMXEZKOqflRjtu4V
	 eOh1PBwgrB3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2B9E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393795362.21737.15815209625145791914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252308ed5c31d8321e5da366abaf9c4d4d3628d1d5960b9999e7c19b2b516003
Date: Wed, 11 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733937953
