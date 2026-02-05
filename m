Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0744878F26
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770250434; cv=none; b=jqKiUPsx+zx1rQExH3AUYD9q0yiHRRIKONNViwBa7T2336aHDb7BKEgTVweJ1vGrE22+TGZKcQwCmbmJvHCH7jbm03H60Xdv98HftlS7BvpH8VuTlmyaWC5I+0rBp8NBJ2tMHWrXlJvo/LZ1wQHrg/ZpAxTRCYN0BkLpvcZ8jXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770250434; c=relaxed/simple;
	bh=RZMu1oEBunyTv3EB7IjyDUOaa2SJu41rY2t7zyjq8Ko=;
	h=To:Subject:From:Message-Id:Date; b=u2JGHSloWeP5y43zlmpveGEXSmXAOKwCLkSy0W6cqrsyN03arDt0jHogBBNcRy8rLEN/rIwYBtm+d473ZIDt4yhqFWLyz7Ejcm5e8SuzbB/BizWl6uB6a9GWW957/FVZebc+VUT7NNivZb6MxK4Y2e5/jmDDf3jv5dgXeZEUzXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vcpj1xze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vcpj1xze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770250433;
	bh=RZMu1oEBunyTv3EB7IjyDUOaa2SJu41rY2t7zyjq8Ko=;
	h=To:Subject:From:Date:From;
	b=Vcpj1xzeXm69bWKWDizksb1RFLLoLN0Q/7RxYhImeSbBlsHviY1oEJDzCb7ujI1xM
	 NZc6IoJz9bBGlSsWYFZqeeoeNC0/8jUBVjVhPDlnLpcviPkA07cw0HP9Q8zr0FzL+w
	 66xK0evez9zDaO8KFNrlGtU16PJlsHtOx4i5JNJNfDSFnGBda6nsr9OzIKvDiQG5vV
	 w2KHFXcnKzaghdOJNg4cfJjORlipbOnj4dbNpynd5D/NuxbHYZWCOklAEaJgH6tj6C
	 rpjX7HwhQblkdGE+ff9ZHE72WawfwL6oJi7sXipxIeQjyKhSE744BCt/HmawuKL1XB
	 u5YxStS0wQPog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95080EA794E
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025043359.3618.1762993138040215025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078d78e270be4c637327dc089ebb9654f6f88449855ebdb9c9e71f05de7597fe
Date: Thu, 05 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770250433
