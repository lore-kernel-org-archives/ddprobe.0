Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745BA5D477
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714028483; cv=none; b=OY2tfGA/6ZdHUx5AdLHraVbU0QVGgQuftswkWuAExSdnwQAOCpspl5qxIqbuAXrUKOX/Aa39sU/thspwpHhzJblTVaooOpwTmwkeCbpi8ERC5IEa8cP/70ZxqzQnYPIbso6WSCXDN3UFJkn/ulQ8ZJAt+bXBJESnWRIn9uRPgnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714028483; c=relaxed/simple;
	bh=r4AmvDvkgVKU7FGpvVzW9r8659HSCoY3vxQgmUheHHo=;
	h=To:Subject:From:Message-Id:Date; b=OstFMztRtaTy3gNM2lMloJDaMootF1mGIL9/03suORMQvJzJgiVD1n2ZjKbaxBqRZMQ/ngMEnbVI/xwK2TBgDMlHduJSpPodbW9+OVmrgMb60LTiz5CVC/gmgRh6xY5B0mvsgp5zKQKDDrpiCZImnY8jCIEGY95EsWo/UzSBjpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSozI0im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSozI0im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2E5C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714028482;
	bh=r4AmvDvkgVKU7FGpvVzW9r8659HSCoY3vxQgmUheHHo=;
	h=To:Subject:From:Date:From;
	b=nSozI0imMBs8rTlU2KUxYHX3cZeatJi4zbeP0TifHBZ2S1aN0zUpq5DehuAD/yZ9V
	 vFIh1r3casTzSZnzHAY1YYDTdv7n6gSGkA9dhoDlCvh+kM5HUTZpfQfyKtf+PdbuZ2
	 UTqv19KeJ3ysNdYu3hp9W4zuZEdGORk34jjBscV2aT8w+vOytldZ20VjMTyfgmWhE6
	 HMWHRSKzMnu8MUBYP7t9oQsn+DXE85Jufqun9S7HxGanlcAtrOqiD0SoTjaHYELSs9
	 0ecW/zYxLuT2TctnFl286rhifk9AMiCpAInLnho8VTUUl+1U0NLIPrBV1s/NH6KE9w
	 0W6xreb69n8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C602EC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402848279.25530.243040710544245197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6fc4186451d985a78fd90b1c943b6e29cc2fa869dd9677ec08c497a362441df
Date: Thu, 25 Apr 2024 07:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714028482
