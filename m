Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3868213C82E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745764195; cv=none; b=HxL92Bz6CdaGD1ylCg6zl1OrWWv4+RYdgTOIFNXOyoNdKxyqN2MtUtaPp4PRvFen6IcNuvT8zJSAkJ98VX015GWhfnWI4oQVC8FVDdgO3tYDI3gUMQ12HkCJolrV5aZTXys8eqte+LYbWUg9HUqzWGtAzU4BSqu5LCE3skJZaIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745764195; c=relaxed/simple;
	bh=oJhyjizco6DuMmhQjxvTslyOLC3n/+/xWAzSWg6n4cc=;
	h=To:Subject:From:Message-Id:Date; b=LwyuJwTMvYdV9Mt2qomyKmIN/3IgZA8mtpmslm/rhsHSCkkWmMn3tJ3NczwoSt6D5Mb5aJqpc+WwfIV6KkumPd20Tvrsim1QqRNdv/2eiyQOXvuPkyp1h7Yhpq9EPlzNQ4ZBfwiLViz8Q8S5T9pBBqDvmb5UhHyyDAlFBS4fEiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkqcWKc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkqcWKc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E18C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745764193;
	bh=oJhyjizco6DuMmhQjxvTslyOLC3n/+/xWAzSWg6n4cc=;
	h=To:Subject:From:Date:From;
	b=RkqcWKc3nib9SFIBEWCaDeHyLSPEMCRxvbSE2Z9cgnfv6OM0TLlpy17rc9l2RSAIP
	 6Ux8OofrP/gqBAbS5x7G5qcIka+0pvmUvGSWWyNI4HebsUjf7mSJUrFj6gENissEHZ
	 LxEVVHmiTkLCbGUym1NRhvpPDs7lKK3WKJo1DXYsY/TGi6oLA7moavqKrAXpSxTGMu
	 EHx5rlRtzwsM2VmeE66Gx7pt7EP7JCKB+ghBYmjQ2HHrVDRQi0xxkgW+bWddve5ANO
	 wRiigQJgFewnr6tu/y1xHsbs4YbDRYUKAf32mt5ZpGqHpNMHxvrI4CptecJn7C55Ay
	 U6SE2FzbUH0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F273C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576419357.22856.7681756882818367939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f57ec74a803610cb2bebc54678373f45e4fe02db410533986583e37596aa67
Date: Sun, 27 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745764193
