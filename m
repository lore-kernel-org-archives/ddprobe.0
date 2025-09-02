Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2941B258CF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756851594; cv=none; b=ASirg/IPAuupil3cbHFmKm6bkUncHxuqILM/qYM8fKG5b0H0ot3AW8r8DPoyGlJfFp61wxr1Ksw5kl+7/QhDpsJ4IXv0EVU20LWLMf8MtyY9703b7RuogwaRhzV7Jr9NxFBKHE6cQcxI8r9aGB84L+4gAsXDN/Lo+tAFzL0Vct4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756851594; c=relaxed/simple;
	bh=fqAzpXli5XLwFG9xQtF4VpfzTDEJURfRgYsMQuGme5I=;
	h=To:Subject:From:Message-Id:Date; b=XZeAgDimNnU6evS0A96o8tx5GoaG9tR+G+mOhICwFkZg1+iB0UPA+YF7q4mg2+//FHXqkm68FUYA/3nrFnuz0ITE/Ddd6DtauOTd6+85pwHd/US6DANsE42L7ljkqECprJUDJWLQU+zLPuWGwyiLpJZhGFAZTXqMv8kQ0mlxSbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB/M/tBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB/M/tBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756851593;
	bh=fqAzpXli5XLwFG9xQtF4VpfzTDEJURfRgYsMQuGme5I=;
	h=To:Subject:From:Date:From;
	b=gB/M/tBFK2ZmRkKp0/RPdTBLo4/oYdVwADy3B8dBY9YKy+381sCFyNinn5amDGRis
	 GV2OLiVgIfVEAerkNa7/of3a98HCVMW9G0AoykO+I+c2MFg/CkBaFJlxEGpCqdZKn5
	 bZhpUMJUKr5iEOEPVqX34YlBq1c7QK9C7Dkic8OgHKQ89dzR/x4HVoYh+Gs10MPsOe
	 axMwN6Ig49I/uAbz3P7Vuef32OuXs21j6Thkk5qWePXmJUmcaNfhaLCLoeGmZRP1qA
	 841hkoQIKFWtbrVywSFIZtEI/y7pgqqoWql6t7wWXnjhi9fFMXugjA7jVU9stW/w9p
	 xI0GSARqBoOwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BFCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685159358.28531.7919553131960057918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4694bdb1b47f50a1e862f586a4da522d89329ea71022faa908d25398b9dc78
Date: Tue, 02 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756851593
