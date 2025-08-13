Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D16B21256B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755083994; cv=none; b=kUetDdcq4RPyRftQPtDH1/JT8ql2aFhMppSx59ZbtKXRvbfM7QSBBBAscJMKoouS4uM0FLUOxEsA312sPVNVzJEo0eUMub5ysID5/NqBWZredQAwnnzuH0IYW13xEmKypbZN5fXeuLK3ryFm5w7Jn3H3fxYPiDz4srwhKMp1O8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755083994; c=relaxed/simple;
	bh=Ah/A9fuvdEgSQHU09PVg/XSYt7c7rECnHDWFpGPrTcg=;
	h=To:Subject:From:Message-Id:Date; b=c4EETtfUquYzDhGLIAeKBmoneC3bmdME8gz8zU0YI/3BvtemqBNx6cQ4oPUlgYLFCKqETNZofSC03dnsockVhsi1KJaxQukjxcMBMCc36tpc4g3VeJf8b+ZCGnyIseHfC105kqZ1g2aYplUEaeeiCXyXAbog5BHuwG+bu7W3udc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofhP3hIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofhP3hIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755083993;
	bh=Ah/A9fuvdEgSQHU09PVg/XSYt7c7rECnHDWFpGPrTcg=;
	h=To:Subject:From:Date:From;
	b=ofhP3hIHe9dSSuxKm8R5DS+XywSKpM2xeMmaHf3slvEKA+8KzF6qEQ6o5v4GUy7Lw
	 YhP3R7eYcl18RaDO6wgFHpGRF3C5f3bsWdhSG8EMK/WD8ej8GlNFS7i/4JULmLARCG
	 /7P1TAbC42JULN9pHxlj6VvlxRJVhA7gU+ho+n/JLxwFQUvfqYPLg1cOFVVWQyqYVu
	 NIXlYNNQv+YvTvNnLGTqBL1nKADx58jerxPPH7d4OekP7EzGg+QzI0+0Oildp0nCwm
	 FnKLq6DOGyYBwJxRBUvUUgmgGci92N+qxf8nYJG2meEWhv1xsUZ+IXmfkBA5utoPbQ
	 h5GRN0d1ncTjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FECC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508399360.13684.10971054342171493427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca724c1aec804cc099e6e4806687b41b327888145fd0746317f7ff2cee3a4bc1
Date: Wed, 13 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755083993
