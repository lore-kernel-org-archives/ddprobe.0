Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BB0279DAD
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789960234; cv=none; b=I5cpwBhzPnmVmJRE7CoG8F0a3il7c/dHBR9M/ZRweo/12rcxjRo0hoHfTj6+n1Setj6XLEAKZmV9d4qlqohoUiHWPrTf/tFFyIAZOL3cdscIQ+csQOQwO6o8qm6VKpbSds5hyjf6uniWLk5OqB+6RQ0CPk5PSH4wxg0laPdrHxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789960234; c=relaxed/simple;
	bh=GcsYm/Gk9pkp+ybo0KajySUrLOSMjpSztVfZjaEfLps=;
	h=To:Subject:From:Message-Id:Date; b=RIxeDb/b4fUZGelxqUIYi2EwI+anI3Cds0vJN/UaIPbTrMjSDIl83cc9/s7FMZ5IU9g0ViiEdLk/lqE/rTIFyKu7kumbAWy47WA3UqVCFCaJVhckrNkCqPTUZ3K8VbXzuEBdtDqYSxB0k3MDegJWV9B/cRBf2X3N4gFgeanpXHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN8YN7pX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN8YN7pX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7B1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789960233;
	bh=GcsYm/Gk9pkp+ybo0KajySUrLOSMjpSztVfZjaEfLps=;
	h=To:Subject:From:Date:From;
	b=WN8YN7pX8ZksbTIOQw6DzcAHFtGveu96Y/9e/YJbbABimbvTE2qnX/xrt8vJRlkVW
	 cFy4BN5HKyCzN9qPdkWbqnUWjVmRGaNSaylZGxAyVI1hLarrR64OQp7BR0f2yfyKzf
	 0WIZzjVdj8kts7UIQxi4kgFXWU0tnTn186YowjC5714fzFqBtnxLfPnR54tqTKr83/
	 kZCjFL6eshqbaItrcgurdpJxtTqSy0K3FWX/V0NHhsPBmOagExOvu8OY6h1Z2BagOu
	 j49MzVtDDm6Gp/nr2rEJRbjx402OUDcOkQDgb/uIn059y+JiYwA2R/OfuSMxG7ruZn
	 3p1gCK2ENhXiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC77C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996023369.6886.11444053804925823135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b31ab86b250bb81ea592d330258cc1ef1fb5bd20101bcb2503dc42c613a7136
Date: Mon, 21 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789960233
