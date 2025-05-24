Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442622236ED
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748114994; cv=none; b=lqrS/nqqZwNxc/lYZQmUfPni2GATYvWyylpOwodmU/bxRUZHAn2VmL86IWS0XHq/h6+XIp5WG2EbCkqv8J1usdiHOKEWeZvkbXfXWULahXCSyw57RDP8RwFqk7ZuIxxswmc8Ed5q9YbapxRJLqaFtxDS5nO6Ne7ZnnjLdsXu0zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748114994; c=relaxed/simple;
	bh=6TpP7VW3wclZ1pTxs60PkZFe7odyVNO626dtBhM57PY=;
	h=To:Subject:From:Message-Id:Date; b=osrOYxhP2K0yaYL4nbXUH9DX/CAGdRvaDmtZdQrXDBhM2yq7zqJmdiYpOyPEZZM4uCGqNqv+J4qSQ8avIbFwAx7Jp9QLR68fLvgim0Y+nouZIGY9zOCrLzJ029JZphbvelc/wH5GO2vyVSH2cWsxb2MTxz1jXNKioqVwXgsOvcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8G3pDgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8G3pDgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8466C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748114993;
	bh=6TpP7VW3wclZ1pTxs60PkZFe7odyVNO626dtBhM57PY=;
	h=To:Subject:From:Date:From;
	b=c8G3pDgvx7/Cc5H4DTR3Ddq7bwBpX+VBBe4CUEyiHDn7GiVzTKsl5+E6+sxNca1iI
	 PfTwUA3yWD8jmbarO3HmXsVlFacf756C9g21jRxuryqqh3iG3GPmZGvhIrbZLpIJbs
	 TLVWRJGqpYLTRY5NyqPlFXSHLlO9VeOK57VU9nIEmzvrkFYxK90pJp8R7sjSwJdplQ
	 51EQ2t7v7rRy7ECQiIqo9sI9GypOXXfkSX0P+JouvyBkNUARSUl479krNqcOix1bk8
	 nxdqCCag3uMZC22/pYuEDx6yJBFfQ/BvW3EvqU3SE0y6X7QUrQtO0jahHuiXSDRrx2
	 sx3ktxco1YU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95572C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811499357.14246.3188084465354873140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f90724060e75f8bf0413e0fd8013854ad6883fa222b34e97156ce89d7eff19b
Date: Sat, 24 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748114993
