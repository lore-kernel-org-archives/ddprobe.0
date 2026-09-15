Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AD93FDBF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789490435; cv=none; b=mXiH/cDAxb65jh00TSLkYmGyqk2aeT6wvZsMzqkMWSiyehljmGII9mvzDIp8H3sZH7D2qt36v1g16LMpgSBZfrkGB/HOK+KBV6wAVHiY66/I5h322E7myLIc1n/SL/+ZXHpqwQciSsXtf494qXqMk+9P4nz40r5FhJc7jAVE+fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789490435; c=relaxed/simple;
	bh=3ml4b9o824XHsopcfiPLWilFb3vhC2RhdUk7/bfleyY=;
	h=To:Subject:From:Message-Id:Date; b=ZYRrNqYX/9R0RuGXviePM9dhjnIQ2wlcFfZ0TfDIt5Psl0e9Kux9vqnYkimQQXNkogMfGBadra7feDApJ4LvxfXvgZxs4L139YC9uHsgI/F3qgSei2apPJZvPjY2c8EtFli9UkN7Y7ILknJ2Nu9W49MawKk8f9wTysDjcL8qiMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pibe5Fyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pibe5Fyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789490433;
	bh=3ml4b9o824XHsopcfiPLWilFb3vhC2RhdUk7/bfleyY=;
	h=To:Subject:From:Date:From;
	b=pibe5Fybe0+l0zj3AUFzdKSw3wbBtyCDoH0dNp4fs5jsPesRDyRPyWZQigvK0gZLR
	 AYxd78Bp86eRVZFNXzvoES0TxqUjB7fg7Y5qCCCFprlb1zKe+hnRlxxVPxGk4rBpVj
	 UtKA1Bl4trspWCnfIJ9p4IPZXGaBZF2wZS/8/BajmkG0/PPoc/fq39Gy7lwngk/DpO
	 ZZ72RBu41mxAJwYhGo1OdRyjq4xDvTOM1040KZ/xZQuffdpzKD4EMozPdxklb/ezCf
	 wNeq2kL28GnxiSeRAOmFFOZXaR+nVdx67SbYMG4YLZAdpS86nkL8zsb+4TIkiG0UqR
	 1GsRUpeQFjBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9343C88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949043368.5975.6445754805882529588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1d37de771c999c487f8982c217428b2a0ae586ce0cfe4313e9cb232aaab9ea
Date: Tue, 15 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789490433
