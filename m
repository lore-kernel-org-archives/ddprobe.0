Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19662383A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705879097; cv=none; b=JnPBP+Dfo9fewO/ZCc0fFpEBrmLihvdneekwXAU6lMpeBzHU+KN0Ni1HvF0AeILw1zHTqZrVCqchJ4I9CQb1Bk4HxMA6QtY2Kxlf/pMbae+JmGClFvJ5c5GlHSiYcq70qNQFZBb5vgrLcmpelIws5ELdnZlo4z3KRiymzMww7PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705879097; c=relaxed/simple;
	bh=PUSo7KsMVdlXtJ1ZCPN/ZUdIxX+keXSSWPy3TlPDKqo=;
	h=To:Subject:From:Message-Id:Date; b=ta1SdbyqvwtZpRrRoKkrMbGW+VWl3JufT4AJaK/4HNH5QZVcgg0Z5fHqlQlNm+Nb7AEjbbH47retYvHaLksqGkLElOqXZicHHC9ZYTo677yttsXlJkH6X7qVcLTgJYr9ywAFe7DORmpm6My3bGdAt+LPkhzyWT3P1rPsLca7YxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bl1Sp1U5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bl1Sp1U5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 871F8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705879096;
	bh=PUSo7KsMVdlXtJ1ZCPN/ZUdIxX+keXSSWPy3TlPDKqo=;
	h=To:Subject:From:Date:From;
	b=bl1Sp1U5AT89SCW3ndOfGV336ZFtZrVKhhG/yswjpWEqVzpc2KFHx9YrxLFn7UC7o
	 xr+ry9tSO/hbaiuaUUTG3yiyfhqG8YL7FXlz3bj5vCV3rtgxCm9HQvXMuxum5bu/cz
	 ObeNZjjU8olLiV5J4bB2HSQBjyw2RxO5l28pSuX8uGkji3QJWvlXhnIsvoKuGcnlcM
	 hqqCdxeglDJw8je5+wHzAnHpUmiVpldQREI4gARjyjIgH2jTqgaVAVa7RIGgYdsQjy
	 uNBgfadeY8qn5RC+OGT3FrOWZZ/5wrprjicmySlV0WbDHxL0MXdMhtS/RJHAGdTp9A
	 1qwIKxBHBqjyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F51C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587909638.8121.4515686627592008932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db06063ea59295122676a41bbf8c4eb9bd6944c0462095bb03fa4dfb70a6bb4
Date: Sun, 21 Jan 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705879096
