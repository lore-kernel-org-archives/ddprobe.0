Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3638C34D3B5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781298994; cv=none; b=HxV1BSG6yn9O4w7TleloxWo5UyyzxczyYud85ZnTJiNFMyPOS5vdd58BJrcm6D6arvdqSLZtA/8oV4aW3Hn0nauVPWLlTBakz75/8YtZekC8/L06jlMLz1yTdEbNK9DNtTXb6Q1Oav6pMdF/AJJh8uCaQQmvPHOCWnJqiBf2a2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781298994; c=relaxed/simple;
	bh=jhSzd6Crdz8tHUN85NSfynGmAcMB3EdYLzbbieHJ4D8=;
	h=To:Subject:From:Message-Id:Date; b=LBU4DLwI0+6TBoPMsOUPcMfIFy+Ne5x3InLjPcSjXiNdg2XwVwse12+SJ8wen2y/m/aCzn48f9UIWRhKM4FdHkcMVDwX+XMD+CkKxewOqU8Tfe577MHsichTHuOrlNBJCLpjapmvQ8GpyuVCdhK7OnduC5f4ImqB9Hp8phZaoAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1/3TQnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1/3TQnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F90C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781298993;
	bh=jhSzd6Crdz8tHUN85NSfynGmAcMB3EdYLzbbieHJ4D8=;
	h=To:Subject:From:Date:From;
	b=W1/3TQnqQu+YcAkuC8h7ZjZvcnuskf6rYe3YfHTpia0uRoXlNTtOpbbIMuT5tLCAl
	 hSdc9M9M0YBMbFjo3qdSavzA2I4HME2k0NyjMmh7UZkBaITCIBsXHd7k5T77RvJKt+
	 +dF7+pV5K3Klr6AHwzHfaaJ4QGhXowExHW+QnVI3O4KxuN3a1lM7XtLnqzAsHDENXM
	 Btv7et1/gkGijAPR9csJ1X/pV8xnpirCYgQqDh7kfsZVpSkqnDsd1qWG5s2Yzdp7Ts
	 isLSFm2qpM6LSvx2d4fhFKeQGRWet09WWnflUrk0TKaS3LurvLgc6NGuRnu/PPkGhx
	 WTxP1qP+5TnGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89F7CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129899368.23049.12024764388039282617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecafde9a6f2cc2720edf9da61a01a2d63ce86085fa89c579e87c65e4565c7abf
Date: Fri, 12 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781298993
