Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9BDE55A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769996034; cv=none; b=m2MdJ96NBtpp5pT5TK1XcjlLEzZBUjDHdwUBN9pEZ9e/RLLNO5npJ4FBOcIii1KVn1y2PMPOMh2wP6xhxESnRX9z5K4xbu83AviwlQWbkHR5TbnpOIWoa82u7m2pA83bjkPs4AOWpkd44RZWLtzrjRT2QW7BGvkAIybw0kym/2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769996034; c=relaxed/simple;
	bh=t7M3FbMVHe+sjW8o9KGduVIwiB19mAw5/8Q96OMQNJw=;
	h=To:Subject:From:Message-Id:Date; b=kcw1ulvgR1uX7ffT4QJz9k1uWUqFjZHuX6VEXp9Ld53hyvSXCZOQDeE20PqyGKOwzjshkdGv4lodgOCbi+TDhSYIb6m80UgIZfETZqheqiV1WX2/MVYaSHwQD+RYGoNl6HHfi6ATejfEsoqqrXDGvTRXqeaivsyJzzmkUlgTPD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXnLdsoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXnLdsoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769996033;
	bh=t7M3FbMVHe+sjW8o9KGduVIwiB19mAw5/8Q96OMQNJw=;
	h=To:Subject:From:Date:From;
	b=BXnLdsoQrTkRhn4tnYwH9zCPm/bSTvv+3A35XOtgwN1m8tb3v/jdWPhseqRb30ath
	 RZVc1VKtfpz7VT91/vBQSUVW5NsTA4F6aQeILQx2nIVz7SWH5TjAYbWXr+pcVkuCC7
	 /vGGOyohBeL3AMMV6FcG4rbCHlsE7dwVQzE0ASoVx+MuEeuS1NSvu+pEdOqa8BCkzB
	 nruGbmnAmviMvxd7YiSjgnKM+ZTyrx/0e1qsJcULzDUqf4avnkUNOrko9Du1guG8Rf
	 51banHmTyo5spE+aL6zNoD7a+irH9IDCUQJZQ8nO5g5CRCvkJZnqAAtV7jqQcOC1gs
	 4pqW82egRkZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383BE6529F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999603359.26618.10940657780766610421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89abb3bf1cd6ddb368f1263094a8b7fefe92a334281767eefe98f6a40d89c1d4
Date: Mon, 02 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769996033
