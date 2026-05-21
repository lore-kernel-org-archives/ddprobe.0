Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4321422D7B9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779325234; cv=none; b=gVCOzCH66MRJvXVSfnsy9UWgmz9eMr54GJGO2+3p00U3rA3BFwvr2taiE9ZQzB/D7VrIUvkTt8RrFOGoATkCAvesh3YvpNDVpTzREzilWOcy9/mzeqqHS0TwLbqNCad8iYdNFBpwfJe4NqjhsJJRhCySw0cg4PyjBcMU7iMWdtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779325234; c=relaxed/simple;
	bh=XoB6wBPf0kMO9mTAmT94h6cPlSWOr5g2dLSBQ4gfCAM=;
	h=To:Subject:From:Message-Id:Date; b=HJc/sxBLAKsxreOCDtpcbiCG+bU5bjoxCT4xjUANCYg0QCn6aA2vXx9eiaSm7EQb/UWu3XfBPfHvYGuxtzQe2anE9S/fCsQhgRfpo+mFB42dbxBiiJ9/6bhU8o5IFSVny/NIr274z/Y5JaSZ5lhrcmXcFK/bDCf0jFRVY8AvGdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFx9aEJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFx9aEJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB16BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779325233;
	bh=XoB6wBPf0kMO9mTAmT94h6cPlSWOr5g2dLSBQ4gfCAM=;
	h=To:Subject:From:Date:From;
	b=NFx9aEJdDvpkLE2whZ9yhUi2iY1Lmd6ZVyhoFBtBHsYN4xgI9Zhjw9YGWBFw9tnD8
	 l4L3fYgzfFtuqHwaxXl1Y0nadMkDALJmje5pmMjg7Oz+eBE+bhCVR+G2DbW01n26P7
	 9F1LL9egAkpSDuKBZEToBtOICVlHBdi3y3D9LLb9YMpBQh3QtGhRMG6rMxFkcc41Rt
	 41xRYwhFcMxLwv3FVOtAfk/J7jP9sMPzQBHYISnHXJTPTyJnu/GlAiEQNLQwFc3yKx
	 BytkSXYz6XedoP9LD1DkC1E/HxvvzsIWBxXSj9dims1kNIY+KZTcGNLoIKUyJWOWrO
	 diPYnVJMkprHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BC9CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932523371.8612.16703214306103006519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54326ec8556edc9835cc6d9275a0deb5c79c133482413a54ec8310d844be2727
Date: Thu, 21 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779325233
