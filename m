Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B09E23A566
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780115614; cv=none; b=q2Fi8Upoy7K86Qu5FOG//JYvJtGlO9QDoX2htChVxTQ7UC/GkbGEnT+MdeE8kwnEw+6vMMGfHhkOIgspH498meQf/28MjlKEOXOpPmIEdAG2fPjEWDPacrcMcVLO3XfKbqL9uF7YbczLiSFSwmVbYYE/oR+HZpa1b9sunAqud58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780115614; c=relaxed/simple;
	bh=cjbSpJ+58ozmOxq2dJM0qORDIJ7h6ozYwLw26t9u3AM=;
	h=To:Subject:From:Message-Id:Date; b=FW1uECLAnljYaZfmk0LZwBSO/V6OdJ9bJAjHERC8PvkFyqa8ysnY96Iow32/1RsEIfOeOlx1QpY+SJ+Le1enNpxRDB+MNI0u054NCi6BXJWM9qBe0cUBX7SfrXq3pgOfhuv+kINZoiYbT9aGJcGldif4NBVlykVLfjo6vQjfXOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcOKi3GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcOKi3GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9714C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780115613;
	bh=cjbSpJ+58ozmOxq2dJM0qORDIJ7h6ozYwLw26t9u3AM=;
	h=To:Subject:From:Date:From;
	b=gcOKi3GM16xmvYFigcC7vY3yGPCRqBdBnTU9rowp5f7BTXOGSegJg54j0uLduiaKA
	 R+2pLU6wcmptVUESCi4S51tLt74ZQjfAyYGQYi7gvw6kzXUXbQm08zCQAbQEbQZlNE
	 vxlLIOFzGp2Wrc2tToa7dc8yTwrcZNewkAWsJ3FhSjj6TIviPSjV6aePhQtHgMN9h1
	 LzGLurCBinUVuX7azy7GXZolzMBmT6kxXwrVAdedkx93Dl8NpzHtjuyyLF8cfviU81
	 oqzWZCISlyl5OuKu3s68ciKkw3ltvVJiCFferHi+SfKcih3oawsh62baQNrWsK/aOU
	 rH6FiHgZXQ3Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE71CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011561368.8063.18048182568912233025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd99782d50f1a18d33bf7341ca7f7a26a096b7935e9ce60154aaab2b09719671
Date: Sat, 30 May 2026 04:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780115613
