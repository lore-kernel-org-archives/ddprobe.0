Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E311B3F30
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722528354; cv=none; b=SBSh3MGtU5VDjVCEJvGEns2S7jgg1eM2hx/J2sG2Q8OGOwSulN2KCdKWiTb574tHFUXTdqn+/vrIeu9/fCjvW1wCnGuYhj6LpJ/8KVwmVaur8sBWHqgZQ7YMwqdMKuX2R/7IU0psKzXaaYgb/Bzc09jy9+ar8gJErvJxFzAOvqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722528354; c=relaxed/simple;
	bh=OvuBNReklFzLW1+B8dUCQ+JP+YnTpQVq9lRLuYF4uvA=;
	h=To:Subject:From:Message-Id:Date; b=d66OwBGfEK53J5pmvSJT88Vl2Sr8910Z+Bi97bDVP5FPkIhlcuXNL0dR6T071CqSlL2CJhMK5qWDlqaCLXHE/UgtIveAzO+sNIheqOsWufPZs81jCKdnwZNj/OrcTuwUgvPS3QGaTjpz/4zi6+4Pn6t9H+HORPtc+MRXNDQwRu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nP/24bu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nP/24bu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0960C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722528353;
	bh=OvuBNReklFzLW1+B8dUCQ+JP+YnTpQVq9lRLuYF4uvA=;
	h=To:Subject:From:Date:From;
	b=nP/24bu23Gi514WnC/P5SYsg282gzaPszqDv9iWSjWQwFrGudZx+66slJxNnZPj1h
	 hk5k/1oTVLi84qniGsCJXN6X2ZUgtWiIAYLUNhA4CcT2mgl8QMiV37MLEHZCSxl3WM
	 poZ20Ogwg/FG61SaVGFTPdKu6czClMbZ4YiJM3HjIiWw+qH+e8uIq4y2fdM9RUSANV
	 DzEpFOD9Lxs4fmsm8FqYHX6WYgYD05F9Ck3O99rAG8rxxx0YlXHn1pVyciuczkswrP
	 9KTGOMYehWqxOO+Lag8mG9zZBou5tvKM1LZkIUDdIYB7vybSZSOCpC4pBv2dwSCHvP
	 Us7kSA2IQCGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AA6C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252835361.4045.9165301528613202980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8739f25eeac7f5c7e86d858d7858b291ef24bfec45aef17634199c4db1e72451
Date: Thu, 01 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722528353
