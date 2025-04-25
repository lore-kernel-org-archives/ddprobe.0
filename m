Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE0614A0B7
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745596194; cv=none; b=ByJbDTPLdjpVrzg98s/KijB+6PtaLRCK3H0KBRdMTrMUlnzvuaRsqFq7qvBJAMSUBbK+VflmIeePwYfBtfYuisFpy7HxbmPyrRJSGnvHyyAjmTT5L3dsTUTozrMyCYHVRO44fB9n4vIHvGcFFBEXoliEiMIxRG8eivuJoZXskbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745596194; c=relaxed/simple;
	bh=/syKJ2GilgVg/eJJunn6nzF30ByO2s/gSyo+H9YTHb4=;
	h=To:Subject:From:Message-Id:Date; b=BDc9bHGeamR+1MhNCaHpBinyIzXFi0+qIoesgh9Db2kHXxLBxpEQ8zbpHu2AuHW+ARY4Bbm3UDCrQWavGYb1RGKIJATtk6+WCr6MWlS+LjXGLc6KXTrAbkPdLYSGv850AnxoIerIyRAlTRdW8hCmg4p/eq+r+QYaQPieqC75FiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh2BHl1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh2BHl1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F30FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745596193;
	bh=/syKJ2GilgVg/eJJunn6nzF30ByO2s/gSyo+H9YTHb4=;
	h=To:Subject:From:Date:From;
	b=Eh2BHl1ZMHbRDT90QkwRTg6Kw5Q3OomT0OSdPYameozmxL2Ehq+nmkxWa3OkjY0IM
	 +0bMyvugoXueSF0D3zM2B2YtJO8SEmAQLZAqmiJPUq36krUFALIQoCZpcK2uj2+NlD
	 9F1xZoCucnsloqOgtSmOzoxVTloNuSV7smWs6ZA5EjaolPM4UVDi4YuKqct1v1TDlr
	 jE6UuTJaRh/pV4DCOKWqmkgg8IiABGWq4dwMT7REliuP83WnhRHrNEG53oFiJ/bqA8
	 jtQSCnjcMjh24/gp5UUSenopkFRH4fCRVr+AroY/RU/h4HvsJ+1DmmslFfeFA+mAsQ
	 Kv4BPlC8znvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0BC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559619357.3513.15132510240653078417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6252149b436180059238dbcf515f1e7d877a4318fdeefa264f7c967e4bf02a6
Date: Fri, 25 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745596193
