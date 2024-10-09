Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436AD38DD3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728449754; cv=none; b=cHURy8kGuuuXxsGARmAeSlDU1goxg0rek6oAzaozaBD+1f5UXot+uAXGso7t5Bzamp6D6omX70kMfKq2VSr29nEAqtif3LQ6bqOY45vdayVF1AevBsqxszDgdrT+AdL04JK2Qx3muUQ/unMzGxAikaMH6ojuc+yuAa3jk56vGSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728449754; c=relaxed/simple;
	bh=yAUKXE8v2+jImZJUpK9JAWeg0OdaGXxdFMYttphJeKc=;
	h=To:Subject:From:Message-Id:Date; b=hM2NxZRgGzF1caLn4cB5i573WQrHFQvJt4dl9W/8cghRKKnVUGYIHfwII8y4Tf5gXqcPeiUBmIKuaWI5BoOsQSE/LGZMTu7F2CJSrosMSWW5riSWIG5RW6m1L6hw+7+jQAiIhZ5zavHCdeTtPnmWFBNgCmZU4jSvdAAx80h0R64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZTZapE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZTZapE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4985C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728449753;
	bh=yAUKXE8v2+jImZJUpK9JAWeg0OdaGXxdFMYttphJeKc=;
	h=To:Subject:From:Date:From;
	b=pZTZapE2yU9MnuWYl10zu/dntXZi1c4LYl95HqYOg9vMV2KLIsuqhOTHBafgvQ6+Q
	 JbY2DWpCf8+XRMCV7IS52bMaidcYaCpkSmFiTj47O6cDapc2yIAjuasdC5aFxK0LpZ
	 82uG+hvTImYELd6AolGOdqD7K3x0woEGenJ+xLQvHKZkRxKnvrTMqqnZaBJCX6jF+G
	 UNVrYok/YtLYlyc7rzXjueGmupWkUTA5WVXF/EWmDI7b1k8iEj826G1lcDYp+vSqXi
	 szK6sXFGcM7k+of31+MiJWvw60Qn6s6cFEKe1eBYDh6M95OEpu7h8n+0L3u/O+KGic
	 QIIEjgr++To3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC52CF043F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844975363.9673.11999844984404263380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5694b7c5c089ca3c375067f353c08b7c2df752acc6e59e693a29aa5b2740a1b7
Date: Wed, 09 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728449753
