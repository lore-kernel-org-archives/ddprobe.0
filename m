Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADDDA3749E8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789978834; cv=none; b=IvXv1yRczMcDnJphupFewglt5FwZ4OkysN7FtTxsUIg2nG6CKCX/ljTrGtkuHy7z+CAz25oUvQyic6mHCsse1QMOvv0HHb83EN4MXR1pVPJuSlj39yWog0HLUsg75f23O8GN7epoIDsOezp9gUXOUvcmv8ENegjKK0ZTE9vfLLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789978834; c=relaxed/simple;
	bh=wXzA/IkUId4qsEeRE9PZIo7Vi9blFy1vYzHweHEaedQ=;
	h=To:Subject:From:Message-Id:Date; b=o8aAoCexl/zBwaWlTcl/hZWYTXQbKUHrqTEvUukGRIa4gAo7Lqp31e4/DU6VHuYf9pcHgR0ngRlGjgCAD6EomqDaDlP+J8wwT++XuPMhBbuFZfLxWW8BLxVjgF8YBoqkmxAvFgs+zQYb1cCmSt/GmREQHWvaNh6q+tzuZ42s4Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWCv0C7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWCv0C7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE00DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789978833;
	bh=wXzA/IkUId4qsEeRE9PZIo7Vi9blFy1vYzHweHEaedQ=;
	h=To:Subject:From:Date:From;
	b=gWCv0C7KD+261bW91El6BcRQFjd85FoVCfddDFteXxxYawIBmb/KKrj05a9708Jy9
	 4Ahea+JGGtEz5h1dRvumNFvaBr2kWQyxmkI4lU4F47WMPIcV9glr2x0zV3LZnzMOis
	 OxrJIMFJQjpOYLKGGQ+imNWRCDHXWEWbYKERukpnvbex4k8JwfeslJXXlbZI0lA5bT
	 AsiqKreOIUlXW0g9D2CDsrI7fG+/DCly3l9oTx28mje9sB8enWHmeQOILnbsUvM6i2
	 5ntTVrPX77/SC5ZRQ1IlspHlna/Osyc78TXyP2eeu7H5rV213FaFl7dQ4RJzRK7ch5
	 d8emztgSgW34Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC0C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997883369.28533.10153411790589339967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beafdcd0373985ef0e347d7e533c38ac8069da231d65f4616fb30c3f7638c61a
Date: Mon, 21 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789978833
