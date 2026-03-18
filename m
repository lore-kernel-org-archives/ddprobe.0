Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BD73DA5A2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773843894; cv=none; b=YCM4S1klUyzhikW2IF9FTvFtnwKPHhYeRqApH4THD2ecZqYuhCdrLulG8ihwYfdwyLtNldMy8vmRKUCp0qdYooQJvreGYKvHfeBDccSh1K6KXaLql4u3fjduKspiDNPq1qgpELkJH5CQe/wL9e9WYXSuYVT/Oe6TbPvhzgmzcAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773843894; c=relaxed/simple;
	bh=c+yXIAz6+fY6dTFQ7imGsQJVmyaRFjSXbynt3+bPPU0=;
	h=To:Subject:From:Message-Id:Date; b=ImI+kKCiHdGNOJWpalS1NRSYROuz7tV9r/golwcLCnE6fCtfHcuQ4gyFSaxp8bl0F62RPexG53M34MhDYMz3YZDSKM8Cv24G8WSVbmQRN3QZ5MFoe98XUuwxlFMlcBlpCal3NczDHzu36nyh4fD4oiwudNLx20o75DR708wiMFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5YDSEMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5YDSEMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773843893;
	bh=c+yXIAz6+fY6dTFQ7imGsQJVmyaRFjSXbynt3+bPPU0=;
	h=To:Subject:From:Date:From;
	b=W5YDSEMoXiMV+LtocCyavfWn1RpVlSVjca03rVgt228N5JUyPMy0gwfh2mEBvCEUj
	 YqxOb2+PfJdcUhB+S8twBN+P7sRmHw//Aj2kwkGW3RvtxEoI+qrHDXcwcpXVM17NNj
	 K7bThKZLFhyzuamFw40kPwUNR4WgXpzCAMkHs0tnPOvPUlT9cxpTRRTtJVlZGnPHXF
	 x+o+9A4FolfpguP2eELe480xPWiKXsk4hQ14IlzlXpqUdAEErIQ1AJjjDXyYMvuV7f
	 RzlYqjpgRkjDEGOQlP49pg4fyfgW8mFYAfisMs/pW0bg5bGb6CmmvKPD6QrNNgsl1B
	 /gqXWtVYBD1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92467103E18F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384389357.7692.12206485683332262372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c6cddf04f6457ecdc4690144d090b570b76d3978d9f92857198be0626817f9
Date: Wed, 18 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773843893
