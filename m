Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CC1248893
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768197234; cv=none; b=TdpLD9+rPnfS37cHtB5mwqm5Ih6xrid9k7F1ednoc3qV9MM5dIrhSuTYfgjLJU/TgLGgDsLGWS4+2WHM7y9DvNkvahs4RbFN7gvPlzPs/bT08WRqCHDcidmCL3nIfzfZthr+WdGDISIEgkLgqmDmSIofHqdH+hJx9xfzKya4sBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768197234; c=relaxed/simple;
	bh=zWXfnzBs42YLGaG0/8ud4F8GdOFYKwuq6MUlvai4OAA=;
	h=To:Subject:From:Message-Id:Date; b=ElakD6uaaT2ku6vrdMmLbqc4G1qfOzTBtxwEJSIjkruisAVPU9EZmRuPzbju8iCFaNZToHSUtX6sO5Xc/MN7rHINwbjKYL0MjT2vZA7LaKPu704pkJP4qEpXAAWa3NY2udj8EmPGCifPhCAgc2MAwCw4BOhuUan7N6GKOxEvYjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2HAhFsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2HAhFsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50A9C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768197233;
	bh=zWXfnzBs42YLGaG0/8ud4F8GdOFYKwuq6MUlvai4OAA=;
	h=To:Subject:From:Date:From;
	b=K2HAhFsVAI/082UkFCEoMx4vjL9J9W3guLf5NzWgYtQFBAJMVDCDuL0XlLrT2FDSW
	 2TuWQnLSZh/rivntEVS0bENmuPkNJowYQcyxgh/YfgVK5f2oQDBrFp5sQnpBD1Sbrr
	 wvIIMz7HbHhVXYoTZ6HKCkxI2OEfP8szByo3zfpAR9GzMUFYhlz9dIWe76Kx3kcD5O
	 /SAjs6w4yQTlUfZGKuUO4QChAFlO6MA+tRNrZ2pKYBDxKcdxEQAuS/pUE7eCDy4svn
	 twaVSMRaPY2WkJvTh12nOtAfM5KIjjS+0qWXSYF+7vwCD5oJIfTqt0xdakhBj4PyVT
	 mBuEC2v2kOZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E6D2502F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819723358.20767.8114352734593406234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afc6bdcc2f1abcafa29e1e15845b8fd990cd19f33a11199f9ccaf33208e8e36
Date: Mon, 12 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768197233
