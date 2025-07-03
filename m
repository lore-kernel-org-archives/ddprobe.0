Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA912E3AFD
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751544594; cv=none; b=OZTIQuYVee++15Kw/PAF1C3EnCKDwccdXEorFdzl73q4STNjqxRKUnE0I5/VZxOoDso9BL1l/AhgJf846mxnFh8utm/Um0U696y9AdOY542Ina0qSmLwc0PhpFyVyM8PlRp8/VV6uQ9VzFMcqH3MOL9VWeVDZUW6SnXOqvXgEes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751544594; c=relaxed/simple;
	bh=caqpdKT0+LUxrqPj22itv2OY0sxuQybRJAS8supSYb0=;
	h=To:Subject:From:Message-Id:Date; b=Oy6cQPre1EEDdScaiaMp3Gf+/dWHt+dtiSzcJItcEoOUSUkRlYUQdAzZsY9boWpJ2oAI7djYoiK0VSDcq+VGDOo9A0FAa+SItFTzw5pLWcQ6c8hKlcpHFySbo1EzAFdTCRkvSGFPlFPoVp9IkDdhKvjAbysFyPOHcjSWuhKNovo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNQCxuqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNQCxuqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AAAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751544593;
	bh=caqpdKT0+LUxrqPj22itv2OY0sxuQybRJAS8supSYb0=;
	h=To:Subject:From:Date:From;
	b=cNQCxuqk1TIfMqVLfGvF9BgI7j8FVsFleGD6QqT7EI6sKKIcOaPl6Bl7CE0NZj2M0
	 VCg+s8JxBkMzO9lOGkvgbQSbEaVkXNWqDhWGBTPHz8C1Aq4OMLrOt2q63zex9RR9ra
	 9MkGHk/62k1mkDQaPqQG+xmD8/J+VpgV3Qflij22ZL0z23Wka6mTnbukBtUqRZ55Vs
	 jS46QpAFKPa4gaSbOpLE72/NKNh1fD1JwtiB7VKyJV9TLNm83KJHWEK+4mKP38eQgI
	 dbayxTy3ndga9GvsWFOMokeiNJbcdZnLXOYtFznp97eFdZ9JLS2awGMCE3At0av7A6
	 op7ub5xSMfdqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91034C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154459358.28887.7077350229356082090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89df7bff6fc58ba46d6090909b60a2fcf53c3f3db4537a8684f63c5a8bb8d05
Date: Thu, 03 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751544593
