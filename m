Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396083806C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782273994; cv=none; b=CTu4Djhqv0ZG5CZkTDoFNYeUF12dlMwW8aER5RL+3p21u1rF3qqwQVVRmiY8e7JI3//5gHTPlCmH2OWkj+BPvYVlycPFITYsofNAs9ifbZApcyXySpoOrfJbIrB/r0e6XdkDuu9lHZIgEsJbg2doHpm6icbrGn9OZAIyNsMdpFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782273994; c=relaxed/simple;
	bh=723KRft4Fy0SMWcDlkyDod0TdthZZOqnuVXb7WROpvY=;
	h=To:Subject:From:Message-Id:Date; b=qKDxsFKzyzz0lxcP7yygOhTCf1qGf/6TzkQHrQLT2bKJ+nI526NwUtRudNoNMwYVq3isMnfYpqVWcExTbfW/MxLiWPxZUFdaF99Ea4drb/dcxUtjUYbEehETKVCEFP/3TNtMgKtvVJZpI0bV14fZ8jE+Feb3xu1lVc6tzOs1cis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2z0+WY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2z0+WY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DE0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782273993;
	bh=723KRft4Fy0SMWcDlkyDod0TdthZZOqnuVXb7WROpvY=;
	h=To:Subject:From:Date:From;
	b=M2z0+WY83KQZd6fWSkZesWxL22/iOA1KdFgqkDW7q/ZZfbCQZzFSEXeFt3cDEpT+t
	 g0q23Lb3//yvQ/zHAfZe/HKtQiHalvpYGkSUDHgacmsfUz/DXcYHchmxjyBhLOvt4Z
	 7T4X+Bgtc9t/11TuuKECrrldxUwO3O6K3pfxZbWzAhQm9VOiixjs3PQFhNTjLvu/Fu
	 E4t2BwPuBKamSORAezjsiBBFnRAFwwdtRY8PQRFEHwK5QKhv1srdiKmV2MsRoLmk7o
	 jTwhvRJG07GYk5TkIkaQjwplKT7EL7Xpo5bfNnt6GcwXOZH21cYPcTHcZDtXvLwwwX
	 8zQ6KDIMNivFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6272CDB475
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227399371.20943.4112268473679008498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b910b955800ad400209b5bf971a096c98161c9d21585a1ba6f81dfbe3bc896
Date: Wed, 24 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782273993
