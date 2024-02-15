Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1370428E6
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707967097; cv=none; b=kP7y7PxWVeVJWVIsXKi7lh0eC0TNSYkgvMQlAf5EOA7h1kUyppjq19XGXC+P1KPemMwa2hwmrm3HUXpzQrcywcdKz2GPMhQYCl0b6ljUQy/GDpezui6DiJbDP3/iEyxHGwWuPr9H7r1qhxGIvmUUuAdMskiwE1cn0vQEyI6azq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707967097; c=relaxed/simple;
	bh=zWwi5AVCu9jvNQDGS9OduAOC3RcB2fjYSxyZ2R4+ZiY=;
	h=To:Subject:From:Message-Id:Date; b=AWiuDzON/7N1knPiFGjgaiJZiPHx9jynTZ5WmAeAdvv+w2e2pD0k6qU8fPlozqBnjzbjIVLw/LcjbW6MzCsYQeVem/L1v5PfXuoe5VnwYi2olu2rTUdzRCqoisy7s1cjU9ftUbnWYQ/jVXrEn/5qYFZqC1ICmbHqoN2r2HH78B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+P8Myn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+P8Myn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D5CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707967096;
	bh=zWwi5AVCu9jvNQDGS9OduAOC3RcB2fjYSxyZ2R4+ZiY=;
	h=To:Subject:From:Date:From;
	b=k+P8Myn4lOTkZXd0RUeDmi35RJ8zpN79RL4wSUlFlUvZqIqeT8uE0EiadwdutvT20
	 T/La34P9YzCmxkdpcZjJDR3EXz7h3TPG/A2wDIbOa2OXod+0zY+6VXJSH4mH1FW1SM
	 M2cw0x9BbYJ6qEJM63Wx2rSmpcrQ+cCqzPCBBcIwldRdeAep9mmXQjPdeHyBz7Hm/b
	 jTud7lnGr8+YK/UIDSr3MzYBVY7wSyv5loxImJr9LSRL3gLubjXNNd/JV3KXEqsFqL
	 dGFSOC2WwWEvUD6NLDLqbDm5kXQ+cOi8n6kCBXqYPmWd5TnMgRLlPsTfKVfD17YJ15
	 +J22GUBJh0gsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79254C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170796709643.1114.17980015243167503012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bf9edeb60f1eea6c460ced3c8cc5654d09f07ab9a16adbb8278aa50b9df849
Date: Thu, 15 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707967096
