Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03076196
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708474097; cv=none; b=RYfBNBVfQMC6wAZv+wsQW70URvLiD4VVIbwwcEr7QFOWaZ7nz7HISR/XaEICA5OG/UuNu3gkGtcdSrePW6ILK7P9KwpWkw0zRoez1l7sFO0QY66l5XpdtoeODW08hXW0U44jzZtHZYYJozGDcDyEkt9vLab+Mg7S1gkBtlbcbEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708474097; c=relaxed/simple;
	bh=pr/551WfMeWYg+mjIShT9LZgwE8Bx7H+gqBWm9pAA0Y=;
	h=To:Subject:From:Message-Id:Date; b=mj6OHd9CtPCI6gY3WO+w0Mg3ELkt2lvU8YOuWYfHHeJhhUslFLrMRbxb9NMdWjHAUqncM+nfqhcTES6m5CO0Ocr3cBA6ZbgTgek2WlX/ArP6/TL/KAjj36qhoAgv0JFz1JeYo3k7nI+p6mR4F4egS1fr+A6xDHC9stfMt2PdA0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loa+Wx3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loa+Wx3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80742C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708474096;
	bh=pr/551WfMeWYg+mjIShT9LZgwE8Bx7H+gqBWm9pAA0Y=;
	h=To:Subject:From:Date:From;
	b=loa+Wx3mryHFUsJzR1LKDdECEfOrtjl7dYgiKYPc8xmLJtZBZidPzuJ+pCdPtjO/K
	 lWMLJ0FgaRrVaZARIYwclhXzWlEgl3CRbDUFQzIUFgVGXPrSNkekNMApGqPl/lLqmI
	 0m4B3GseYrsM6IqGiWL6oxUZlOCI43wzpASr7EvGQEOYDxr7Hl5dUqhal/jK+oa+w4
	 lLu3gF3/nJfGiaeu6DlqZjT0+gwimxsz0mYtGetOSBTjf0OrD/Pe96QsdXr8SVjPvQ
	 ZWnfhnFKfbDel1ik43JRckyIC2nGImIdnoNwkErs0kgOi7mCAtOKOH9Qw9qQbOEYFJ
	 2sJP19oWuAQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63161C48BC4
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170847409637.7292.2483684276560206926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0a2f24cf755e8bc0577e288b3e5de62730ee69b60cec4fd153d7c513eab212
Date: Wed, 21 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708474096
