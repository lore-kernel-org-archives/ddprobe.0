Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E799F1442E8
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733496954; cv=none; b=I5WnLMXiMBi/axk8INkH4epFt3tQI6XxzuTY65jUVJGeVyrM7MGtbfkHh+wcWu6EBLQm/M3/iT+LOiCG152N5ye+lSeXQcBqoq+zCTvsLhevSTscwxIRGWRvmYku8wWYfhJRqF6iMb+/AQbdxTNnsQnsrtV78c/kXkr90iv6qPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733496954; c=relaxed/simple;
	bh=6ZSSey3Cl46XNWVWy1o3yGKGvUqovbTbrlzCNTFq/yE=;
	h=To:Subject:From:Message-Id:Date; b=lPrdYu5zcIy2ss70UDlrMn+2r7fMO2jYxcPBfKbJckaWgwFbBHenJ3bKUGRpH3C7KHul87EC6TlKjkE35Xq/q1G8Zk4yTSHWbejv7hWQ4oVRjn8oC4o5Hk1vhIF2jKy7RfTx7r36yhrQBYscpBtBu5gGv53FWJA3lO3HyZPgKBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpTE+Oly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpTE+Oly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DA5C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733496953;
	bh=6ZSSey3Cl46XNWVWy1o3yGKGvUqovbTbrlzCNTFq/yE=;
	h=To:Subject:From:Date:From;
	b=lpTE+OlyZ2x7StFn51FZklcJOIQIOF430WHFab3RSkJxq3VqwWL24YsBEUn+bPiGx
	 Gw/cdiMvL5pY+NM4ws9+SzGz9HPxgkqriuE3MBCjmOyhCp0LDysAJHpB/W0RvLfNon
	 EGoQXj08NFU5EGe5ZbWFnKfP3dj3wWQ1dEs9YVrKd8c0kMmaDH2rnhK4PTzbX1bBhW
	 Vc7ufbc8GAsE66XzM8g4sbsS1wiIfH6R0FUdSBg5tsbVvQxg/rgg6PNWW+jJPP8B0q
	 JT1vo1wlG+1T95bFe/2Yla0gkrOgDwEoBqt+3eELWpQum0oAgl0iMjAP/f76vQUbs5
	 Xxp0/SmyhOUow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C24E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173349695364.4789.8984550876205711019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d785ae8e4216108b2a8d00d86d2dfc37f4888816d6805bb90b5bb994dc941267
Date: Fri, 06 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733496953
