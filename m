Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B213438BF
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780459474; cv=none; b=OAA4FbXSMuoFSlq1C8xx8rhroGVF/pv5h5bcdu4eb2QAiwdIyVrUSFPEQaC1w6dJ1zSBvZHDqfmvUtLA/ptHBwhXmM5kpqRXeyLAPrlGaUwhADGG2V1r1Eia4XTcHEkzkCkUfVdYiGGVOL7TyUxwS4XIz+Sai/+fDp11j+WkEHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780459474; c=relaxed/simple;
	bh=lamAlsGenqOz8weSeioDxjIQlgZkjoY6VOIfcaoP3N8=;
	h=To:Subject:From:Message-Id:Date; b=tJWielNPf5ysEKCixp18v0D25+LhKGpQpOfjUJr4ITvhfkOmdm3QFoXGOT0k3IHk8LhsHEXAyV7E7a/cjmKBq4ODM+LkpS7AXmGxb98qjpKdbnaMYI7GrDjKzrvCuyV+FYr3txANY5GU5s7yQ8lE/22mFADNqWK3EaGOcDmEBDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2+rPamb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2+rPamb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B3AC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780459473;
	bh=lamAlsGenqOz8weSeioDxjIQlgZkjoY6VOIfcaoP3N8=;
	h=To:Subject:From:Date:From;
	b=t2+rPambJdRUKXuNX6NRuCMFWQwXgzVgi4ZxWhbirOlWaStzTmgvfjLRNOBWVVndt
	 H5icbpA3UXeBaxZvJ1WBNgG4UoOZ2jypba4LLcn5HDwg7MIdVRwkkjDZ8oG/k39sJp
	 o9N3ntO3iXgMQRz0alxdN4nZR0xFdhAUDfNN0MTHc/Lp1FmwxpA62QGpVgREfn99tf
	 4nb9TC9U2UywfNm/b+h5cD7yzYGoxS776zy5J5KlJe4KRDwIeTisX6e7TtybyPp9Nn
	 faVdd3WUmRfsmaRuuNcNuCspjpFehJglwtLnH7Oufq9EKcI7xzbTI3wGFJzZlgyll4
	 Zg4CDFgYyjcSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B68CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045947368.23177.13564220291775649989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a0cc149bc43ad43371848f7198613995bfe7c0e0d6de9332e563d3d1d12a03
Date: Wed, 03 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780459473
