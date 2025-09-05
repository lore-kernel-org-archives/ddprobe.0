Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BD510A1E
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757068794; cv=none; b=eBlhbbUz90adIjWLxlVfr48I4fvj8lrdex5PJwMM8AGsnH7lWfKKHWLX3Jyh3zsJP6+xkdJMxj449HZnPM4vZ4lo1elHCh5D4HGP96a8EgA08hsRYXVHpzO9cV/RX8tvIPrMUUqesJDV+SPJmzHnoPJXAUvMzy7/WAtruNOv038=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757068794; c=relaxed/simple;
	bh=Q38OF2VoTjQbHcy+5pZJ/gtPxpdjIRz5aVfvMZ3YqFA=;
	h=To:Subject:From:Message-Id:Date; b=UiCLt2uThDn42RJwOzqe6ZtSOcD5Cqet9HMR3CFpq36+XM9sE2OOUisoxWqmA9oomtQxig4rYwHMOST/Bu4plxx/LYIb/G9tuIv01Ri5lOwpA5Z4OYLDLXl48AvcrT67Pze7RDTMFRnhDWwHIkeG4UMkZaRZWyFGCYqAwMqJ7v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvrL10hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvrL10hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5960C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757068793;
	bh=Q38OF2VoTjQbHcy+5pZJ/gtPxpdjIRz5aVfvMZ3YqFA=;
	h=To:Subject:From:Date:From;
	b=AvrL10hSrqAhYvoxwhZXHNgwvpSoomSjm2KPupLxjgQ497bXxGlmlfNP1wGcXN+HE
	 kpEwGvcxdJOlmxTu8txqk+eODrPc1AaDHCcfJangsZE8mxJDS0TZh1lBLhGpF7FB8d
	 lDQqMdgWnfCeiBjHSf7ErwaJ1du9UmaU0F870PqwotJWJrno4ZoUFqm2S0TW/Wc34N
	 MtTjxC/xPlwobovbntcTm9q4t3n/FAgbYBwRLtD2DRtzzhqWL4WLeOnjHIuwHvdq/v
	 iECVYN6ig+zwetThLL6yMeC9LNoZR7cFmqKm2hTZHbSK+XqaxrZZuSzdqdmJEcVICu
	 MxL0UbVHvTtiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F1CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706879358.15950.10395096797489248182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6544d58852f10bd629985812c54b94356a43486568d370f1423379f8e119339a
Date: Fri, 05 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757068793
