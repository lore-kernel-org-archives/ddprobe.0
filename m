Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274787081E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771762494; cv=none; b=ogc2xmVGhJGT017cWbKLIc9SMU6EtaQnQEtk8d+QrVuxsfdrQ4pUiBlNL89N1wQslfXl90Y4ZmfUcLqY8kS+XoF9c7XAbPPOG/YXUQFrx2QFo927CtlNZRR5e1W9mNrJ70qW5YXmA/MzpVIYxx1lJOwRvmvvQDYVIorG/D8YIIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771762494; c=relaxed/simple;
	bh=pLexYTewc8+xeOtOyDL22To8qII1Ji4BMBHiDajYJb8=;
	h=To:Subject:From:Message-Id:Date; b=Q9RXOBLWKF0ubWirAbwjF7Ce/VOoci+zeGbnpOqQfNfv/1W/oUGuSSorWhUNsyC2WGvxA6h2f2oJgAbbQTkPHSe+6a+cFTqIYujgug1fYXWohSOIakS/fI+CjRwUqVSYQk2eceW+m63EVlZTKc5oaLrQ0tCIIQex6t/hwGIBTjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqZit2QR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqZit2QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7733C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771762493;
	bh=pLexYTewc8+xeOtOyDL22To8qII1Ji4BMBHiDajYJb8=;
	h=To:Subject:From:Date:From;
	b=aqZit2QRIR/3bpojOnU5MR+nTjbsbO7/RIG0lrev6VHvjBn0+6hkihHgXG5xD4QXU
	 MoGatAhOutqcHlpeHFMXkBoflTeGzI8engDrZmk1XmZDAp4pphvRwPwa0KslabXtPE
	 Y+6WfwWSMprkyKiRo9dw7EzyS+WGOrJJ6JlwfCTpvWOL0Px5z82Sp2SjRimA7idC5t
	 4GFyepPpW05tezNP4bus8GgbkI8Ah7GyIrHg86gRUaUAPUtrBL5yBzfSXxVefgyosM
	 jtmYF7YEUK1ABfgutbmQeWkLxbR/MzRrSXX185JyOVmimBL0ZTRv0YkdyvCUMEd9hz
	 qx5KF+8mF0hHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B5AC624DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176249358.19043.1277889115583299138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839f69395262c93f8c3838552c40db632e5325d876eeed3c3635d8ed9a531a04
Date: Sun, 22 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771762493
