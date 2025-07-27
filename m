Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E7C15C15F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753587594; cv=none; b=oGL3/WCK0wkMljJHYIxK/L6XMdVoki+hFYgovHL8BxBQYx9iiVjUd3uS54GBpw2YkO1zpzMcQsG1ilrLCLYaUY8bMuvkcjOclely4UlogWpSlwPvP1uG6DZRwLneEAN0R0Daa2KzQDC4NxSHhxQBuw0Aez3TD4EP/be4+hGhy6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753587594; c=relaxed/simple;
	bh=nQbDvCnCfZhgvpNXo0HrFIOGjkDj4IbnCnvSsI44nOI=;
	h=To:Subject:From:Message-Id:Date; b=foNgXYh6CleAFlXhE+CBPfyocPBtkEpIZPnFvzFNuSX/QHnpKV8qC8xCRqFLf+176acoYZfwbPBYUzyujy9U9MGkdij1zz1uM9HKOjNDgeotbX80XyjrUWfaEF6/quaU8/kYW4hX9OCnsvdB5Fwt68ggxvYkeDpE1H4Khl04akU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVVdyMbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVVdyMbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3691C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753587593;
	bh=nQbDvCnCfZhgvpNXo0HrFIOGjkDj4IbnCnvSsI44nOI=;
	h=To:Subject:From:Date:From;
	b=bVVdyMbOKEI33W99Vy0NgeuAQTUH2FtTnHBW/H8jFV1VEL0qpXNxPJ2JPIx6Px68g
	 iTa0cfjF8qsY1ehq18k02v1d+L59RrMrGufS8lE37bBn+UplaUKB1EsSTpHJJqa/IK
	 FLSdwgY4eirb+GHPyxlaXWnvc73V53Hs16zNpkkFdvOXdiEQIaZhPi3dfAXSv4AEBq
	 1p70/140Tw7GZ4QEw4St6dLksV17da0+XIfS6kyoZnRHuKKgLUWxqq2QiK/IKTShTR
	 5ZnKtzEB/Hta8YlrxnXhzQxJ4IrAdyrIDGx3kQBICiNFzKDhA6RZDehAnuWhuCON0t
	 y3BGP/LP1WKqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A2C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358759357.18680.2025335318607169898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88b98f8973792e1e667c70a06642a7f41242e22e65affc29de40c5343f275ee
Date: Sun, 27 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753587593
