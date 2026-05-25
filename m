Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC6C5B21A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779729754; cv=none; b=rqLxANl4fqZOWl3jPPBYi8tRax29UPYOEKMHQKFIaaWCZLVphiBj+0DzKrnkpdrjrampUHD+5o6dNnfDmFRtLG6rXEGxQUDdfyC/xpjDnh1UGPDapqIfMdL1FAfY2vRF0dczct4DqrALLzCsnG2okmBZFjnbxhhyIgZ1zNuHJEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779729754; c=relaxed/simple;
	bh=ovQjorDMYUPsKI3AkjEYyp7y8cpXkMSFYjYOmVLhIZM=;
	h=To:Subject:From:Message-Id:Date; b=mSBSSnWQOlnUdP7YikgYGnUiJof56vIJxLpg4fzQwcLhVZxLJ0d3lgDWGO8Lv3GwhnFw4V1nrzYWqXP2t1OZY0/+f+x/+z5LOWgdXwgtV2xSZOxlXF2cdI/4v0n1v8a09edLXSXRlmQBcQCmv9ZY8neZrkfi2Ma2PW5mDmXWyqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8mCf8Vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8mCf8Vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC64FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779729753;
	bh=ovQjorDMYUPsKI3AkjEYyp7y8cpXkMSFYjYOmVLhIZM=;
	h=To:Subject:From:Date:From;
	b=A8mCf8Vzmzut4rTb/IMtOX4SI/c+dT/eO4nCrXQeBnR5rCvefL4VcP1oZM1W5ONAT
	 fE7sOrz02wxrlyT7mi9AiGW2YWWvXlqWMyj0Zpi8fH8+8hIr/40C4BWkHr5b/YG+FI
	 oaLcZc9bxGGRWKk0tm1lCT+q0zq5iTewEmEu9ZAzvuZHlWrMY90kLEpPyK6aNh3pR/
	 CKdTlrpEQFg6NuhdBKu7YUDYyl4herwVyK5ZQaFKmLBnhyivaurMKh9jezJMC/PovL
	 tDK4uF5ECJHROXpWvoIFNBb8tfP9PWTLKtso7SJ1JOwPlc+ZHlETqKeKwSsqzpbLW3
	 if6l2soEXR+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA1BCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972975370.12710.16487133143840644277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5360e28b18c65f2072dbf57355d2a7a3a36b8cf6056293a2bb025b2bd3f1d435
Date: Mon, 25 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779729753
