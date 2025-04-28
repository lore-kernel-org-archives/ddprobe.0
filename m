Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A7526F478
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745866794; cv=none; b=HR/hQw9bmY+Cqz3/HVcUtlTpY/Rdyaj+WhgEd/iiM4EApeKqacgZkAGa6mSUAjNYotWC62LR1j4XZB3+dVwpPBVVdNTYhC2Z4vg30kfjvBGJJ5BNC4FOuj+y8floXatkL6n7wXzKK7u7mrQKeuV2onyG7o+mfwfiFzWYJuavM90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745866794; c=relaxed/simple;
	bh=iVrj0tWo9YdFIdmNwxcZOpgX4vPpVHTDvyST4CV1Kvo=;
	h=To:Subject:From:Message-Id:Date; b=WqPWeUqrTvScOxSA1BoTISstcWz9jU83OpO9BKH3W07UcB0/WFtuqMUAvsoIB12ZrcnYcFnTrgMzcuqWxUy6cxhIveHChElBpSFCJfoDKYkNG/TRAYOHgeSBUHOl1p3lvyyBN8TTCQVDEQtvkam5hTOmHRw/G0wVeb4ksIAf4pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuTfH7ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuTfH7ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D07C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745866793;
	bh=iVrj0tWo9YdFIdmNwxcZOpgX4vPpVHTDvyST4CV1Kvo=;
	h=To:Subject:From:Date:From;
	b=WuTfH7ugpDmBdKlo935QmlEpkXlo0VycSnUAjFS4rkv1n6Zy9S0bXpPIG7KsTik5Q
	 hWX818KzY4w9pdCjR89bgPif4ev6kXsx2qnEZY/4M4m9bWUzVvmLCJ2Eitp0HWJr3k
	 6Qy3BBuiHh3WMQroa2dc2xI6nsxDZMYLXP71BlioRN4UqhKnLD/LKPtuOB61Ob8aHx
	 XXVGMQzAGATZOznc5Kpu95a4wXVr0+y4VIRJezLrvKpAY8G/YwcfM+w/ws22Yn4VRo
	 kNurdBnPfkkCQqFUUwLRIj0d0jwCt525OZse+H6dhuBjgUXllxWcqZXWcNZe6nfhVd
	 zXDRNmgUqKgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94481C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586679357.21147.3513696341053500221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff1e39a038959c4b7c1a94280f4f77c1ded51e9d556773e6cbe69b5ecd1165d
Date: Mon, 28 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745866793
