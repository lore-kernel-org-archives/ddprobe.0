Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335512940B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765515774; cv=none; b=er+fqZR1DrUMyI7ukTQKgf2RZvvCv5mKLIyTVYQfZyfXq6IKcUOdhCkoILEL7+epr78vbQ/gBmQTb08f7h8qHdmQgR/6PmXAviky5mZfhYG1ykffOAWtdAPQjNAWH5xynLv8jXazn4aRdf09YgHT5RtaE1muD1rULhivpya2qJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765515774; c=relaxed/simple;
	bh=uYQtEYhKRnMtUzP1ASGIoBX8PwJX+wiSO1ajuvARtf4=;
	h=To:Subject:From:Message-Id:Date; b=FNlWAc2B5MFJ+gZJraAhp6I94dvX9YnagXtDaqhDq14oVlRM5ULeuCBjLbN2dGdBqHlbWMFFGaEB93bUi8weASp4/vsKIjwKGo7sBSK9vzX8Kj8R7l/tCEpnjSQ6xXd9MShK3WBZFGUOVl51rSBDhxFscgpkJ/vSQ93/srIOSBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK/7KB2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK/7KB2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765515773;
	bh=uYQtEYhKRnMtUzP1ASGIoBX8PwJX+wiSO1ajuvARtf4=;
	h=To:Subject:From:Date:From;
	b=KK/7KB2w6YP9UCZEOoJwKPSPxZKKQxkpXZOdGpx15WQ0X6BTz9Dx4/yQVLujVFwc9
	 OrLa02ybWpnp/6wN/FVH5TL1ATnUGtXNwG+8Pftpz0gMFN+dVcLg5GJhWLNHeH67LV
	 tiNEw86O3csu5S2Z/P09C8p4sBnqImDPrXYKabIqY0czsec3ulMQZvT9r1T1O5wEu7
	 HuUqYmK6R3J7gHYg+bTs/jVw99Uv1nZhQ880KY625MeFLFP9PEU63mnFiabH14kQHe
	 hCzdM5o8VnXEi7SnBLyjfQkuGKKYR8wsWLtsQbWZDnoLC29HYTVmI3dQuAW4o5RFnT
	 22RbsduUVPW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D92D43369
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551577358.28517.17395008504020915638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419838dd8eadddb54fd5967fbd7cd16c64b10c0e023c66e4bcf7cba9c214d228
Date: Fri, 12 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765515773
