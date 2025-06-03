Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7921ABB8
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748977794; cv=none; b=sBypC/rgXsYqS7gGLp9ByZTkZ8OcWZkiBdjCtFlFT6VZSN4HrhJovcq8FRwGhLvMdExgcTk4NXWXYvUrHvsU5dSiF0z1HCKpSx+dQqzQUQJOIiI1y/GMHZu3zrNRmgqpNjP19mX/yK1ECMxs/loEuTzX4QpN9vKAehWuE6WV32k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748977794; c=relaxed/simple;
	bh=0yOtX8HZzeIjCAhJm0Ua+4om3LZ03OAl4ozLs9lrsfE=;
	h=To:Subject:From:Message-Id:Date; b=EAbAEDCfF9BNkvCEhmAk9Cfd/6HUS1zO10MzpzJ6ef5qxsgqvFZ2QpuZtXRAywE/unIFa8UrJRaenGoy7lqi4VNXqqNr49cg9aAs42FaPcHcHJ/g2bYq9KpGZtynbzheGxpXrokbjjuYKdYk/rCYLZmtKm+9cDLmnIGVgxOQoGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukkFGrqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukkFGrqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBACC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748977793;
	bh=0yOtX8HZzeIjCAhJm0Ua+4om3LZ03OAl4ozLs9lrsfE=;
	h=To:Subject:From:Date:From;
	b=ukkFGrqN9gcQdNUw8E6GD8yOZAk/PPFQDvPr9ax9oXh9gF/riYKNj23sZ4uMyR7Xm
	 4XMrgMXAA+BOSebaae448bw4ExXSZoxokb85c43xTCU/DW5qCr7YwawylTQldyBygS
	 vmIhwS71JUFPH5B13gycHrya/FiC4TCXjbXeBavD9/37acbCoJzv+4m/WoVhCf+BSf
	 YHhJ/HXMKqATjhCMXPvo5SQgXOGNVeggzUa1fXlbFTd2461TQ7YyCD2jI98JqStARW
	 dSVBSaUpnfs/u9GiNPp7n7NklFM49T68QURNr6e31FRNJzW6ww7EvyOcHubsmhRek3
	 YJKbAt4Cx7yUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C3C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897779358.16460.14878860323375458276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e7fd531581b39ac6f19be8743d01bedc038db9f595bbf716dcb5521b7e25e3
Date: Tue, 03 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748977793
