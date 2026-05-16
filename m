Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAFD1C5F39
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778942434; cv=none; b=s+nEU0MLNZuLWv4yBP3orU5vhAxJtrenb+CTQQmrj6i7krm8ckG9Dait4KaoYxlID3vW6ocTxbZMjRyQ85RzPr8w/FEXj83of/WKrKHykAs+FgRNC/7g/oGv8wN6Cqq5HK5OVlYIVMK7MrXDCtQqR29/huUvSoGfB0BRVxUZMLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778942434; c=relaxed/simple;
	bh=fC5UPsQyJrxnt5AWax2mJ1DSZWi7evM/e1wvSB2Zevk=;
	h=To:Subject:From:Message-Id:Date; b=IkYHAKU3B2kABPB9P3IlRprKERNeD+f7DDtZffNUzZ3YCkmZG202xnm8vEUeoGgO1ivc3IMlVWrLyk+1AswbuWxJCJyljppQ7JWXWTUyIwCjV2ol3mDF1BVr4nSnDWDs9/9l5o/sMP8XK/LkBmD8VV44GeLtGyc1tyBkUOmsuEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QslC2fTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QslC2fTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE7C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778942433;
	bh=fC5UPsQyJrxnt5AWax2mJ1DSZWi7evM/e1wvSB2Zevk=;
	h=To:Subject:From:Date:From;
	b=QslC2fTQzMp5TfbKf9YEoCxHaD0IFs6cM4T5WWgnLWbaJMstvb4WdevO6J/EVumW9
	 8bHc/d/Ku7wxe+P9iVwYpTCJqKeJvXRg74Zt9+Mec5vLKGk6fiqtrBkmaLq7on+PUn
	 n4Mxc75eMTCg1mNpkhaOq5iHtnHs57jcFozQNzysdR6LGEvrNSG76XxV4qXJ1X7hqs
	 aO3PMhlGWe1u2ydT/wqM215uXWhksiLl2uvJlOPbEcNojBNNhEI4iJRMhDFs6WFZ3e
	 KjCNE+1h8yLTPbXICVmJf94fPH/+xagz7OpE213hflx0/0AGNpWB/XMKDl4aS1lGL3
	 Lu69O7hjQmGeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF93BCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894243370.21644.7702776465220899409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad8dc0eece2b8ebd7a4061ba58a095cbe230f90310b50c9217c3b4e0002d3b0
Date: Sat, 16 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778942433
