Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FF224DFF9
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763387514; cv=none; b=T7P+hsAQkjbYU+HvshUpw2kwnrmxcNoZUWEqFSC1LyR/VxB6nRW4FbW900rGKRJ7KEl/1AGLMabaVooj7q+yBPxsWtEMufScTxuq7FLT6r8rSk+ZkO6ievT2r1BMRDgXV8nFlvz2e0zzwzlSHzRyWnLaJodZO2NHq28es0zlXU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763387514; c=relaxed/simple;
	bh=Jn85U2j2WDIKgGcvl5B8fxWPvPHGi5Xa8rV9qJAfqXc=;
	h=To:Subject:From:Message-Id:Date; b=rImtWCBYeBSppB+uOnzaw3uhAhdhWm6v8oelFYY3Ms1o/3EGC2J713rwfZg4tAZ1hPO7/9KhaKVa22Ceu+vdCPxBi6MoxsEui3/Mj3+PY9lTydzN75s/SunJtfiel8LcF1BgXclIgqU6logjMzBIJmoQSigMGZi+TsJe34eEs1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaCtkV0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaCtkV0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E5AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763387513;
	bh=Jn85U2j2WDIKgGcvl5B8fxWPvPHGi5Xa8rV9qJAfqXc=;
	h=To:Subject:From:Date:From;
	b=UaCtkV0E8pN9IOyYHPfjko6bMvvLBctg1hw46DTEcXWx5S4S3sC2e9p6sohkIRX6W
	 v+dLKpnigCq84cmwUKSgD9IWaI5WyobpQnmjwr/LcnkmPITYBitwuhelt9KvQPDj2Z
	 4akOOzI8LFnoBBIM0O6eKvDUuN5ej6NYn5LYJEs2zhMDIlM255Pf1zIRv9tq4HVwU5
	 XilE2nvc/FBLgSLCSrriKOlsdn5I3gllbnRuKTKBp6SIsWLAlV9EkUGBKPfFpUye8P
	 a3V27bTdeVPOCNcV+5BpS7EboVojyKXZd44tZrfTwRpxBZcubqGpW5gpNfO4+kwb6o
	 ygba/s3S0Unrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F18ACEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338751364.5634.3145467875242295064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db25a0ca80c3dd41b1d15a80abad0b5ba57f965c5a35e4903c2ac5a3040fc79
Date: Mon, 17 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763387513
