Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F54E171C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735553154; cv=none; b=X4mYi2hE/Z8Ju5qs/wAnJPKnCgIlAiRwstG/A67B/DzjnuThXenUzrIeCPopBnxjlfAGPeX6t0tAca0ud1UNw5SAzpPPhNu4uiDRRrKe5VEvMSWZJZTp9vrn+lDb4a7B2PNSIQkgf6sfrrnGjIlIUKOWKlhu4GF8P4Je/g16fc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735553154; c=relaxed/simple;
	bh=iIYxEwrQSIlqX755Mo/cVQc4XMgZzE1EdqL6sDyeKF0=;
	h=To:Subject:From:Message-Id:Date; b=kmzWklFdNYFkdAjctKXiqFjDYxZHJaYV43a9TbMyHtBM6Z6a6AEmySJwxms3e/rNlEePmOMxpRT/Swp5wHeYpV/UY993TLMv9KA/o36remx67fQoHeQ9XFtEnv87LYzBXmQSjTflsZk+rayNKNfsyGoRpZiTnHIVAPBKpI87iBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiwGG+Zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiwGG+Zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBD3C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735553153;
	bh=iIYxEwrQSIlqX755Mo/cVQc4XMgZzE1EdqL6sDyeKF0=;
	h=To:Subject:From:Date:From;
	b=QiwGG+Zdy8D/yyo7aZVeBSIXV27yBxGPuPvR/ohoGFhGgFVid8gfpk5Zawl/f2dCs
	 oBE4QZAeYUAWdbbnmvs6lSB3QmujwlsPbuK2Jqv7EaFq/LlW/3S7rCcBx1hAlgjMdC
	 eDiVRY9W42yLz1wj1yMoyowtW0aM5lM3DzgJhgXhZZXFCP2yJ+WDDr9p0vl80xMYzD
	 0YKKktEi+kXu4DS3VVbp/ZxH5NfyMLZ3znpVixmpfgvc8N3EKjMLsGC+8LlAREnt5N
	 Fo6WSL0esSiSikF1JdVRdd9HAeUxKarzxaARqoOdWujPxsOVy9oynjBcqUz9ZD9AWS
	 on4Cy020LrIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92021E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173555315359.8817.4944066422605974544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05814266697616e40d3d1295b1f1814beb6d1b6e99c6a29e0bdb79d88a7b5ac
Date: Mon, 30 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735553153
