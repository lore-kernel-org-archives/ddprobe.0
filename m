Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF96204C3C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736420154; cv=none; b=szUINXwCB7zhtpcjM+Sd0ux4PX5Pcd6wVTIfKaZZNpTw66fcE2H6z+bmHzwIaEyqHWECnrPh8vD2kStsVyBM3rFEJvmu8YwCLybvk0irqSGApo7C1j9T5x3uOQeLszkN1Mh/z+aXLTSK6EwjMu+ShitF7NRMlAwAtg8fMRvLytM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736420154; c=relaxed/simple;
	bh=cKagenEHGc9LB9bOjq8ERBUvL0R98pyju060IeaVyhQ=;
	h=To:Subject:From:Message-Id:Date; b=ptU9XKFkI5uNaIH/jt+Zr2/fW8vmtosWuc2K9a3cuJfjSIW2JPZdgQPnFVA3d5zMYNzZ9s2rMC2obtqhjGUXKRj/RhJx2m63Y2hMoUkoH4bjd6c4WDKX+cvAssKoGMFKB03SZ3G9KhtJv38I9x69myzJUCJeIQO2f4PLEff7BZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbEC3Qfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbEC3Qfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BD8C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736420153;
	bh=cKagenEHGc9LB9bOjq8ERBUvL0R98pyju060IeaVyhQ=;
	h=To:Subject:From:Date:From;
	b=BbEC3Qfsxi1ofHfwbOfL0tOQSoIjytN48TNeg85//0HGPO8SsO0+ksbVP7UMRHLY1
	 Wkmu3oAelkINFWkJFQgNDL/w0wwWR08+BQVYJuCbCaqKeUqJrLJuZne+7Qof5MlnUB
	 2ZmG3SoNPBQjJf3WovbBSQtSZ+DFrRLBQTLlP32zD6Icvpvhm5pQ1wVDaGsinmz3TR
	 ATwCZ3bL8a9WZpP/4yKVrwNBp7TOgAWOyQG8xytNVV5RX8HgjViGbBdnai6SlPaKgd
	 AUytKo8vnfIOBo6NpwTEOx13wvhTHLMZIccHC/x9zri1TCsRhjH9azTNp4tFakYLKF
	 P8ngp7gDlMbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03D2E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642015364.14610.14525790080264888707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc722193f82ddff0fd67bb34ba72714a8663e68567b8a592d67c803e958adbc0
Date: Thu, 09 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736420153
