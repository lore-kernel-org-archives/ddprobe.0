Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163AE2C21EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761317994; cv=none; b=P9MJOfzEhJV7VWNVPIy5tEUG/xMMp9lEenZVhSFb9z064lshPZmVsueRBHzd54GoiMJiER8ShZmYeNAJHuDb4W83eOQuk5J+4a0ecGKn1dvTL/3Yx8I3tM+/wtgb2EWKgXDw7DuxfH44v4uG1mnczET0lOPBisNIeFsuwbDw1rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761317994; c=relaxed/simple;
	bh=nPC6QjzfqhW++Ny514fdOu2NtC9KR1qE56j89YqMvRA=;
	h=To:Subject:From:Message-Id:Date; b=a6sfEpqj4v6tEYCDCIsNtOXX02DyUErHqbOoRK1DXd1ZEkJOQGwyAf7ByxQ6O9accXrtLduaO7mu7+U5Futj+t9JWShoz/rZl+J3WsNBjrvMtHQ/oRp/NYQ9IFMijfeXCeE10S2qKqFwXFi8X7R1hNB2qornZo5RSO6EpK3wpN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbwplTcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbwplTcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761317993;
	bh=nPC6QjzfqhW++Ny514fdOu2NtC9KR1qE56j89YqMvRA=;
	h=To:Subject:From:Date:From;
	b=HbwplTcdE1wxZynZxNabLkAp2tzQ8XJvCLPBMSOG59lLw/AYaUYMRavJ4iZpItjGa
	 wp3+CUeHBqF64+ACJg/UhNGFuZmriVosWu7H3DdjO+hErNmMf2UHyinx7l2OTYXbjH
	 ORrKLDwN70axibm/p6I5Q4jMHlIjIN08YosbnY4NUrpWNpcwypDtTmMPreDEiRGv6d
	 iWNYOSDHgm9KS9g5vjSTlRa2f46qINJ/bWEXIUYQrVlglLazisUMAi2bEfhkymhKId
	 vYGpQS1cXP/UbsCSRQpD1QzNkc2+OCNXIus+zjKhVm0v97BFC1h050RkBTW5yM2aQf
	 VMEXj2n7aOpMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E38CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131799359.20894.11265042222635416233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605fc74e1ef85e56f90eec2759377bc48fd469f31a77a9847102ec766332724d
Date: Fri, 24 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761317993
