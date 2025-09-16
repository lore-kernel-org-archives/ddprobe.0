Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175DE2C21D8
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758001795; cv=none; b=i14fCHx3mAHRDKEfhOarYhkM7EqQfJRNljkVlf1cmSJm2njWUxeHa/4S3POpPKTxMauFuXzm8KfmsBFVqN6+zumw6uRq1ggkG9gGtS+jQuGLuiVlgfJpubuunaW5Ml4/YzH/ulwEnbmJOxsseHzdnGgn6Xj8tm9gxlpVwOkbO+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758001795; c=relaxed/simple;
	bh=DFj+LkQC8OWKxswFN/LVcw+ZF+2jSUR76x9aNsXK1yA=;
	h=To:Subject:From:Message-Id:Date; b=ITJdhawTRFuFR/Yk/rA3vkxKK8Z7+APb85u3Ccfvk48LEioDXjW66LU5hrh44HWWt0l0miTQ7R99d+Q0dEsXdAR8FBcmofGJXZmMO9dxV1XN3LuYJbdNrr19whcqmyp52UQZntZlQWFO+MvgOmQ/t3XAfyxbMtx7YnLV1CLgzHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boudTquF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boudTquF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758001793;
	bh=DFj+LkQC8OWKxswFN/LVcw+ZF+2jSUR76x9aNsXK1yA=;
	h=To:Subject:From:Date:From;
	b=boudTquF9mmPTcF21tPyUtGNiQOiiF1pDn0252yuHkjNji7+UAExbdgsd4TpCN/xt
	 K4ZhShqc/SnAIeFUelQPzdIto8vfEH38hUq5kgRSaqqR9+9dO3xGIgliRcKVpVTX40
	 wfySYJGHuPYeJvPfSpUnJtHl5gIzbeRhw3VPiQqzJyvTrSINo/UHgJU8PDONodlx/h
	 YnfXXIIO29AmliWnAYD54f/m/8A8lJ7jDwkPcaoIXqiQ4KQn5gzJSH2AqDs+6H0nGg
	 TvOcSJrijGrvxSVN3W5UIeFQc2p7r/0EnduumfV4vIzMoaIjcODs9Fa4bJargo1f3/
	 O1+PHvVRFSMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F575CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800179357.24403.6795812827755636202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5055b3c113cb337d8c6f50e82284ea49da6e28f2c7275b8bc1aa74ee49f0787
Date: Tue, 16 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758001793
