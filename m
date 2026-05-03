Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4212D1F1
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777801054; cv=none; b=tQWz25BzMRy6pi0l7lYL0VI+N/mLeYWWpZ3uVfUS+JpDU1K88Fx3AewaatWILMdL7NzDSZGw6OkQg4BkWbw9BaucaMzOEAS76JpFp0aAN6JwE2eOE1RJ9BzYbiGkizCEtA1BhLPLU66MOEtlgcKDcVSFT/dmp8lC2JKMQCycI1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777801054; c=relaxed/simple;
	bh=IouQyttvGUobP2WqGDvGoj80rK7DM0WTqVIHANoHJK8=;
	h=To:Subject:From:Message-Id:Date; b=lSlJNICVCy0dZPuLh1RhzWFRoSjxlSsouoFebZYv3Mkwpll3xBzGTuyHy13gqSgMM5F20VjTTHGwZJUSuoIpSIi0kghDe4nDlaqbutFGy/1BGW92127NQHRNTFA8LAfvAFXQNXi9tWrvDKBPi9o7l9jGshgc5lPSNR+mGx0qJKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/27zb5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/27zb5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A18C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777801053;
	bh=IouQyttvGUobP2WqGDvGoj80rK7DM0WTqVIHANoHJK8=;
	h=To:Subject:From:Date:From;
	b=p/27zb5oWowoI/kBIOwVZp2Qn7cgm7GJ6V3VEDFoQT3HA5L6CvkHD2JXAkaeLIhnJ
	 MgUKGdorK60gWT9z3EG1pjQFAxMECYvV2uzzqx4m3Mc9ODnL+3AoxaelT9oZkH43bb
	 xgf0/yVMQ400/sP1scWKK4RFGtA6I05GVYuu8xhkJvPr6zziCQPUNQo4GezcBVdWg0
	 lVHrSQzhkNN0d3XOlPtMZYaIXRoMS0f8OUp7llk7qCRt4//Z25SN19F97IViGzXLKY
	 3h7aWAn/don8mok54Nv4BnZu0u0RtIMF8KqJDuztD9l7hWEBqDCyo+wIEMDmkPK6PP
	 jxHrpqwFysqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0158FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780105368.24495.2822858765615146322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cee16a35082ac2cfd45b1e06870dea7770c482a254cedc342bfc7e4a8437907
Date: Sun, 03 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777801053
