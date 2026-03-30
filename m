Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF223C2772
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774869294; cv=none; b=aQTpBS4MuZpUHD4nRyQRCK1wt2/5HP6ck2kamMbXR1JQj039xBqEAeJpCftWB9y6AF1d8UngXddbSdYGVeHpprlFBipiITXmivWD4Qm4b6gyfI8yljN0H8B5cKY8HOwfdAfm303Tl341YBuSs0BwWhf+3mKTv82xZcMkymiyTAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774869294; c=relaxed/simple;
	bh=R2U1KchpkQvSWJcomUTCJD6InDDN8rL79IkTw5dTles=;
	h=To:Subject:From:Message-Id:Date; b=Z54NcFYUupfzRDIRzVWNAzzx/A/z2AcNa5VvJ01RUEFY/dKyne0EW4sQAJpwPZhUyUWSqqRgdxfLMpPvzOmzgHh6OMI9bPWZxYoKl8/Hd+S5nvLmpnZxw4esfZa2YFXPqfvzQ1OtFE4TZ4XA0NnHawdsRkTKOrbPRddJU0RxIaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMcZ7CvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMcZ7CvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC6EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774869293;
	bh=R2U1KchpkQvSWJcomUTCJD6InDDN8rL79IkTw5dTles=;
	h=To:Subject:From:Date:From;
	b=vMcZ7CvGP4gwy9Gg7ahctQb3n5IBFVQ4pb1tGDKGYf5i/uaTGrZtcDSux3eXSe7br
	 QtVAegkN2sOIcQsEXcgC1nFvAIuOcLcCJ8tB+/0c+MaGS8XrpuIbmCzsUb97Ywa75r
	 LdPO4TBnFift9V8kMqMgsSLgbfUEan6HH6s/GT9pLUs05jNudc+DSrBaG92ApluSrj
	 I4+A9oUrzLS8lvcaQzSqBqMCGsUkcLnVNivfF9voPGZ5FOHnQs+SaB9bVAnKssIoUx
	 I5vUuu4jgwPXap4e+TylcCvk+xpEHu6uzi5dpTFn3PohrfM5lfpZGUHasoSP82e+mj
	 yTYnrpvSbob3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985B210D14A1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486929361.11085.6275019897809468676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0ed91d06155ad4590faca10195101cc72184570a3a31a6c8d02c20d78c3baa
Date: Mon, 30 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774869293
