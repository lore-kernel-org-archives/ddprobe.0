Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F3B37C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717479923; cv=none; b=N24nFoiaVE07kMccocIV/WXOoiyCo51w5RIifWxzn1FZPsndP7Y0vlWnaEkrYwH9KlCGbPYAXV3ddTcdd1yqVC6Qix2v34SeB0uk/SZEsTOMazngnAs10Rv092r4ONGIw0l5u/OxXvp+S8LNuklwFJhC8o8/zQ1RwQKDHcCAtI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717479923; c=relaxed/simple;
	bh=+jhYMkzrcJYZ/ARzJn17XAOG5CcW3WpqQu+r9imgsXg=;
	h=To:Subject:From:Message-Id:Date; b=nHHfJxGCO9SolAG1ddjirzWsPNfDG0wXt1UwxCcq3vC9NP85julvz/vVO/loyoaPiMaX3tSq5KHDSsO+8wtuAGMtFyxN94WEaFEs6j5+jiWspwnl6YpyW+kVKoyhoLlWWgIRnfPLEYbze9YxkUXy3fto+t/MZC21M1Hj43mDV48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL88BeeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL88BeeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29D5C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717479922;
	bh=+jhYMkzrcJYZ/ARzJn17XAOG5CcW3WpqQu+r9imgsXg=;
	h=To:Subject:From:Date:From;
	b=SL88BeeSLW1T/RLluDn31hpkIepEXkq9dZ0gSs9Y4x4Bs6K7qpHszpNqK4j5pjv07
	 A8oh+8ajMaMk269mfVnJpWFSrCKFg53ii/52WDI23XzRd6IHsGQhzmqqqOEeEy1ScL
	 2qQMEcPiOJ6J6mKy91xNFluEpTEhpOB7WaAsKYULLFaO2xHsXq/b80PFCJ+kz/iuZM
	 d4UcQ9AzopvYCspG1WorFLpqOkOLOaypL/k7vhXgu0QkDTgaPX6p8NpKokhCQSoufr
	 rhjj4/8cYCmMGFvgP9eP6MGWEnLwwh9v2nRUG0IjHBHuI0pLs6s3P1+A7FpCFfPY/f
	 O8i9hWc5Mt/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE04FC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747992276.24027.12752117826164642982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ea0cd6acbf5c8fea1e3e6c3653a0445ea6dc19d9e920ff3e1af7864ad154ed
Date: Tue, 04 Jun 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717479922
