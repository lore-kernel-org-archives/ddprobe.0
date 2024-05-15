Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AED528680
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715793144; cv=none; b=cfI4hXtDMfGGGgfsPsQvO8qNVW6LhJ5Y/BUvQv/h17UFNU8WQ16Cg9KDJO/L5q7p8BdxBOjjVUkRqfBRuV5y8DwDjHHZ4pxnkZlaGZqxOHII7Ltv2gdaz5KCh3s3fZHZVgj9PUNe9+eX/sUcA9mAfwcQfJomMrieXJfcLikfELg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715793144; c=relaxed/simple;
	bh=+RUkXOEa7xCJjLgOjVk5PyPW0WuQ/QIrFuY8jxNHaJk=;
	h=To:Subject:From:Message-Id:Date; b=lBZGDpFhth3ebvjDb3p+yiklqJPXkvU5SnkVbDP1LpOKDjcc/hApidd79ODRnxffilSy960xTbDEhfIvIZYcIaNPHVh5jawR/h6QOA9fccuCPcOg06lbmf9EZuitJhUjUY+Xaqj9hMA45fbEOSl+elZbTDrY53N6brFLuyqOZlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUWzGTIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUWzGTIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE69C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715793143;
	bh=+RUkXOEa7xCJjLgOjVk5PyPW0WuQ/QIrFuY8jxNHaJk=;
	h=To:Subject:From:Date:From;
	b=eUWzGTIe6JrMPuyDBHsExvB23ZICa3BAJgYvfb2sZQe57YpF2UWUgKWW0DjlXUAjx
	 Ftb5riUS1XmFCmg9ExdHaNTjqg4u1krcJzVbNB3CnTUaipxUkzuOjW4yOODsOY92/E
	 jfGz1KVmaO0phKtEww+QFmc/KLwCeLtwN2GBSb9zvbTH6k4PJq8GHepN1ZQtGR1sba
	 q6+uTbWHIYNzbpP3Qhg1Xj5PuJM2RIvxpQq/cEKfvU02ttHrjiBs8HUvNBeC2QRYVL
	 dKp8KCLRn/0ILvKQsP2kup+obRUyp9tcABniUP/torIrYptS2s6t5vOGV9GsUdY6vw
	 TS8nQ4Ty7eaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E22C25B79
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579314279.28357.13105653085533027497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024e1239eb69863a5338a87cee18515f8bff20ed4a19032f82b6e99042fe27a0
Date: Wed, 15 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715793142
