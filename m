Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420E722FDE6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764903174; cv=none; b=q5uynX1iRAvygljtlIIxhDEncO1q1JMTYhF57/Aeof2WgewsDPUNwT2x0cNIMf3BPejdReYdYQNYgN1CcUIi4LGyGgLX/a+NyAruUcWfBNnHGBaHKcBw/gMsc1Bj1xGjAWN2O7GTy3R1OwQHxkgHv8khFs8BFl52B7QkBJkzAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764903174; c=relaxed/simple;
	bh=PbLJHiGJ4nvBC0hDcdTvdSYGCtlvUR74O+bwUN5rdPc=;
	h=To:Subject:From:Message-Id:Date; b=ap4IjZXiqELg5c5EYwvuF0U1e7nrYUXO8CEO1898VmmQFRX/XHWOXkjhZ0RfqJ6KKCegiQX20EC8XmpuXKfwrC98LaqSa4iOJkSSOWhisSuDSgj9+oNvzbOomZLnnDA+uaPQSjRagJpsg4FS7pQBT8BEzDghCrgurqXl/3FFauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZQu13O5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZQu13O5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B47C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764903173;
	bh=PbLJHiGJ4nvBC0hDcdTvdSYGCtlvUR74O+bwUN5rdPc=;
	h=To:Subject:From:Date:From;
	b=LZQu13O5zA+wt9KHVAghKV62v9MYyjXvKZlygiIjrXbzCr+DiCvKWxErqg0GxMpAt
	 UtSkwL8wGq0eW2UltKIPG8xCcpl+nVoEvcJtl1LzNiI4hhpeNF7Ztzgc33jtS/hX9l
	 tP6HW0A5GzkwwmEeKBPpXhElmwyXA2uDMf6lJ6dWOuKbrvwAnds2zcSsSxgixShZ5p
	 wjrC/pfilTs1ftapx2ZCeZEQfnC2l+l4pHTugeYVdU3o7zTKMWgB2H/lB1IAm3rzxW
	 Xis8EXyXeNuzte00NGQnzPiT2p5s/cR3uXW+1lJO8CQO5T+fSdiqAfV4bosbjmO0jS
	 0vPcZpNba/caA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A354CD2CDFE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490317365.29078.7630158977705281270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ec5f71d3fd489df2e4bc431ba2be3d64b318e37e9e0aec3d239171201792cc
Date: Fri, 05 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764903173
