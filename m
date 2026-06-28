Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5208340D569
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782605914; cv=none; b=JVo4UKPn2KMj+8uKt50vtDks8zJ8MKLKOZczsV2FI5Nkc7KnDQwLhUA0aaZAr5dqoMJ6dIAgPragzVFAwvNnVXz2JFGFPMkBmdMYGKxYmVmnd2+gn58gEuQt55KNgkrEb/7EnE+SsIODJQNw4GHEGUUka6pzcR3XuBHKByZDzgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782605914; c=relaxed/simple;
	bh=eskATzpyoAAA/H9cr9B9B6qeoot5urFFF10+mzJ6co0=;
	h=To:Subject:From:Message-Id:Date; b=W6EjOWrECnPcarXuI9f0icwGV7QYxyMskOMvD/qTcx6I+TDw+uhJk96T2WIs9cRlQ0V3tUdti4GowvylVXamsdMK2+wkWkx4XPa+nTq+qKzX+jSZ1DGEgm88FSBXMBJyacjBHxQL03Spm/gEFjOcV1JfB1Q92e8buu1iZyz7YDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEpXFmDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEpXFmDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE5EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782605913;
	bh=eskATzpyoAAA/H9cr9B9B6qeoot5urFFF10+mzJ6co0=;
	h=To:Subject:From:Date:From;
	b=ZEpXFmDb3gyfM2/zSMldTda1l6cxi71KombPVepIgk4HfivJdS3iS6rMIUk1WLPy9
	 vnZtJIM1laSFn+LjEIcGLM/cJegY5BLtTZQ3mANdQV05/vBhDYRAudspNZN0ISrG9j
	 vMTn7NEM2Az7kR78rYYcvk2eEnL+wSYrjtBV929F7/Omv0pSgdTwjjhoNxx9LJfgdE
	 RvaesBBnwJ1nJdVEXOicOgFubklQBBg1MdAeIimpbYNjxzs5NbyfNOVXwJ8roUVUKL
	 9TA81UXb/nZO55BUiEDZ3nl/jRL528eQds7jCEkSXuo6jRMZUfbd+IvpakhpZLt+6e
	 xhvBsJvcE0Zpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA57C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260591368.3178.6744338149368258009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34779026d321e29a8b20a7ab6145464579d13df4b4e321ba7d77c5672a0c7bad
Date: Sun, 28 Jun 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782605913
