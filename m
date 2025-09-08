Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A02019644B
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757368194; cv=none; b=rx+ZDSVPR3LBqeFbuA6yBqklFt+0bmA4ikM/DU3K9d9lpmjpgfFKHEqvW/mS4zQ++S8lMU+LBGO83Y+uwz4Xz+lxlguDP0G8wOtPV2UIxt7iwEwOpaWpvaE3XiyRzH8d2M2D1bLsLqHqgiLpWvE+0xy+ByvWe2d1OSUc1ZsDFUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757368194; c=relaxed/simple;
	bh=wKP68vzBc0Jyt72DrkAGvSpITZl8aFWeJIAyC64hCcE=;
	h=To:Subject:From:Message-Id:Date; b=JLPyf23Z8YrSrkTL265VjDwYxKsUOh+y7d6oien67n9rO0+VtgI4QKQlCJ6F8lvLNGGj/VSYth/02Wmw4FGhjS6z3mFkylZauF01K/hkPenrrTbL/1kvrVsfKwexFAMFSCcwBz2hTSjkY/oBHWbMnL+yYKUXMO/5R8IK0J1CTKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0M7Awa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0M7Awa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E148C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757368193;
	bh=wKP68vzBc0Jyt72DrkAGvSpITZl8aFWeJIAyC64hCcE=;
	h=To:Subject:From:Date:From;
	b=j0M7Awa4xuJsL45fEuVvnYQdv8fbkIMX6kQ4+bVQBRQ553BjawqcvPrwWyOnsz7A8
	 jhdTagxWs40Aph4WjyaMD+Oc9bHP9vn5F0mS/CWtR7qXkJ7MkIosv+XU680Lc9JYI1
	 lxpHm5iOy22EQqhnTqlf8WS/ccf4Kd26KTfE6Wq2QNPX2TOrLf7tHtCnTw4jp4MQHf
	 mEnZxyR/D9etIPO4SjKPB/aobehyXd7POKSRQwlobTnBDnp/3v3a6Nkoilq3k2d0Jp
	 EE2Ql/Ehc4pQv4rUBYM87qCG9H6HEyrOx/vz5Fz90LttSBUQ0ARM/gb3PhyUKAQ++w
	 s333zZ+bVKsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F518CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736819357.27426.15202407189660258808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2fbe2b608375de1f91341978c62337c3646a6d6b34314155a0974975b4e1b5
Date: Mon, 08 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757368193
