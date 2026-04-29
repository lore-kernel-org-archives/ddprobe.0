Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251BD40149B
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777484254; cv=none; b=H32tTcX3/UVI9NjEJLTSevi+v7AKtv9+Ssn4Z7GcStA1DgEx6PDB2VG121/oKI/R6Ew9PaYA9sINjBuCFGRHsGSp1fhCz1hfql2FpXeQq1B8k/yl+Slk2qfkhDFQzWH87K605LtI74DyccVaOFfrdL0m/dV5uAIevr4ypEDVVJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777484254; c=relaxed/simple;
	bh=7jxkVR9EtY1KNS0EqhiW+hrPchvncW9jbgsk8Kz2TaM=;
	h=To:Subject:From:Message-Id:Date; b=ohuWDTdVIkKT7s4KSw0kUh/59meNuozAFchjjXFljFUouZF+RRobf0t1c2i4NoL03cPSesPmtOmfXkod7EvO4LnMKKdASgrqTR0Fy+z06zN6RfKWlzSBcQL+xsZj8HpO4TE5KQ5YAsjpGYh86RDnQhoQx069niEk3FSzK7OpiCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwOX6jT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwOX6jT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD2FC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777484253;
	bh=7jxkVR9EtY1KNS0EqhiW+hrPchvncW9jbgsk8Kz2TaM=;
	h=To:Subject:From:Date:From;
	b=mwOX6jT1pwePPYgBPgcOqwl5pSVbZr2T7y1kRSf8eP6lFscVUXjsu+AtnnSiiSUA6
	 R1B+CapUSG5QbAjrKCej+jP5sP5utdPu4TRYyD47Ly9w1H3Itn+aRzJY/JlKFWFfzs
	 loxtU+AqoGVVdKvsPtgGXTa8J3Nlfsx39DVGqeCydQGXxNXvR8hRM9q9h/q3BQUnES
	 f3OyXfOTJDJ+cfZ6EWBt2Xl2UyMlv5dwyYuFQrnb4XVsRPvOI5qY4TrS5OikesXXIn
	 keKzK8SIDa4YzzReRhyp7NzQiI5SYQuhy5wdZDciKQ9Ny+OJEEJfGu0DWqqPbDeM40
	 xrS32oGnTzwew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45DFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748425368.4270.12533745511766293246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb984686b4d8608e4943a3112b26d1f8c067e922b739c9c4ecc0ebfd729d1aa
Date: Wed, 29 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777484253
