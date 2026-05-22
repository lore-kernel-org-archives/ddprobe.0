Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F110027281E
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779420154; cv=none; b=Mhm9ITFhDkRm5dhKpphxHr4AmIJ8mEugmnLxY8pIqnuEBA1HpzkbU5Qm9cmnTkFv5qkF7enKY9oHAIlvlu61aysPTqRAQGx/p4wkDdvaEmuvU8EhnQMfb3sPiKz0QwgbPoK3m0VPtV/iGbm/SfK443cdPDA4buKePGup8OrKK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779420154; c=relaxed/simple;
	bh=UpThV/qssyUsaNX6k7Yqloo8iSThGSQro+oeuT5n2/w=;
	h=To:Subject:From:Message-Id:Date; b=qb4k61YrHvfcEGWDqvqajEMlsi170OHYY2gh7Z1A/tm3hUH2o7jivSjwfUwZIIKbcUogzyTwqRJVwNswabqX+lYDZ6DRHHG8+9IJG7XxlxcPadmqLUxeNV73UqWhZvYzJWb0K1dkBY9QyHcb+0pC/DxK2gSjRZuaswpOzwk/mlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEblsbfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEblsbfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ECAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779420153;
	bh=UpThV/qssyUsaNX6k7Yqloo8iSThGSQro+oeuT5n2/w=;
	h=To:Subject:From:Date:From;
	b=EEblsbfdb+FMLdqxryfoIQwLhl5OrUFy5PdTG6B136SD+IoSNTob8VrIjeoZGHSel
	 krtoXhzfdgIFAEYrc6sXR7KyTHFwI+HaGJxHsaRPcfBC+jztPTQBYcf4hEeKFgYzeb
	 pW/HoVukqHpBQVHftnoRpwn7NIAGe3gdyYHYnKCv+LwKh5WJWcELQKbY9l9yr9yPAP
	 TYHTLH8Tqp72bWhErBCqMdYtY8oiXIUKSrlEVPDHFoKwKWV5ot3p2MDprBzhRseZhf
	 4M/Jh3/F6HjKAiWnOMAifHRdD72yaLKr2VNYGJQlR/yaM27EUyCzj7g9bPYEzwgnhX
	 YE5UtYaLvEepQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A857DCD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942015368.4666.18067942753824061175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1429da2704f9a04fbfbe1f05b6acd3db2ed1819eae8c6f9ec23f56beee5b2d76
Date: Fri, 22 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779420153
