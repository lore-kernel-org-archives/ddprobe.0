Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F5A5695
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712364497; cv=none; b=esexZLS3dBAssgbVeJchonOEgC9Hz/1G1rZCp9ribQyG4NqNrrc8j37gXqJRq2Tvo8BcaMTUCiOlaYVHehTaEIEoOXyq6va1aX8OKAw/mCAdao4T5h4AI6XzZTPppm/dBGe2PK/c70qOIU0VqXe2WHTLr5xMUi77G3o9IwD1fVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712364497; c=relaxed/simple;
	bh=Vrlxxpt562AfxeAxsDyvI3xqdyugD0A3CCz9VVXdZuk=;
	h=To:Subject:From:Message-Id:Date; b=YwASkfNQ4WYhmoYFZv89HnzAonD/E8XLCVWDZS5ejQd1usfK9GURyIiaGuEHAUM92X1rS36QZX7QYRO7Ug5l5aTY0Ez4/LLYgUnsK0ihbUSdGChdIzBKZyXKdn4SytBFdnAOzsEF1NzS9qq/wiJMvG+bUlmoeYG2h855NG+rOco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8duDLNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8duDLNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B79C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712364496;
	bh=Vrlxxpt562AfxeAxsDyvI3xqdyugD0A3CCz9VVXdZuk=;
	h=To:Subject:From:Date:From;
	b=Q8duDLNkJc0ISnCajP9MKAmfirM6tfIvdaTvr4tcZxKiDDkV3hB0t0Bfi5qUqgcdz
	 uAJMFJdLVbRjmX+gIuifouW8ZshMQwD68XZNwuLRrkOjuljT2MlYUrUPp4hrcrdsM9
	 OC2WlynvPcnr6TG27euxMs/Z8w/EzqdtMuStpGXihXL1ujsrvs1OKuzEWHbBK5Sc6K
	 ddm6yt86gVOFqnqc6iAIbaE2SLrTi9ueGGWQfdJ0HBKyZbYJq3kahzlDz7lOCRhwq9
	 JRnWAbVVWLVB5yUnfa6D6SZgh9Fcq+wmRTqpx351/cWsysxExsmtmHS6VLo+WdTUI+
	 5BIi6R82kF0pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635B9C3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236449639.18763.11362780316381233507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20ccd40d7c84b50de86037c0c1ed46f79c073e6d06a0de45ad704734c38ed92
Date: Sat, 06 Apr 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712364496
