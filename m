Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440CF2FFFB7
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767679434; cv=none; b=NQXYEhPHEhc6uUDaxJ2nP0+bMdAT09q1AHaEim0du+o0fiQaZlt0o/QoBZ4+XlEeFAvqeLfiB0BFcPfOHNzi1XL43RGAxwPcbgg3+EdAtMNf7gyn7ZHp60S/0dH/96/qTzvy1u5KjecTPdV9Me0oryWacLIvqGh8pjOH8NwxdW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767679434; c=relaxed/simple;
	bh=T4T5zIdgrNtLgYVxoLlm6pRV37QstWkZchldQ5nTYKs=;
	h=To:Subject:From:Message-Id:Date; b=aP2myTTua9DGrpe+RcQq0YzHaPLbEQA9BG7Nyamd4WKk/oALXmM5AOEqzoZ4RBfxAWDBG2/e5ufiRk9UmG0DccJYUUb4ka6qWQnRZxTJJ4OIwUxLVstTpl78dMHSfSjtvKr+AzPDWNJR+awRTLuNZP0mgoBvGpEQy9aJFdds0Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIO5hejm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIO5hejm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEDC19423
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767679433;
	bh=T4T5zIdgrNtLgYVxoLlm6pRV37QstWkZchldQ5nTYKs=;
	h=To:Subject:From:Date:From;
	b=JIO5hejmlFyebPBKqp0YZmYJAryAs8eTnQJm3uGKEXmXNESpoHr9QeXFVxLiZvOLD
	 qGX8APOO4c9c2gg+xNol5bsS8v9atuiBn5EldbU0Sy8AtvCdKX5sb8YX3lEh7/uGnf
	 XAUaM2J2Z/tOsIqg7cyr44sYeMBEuL80I0twY3Rcnj+vidQ7kADXiNuj3Z72yOmI8c
	 hE6og9ZZcuEjt0lG7y5nAVHyAoUDoudusb5mGb9VoVt4f74V/TyQobW3aM8ZOEXX4E
	 mpcUGnQ5ZoMm/BiIhVbzBeqWoQYHGpQO3iDDCntllzCIcQncO3gn4H2g5zv1b5y7P3
	 qOa3DMGygJEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C9CD0421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767943357.29352.7288190847264336528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3ef49318091b3716bdb611dd9cc1d30e14b8ca8f65a748a9020e82ad0bfd90
Date: Tue, 06 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767679433
