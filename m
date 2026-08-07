Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6691A279DCC
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786069234; cv=none; b=KUTJQFMPV4Q/WJe5v2S7TDu2uVB67W/FK82ZTIw8AdcuolayYr+RFJB40aIpQdY/ZGuH3YmSXGKJDRB1OFxkbeC58Y0fEDJ0dVhBEAzdxrp8cc9S9enphZ+gMsxisKqrSwUpZKVOCurIMJqxZiZib1ds9LQwS/6YhN1Lfvy0hv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786069234; c=relaxed/simple;
	bh=gsgqnj54tbFSRyi32e4lkTDxYZoB57J6+58zi1PQT5o=;
	h=To:Subject:From:Message-Id:Date; b=eJmiuWvEVhJzXWR+GjX31r5enfs99yr7CvY3Bgh1SBepP6lPftOAGmhyOY9PfQzf++lBfIJmFIHZlaEPpHgGxib9POZ+W6hiZ0VfsABImVPdxpvRuNPzQqwO2GBztR7NZ4jPsEk0bsCUQfSAblapO1bQj9SLEeHZfgNoE+fqPu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjSQjSaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjSQjSaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0CEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786069233;
	bh=gsgqnj54tbFSRyi32e4lkTDxYZoB57J6+58zi1PQT5o=;
	h=To:Subject:From:Date:From;
	b=hjSQjSaQ0vU5Y5Aqi8z84Kfs3R0X/wZCQAAZiqUkhNkgWTFfXKpJjxcTbKhx5OxIx
	 E0rW+PdURSg/+0ESOavRA6IRzG+U7mnwEwTh92HaJCyQfXJgxMq8LeBTGe3jSMZoCf
	 +aNmw6WNTvx0qyjs80VJ9QYJrkkCGqkSQ/JfbmqnL7cqpabx7hvMc4GOwy7WFE+7dc
	 yeGTDMQyt8vPe7X58lpDMnlWfzNNV+QeaNyWCeh99Z3rNtIdm6Qgj1d/CEoTKCvZun
	 FFCV0rxdqcCKqLArG02WY5XqluynyAkT7RoAwXm31rD1ywnB2EQljrLMmglYrXGis7
	 mLpRx/LsL+MuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62C8C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606923373.30714.16616721704269317425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6582f5768b7b6bf0a40df578e886caa18ec78f7b064fbd492f65cc70dce2cf21
Date: Fri, 07 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786069233
