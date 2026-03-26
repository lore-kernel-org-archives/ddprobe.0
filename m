Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FC7315D40
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774566294; cv=none; b=lvh12SAoWNhs4SOWCWwEYzfjUEVIoSZjdvQ3da20kOBJbWtkT0NzhU2+QGfnx7BS9d2WyiLmhfnVgOalR7D70GBDO2CVhJ5OiB/waZuneSYKT8if8VaDwsLphFJjakhEpIqtCr/sWwUvddYPthftGySa6Mdf19xF9InSDBD5rAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774566294; c=relaxed/simple;
	bh=t4NKVwhC3MuGSx6bDA4k4llksULP3qqq4EACyRQ6H+w=;
	h=To:Subject:From:Message-Id:Date; b=jfgXW/KPTbF1EUdtDYaAOxsUd+gVuqrgnvewDdFw2XzKessk9ADLQJebKy/rmzbJSwNcP3lPTGEE1c5jBCuMFv+3hjtDHensPvPXD7/KYipRtlUzM7+SIbiwbby9y/ioP2u2v7JVszPxzrhtfa6fARgKS7EhJyUiaD/U5NHLE0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZtwlQDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZtwlQDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F8CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774566293;
	bh=t4NKVwhC3MuGSx6bDA4k4llksULP3qqq4EACyRQ6H+w=;
	h=To:Subject:From:Date:From;
	b=gZtwlQDle8bfxIgSZo1hY0Zi/mXh5+qE1KG3Kr/OCd8GomqIM9fYyFvKysfBdKb93
	 LjfSTLY5VFDAyzKpqN1XsGK9Nj6wbTj7x+3wKwbulSKI14RbiwHr8I9VcyeLZslNHf
	 QYgPENvTt/pKL0w8r5CQJYi1RE5sloyWyHSZD1Hx6rBexiUfA4x4iVuxPMXhcXYFP+
	 vIBiJ9CAntPYQwcuZHa/VTzz07jmAJOX9RDqKjnQZsorUTSQHism+UbZ/44eYnVasn
	 TtEPAb2zROO0mVh5TiHMxACBB29uC8r1DkKipgHa1VKuVgRQSdODYLiFpofNFKYXqg
	 D9+Vp2tmsEiQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4310AB82A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456629358.32260.7816710475933595144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365882f2dcd07711d6ed6b37536c7783476ea06f7afaf4daf62a803db01055a8
Date: Thu, 26 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774566293
