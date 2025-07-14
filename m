Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B45245006
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752494994; cv=none; b=I4JgrCqR/vfgWXWo7dUEq/wsfRL43ZiRDwzHApsh9ooZgQaNAEsHYfd8/+aIw705Lc5IOeTcch9K8B1kuyT+Aky6obK/M89/iOt9jywYjiZdYqpChZeIWtuezMiTYgD5ejUdtL4rOyfKrk7C9xoq+zInRMYnsGZXlUIzcgGzbF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752494994; c=relaxed/simple;
	bh=nTd3x/oX1RtqULO6iXHz6eR7RQOZxn7+CF1ji6lISVM=;
	h=To:Subject:From:Message-Id:Date; b=g4/PfbgHZpnEwp1XjB+ewV5cDbGhdG19eTUzK1Rm+srFIWrLtm8JgmEyglikrnPvnvo+ml0g1dpJ9pkJaXuAEbVG1DmNkIA3EI3aTWjH2uN2rkQLLw/KV3ipX2qFMvJwGLQ33xtkamuzOZy9gPL6jtGe5rvOYC4t1TUyjbiUstA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6oeIFsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6oeIFsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9CBC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752494993;
	bh=nTd3x/oX1RtqULO6iXHz6eR7RQOZxn7+CF1ji6lISVM=;
	h=To:Subject:From:Date:From;
	b=n6oeIFsZk1GRzeOC9ERjvAeK5+HhJx3ImaoLutWTcp3nWnGOI683vkB2scCmt54aW
	 H5hi85VKCAVUr8ulThaDlvJXwZo+cGky2PEeQgTYbBVQSMvd768r+eOKt327gVdsfS
	 9/8ISpTyDcTqh3b4JwDgpfQ6rPjZCT/Y3s0wWAVOA75kjE75DMMeAe1MoVXQ2KcrEg
	 uT8FMtB8ajzDdB92zZPaM8lqsvIe/Ot3/XSgHCye0vhkM2ekKM5oQxfnl44kLN5bWs
	 p9nWXkylZyKUmA9dFc1MN28V72ry9YOfBziwYiyPGPoZSq0kksT2QSD3tLtArCVNoi
	 Vv3SR7hRod5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B15C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249499358.15590.13933957505771924611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbaad24a8bbdd543664ba15be26532f6e65dc7b5db87aaf2ad575fcb9bc3329
Date: Mon, 14 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752494993
