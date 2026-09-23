Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D4F47012B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790151634; cv=none; b=nKlel1JoI3HYjpa/ABo1F+IGEY8fCauKJczv4cuVEdrCBvGKChUotnyJGVf1ERqVVKxiBPy6Og+mUKjWudWoJ5yla8G29IYkZipYrbsu/LH1a6TpPqNPns1ht9adnPw+bZKSZWuXCibI7g1AvKKLIP/C9hz33QFWQo4l8L0NokQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790151634; c=relaxed/simple;
	bh=zv3Bkc3vdxTc9DbGqIJ/nFEYiPi20qzm8gVMYMXgPoc=;
	h=To:Subject:From:Message-Id:Date; b=JlzeQEFaRultFxB8M1qxvu+l1oasge8iA4rRE46jPILUVRZrHO6BcZELjO3b+e72bcCpWCNfFgAXCgLzzoAwkPystM+TkMjWSkDD6q92DPt8CM/BpYwV/dxFnBcR9kjaTq5mjpLv5LVliSG7ErCTyZT92coYHduXA6j8F53xNnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2Z3qoPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2Z3qoPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53C5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790151633;
	bh=zv3Bkc3vdxTc9DbGqIJ/nFEYiPi20qzm8gVMYMXgPoc=;
	h=To:Subject:From:Date:From;
	b=V2Z3qoPJ/BKrQjDdxwEPtNelYBSwSTK7r/DUt8HN+Y7vmCwoNOFl84Yx3F7iQaHmu
	 o+XsQ50QbF0ZFh6fZJTtKVW50AXn0hQTPU1jEzrWPXJiOziG6a4n5ZMSs9d7WXPXMG
	 cvlDcq+SyzaaUmFeLx1OZI17p57PaFyv9m74tZzxme5ODDqpsd/0KEjOLZ88qW36dJ
	 fySWdVKtb4OnTTB2ZzrXVBvzO9Tt3TVm5UFCMgb3XD/8x5eDCLKlVzPecmaX2zFgfX
	 aLax3G63hPihd9lYQkO5OJcfNWjoDXrg41OdbMzowlyqMN3CXbw7U1Yqul/IgMnwl9
	 sC/w/HLj/ukiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1980C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015163371.10638.16240576442453523509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0760460bb569777b735c906f532ebcdbc257550db9158fbf78177bbf94cedd52
Date: Wed, 23 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790151633
