Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26182D5952
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756742393; cv=none; b=N47icaMnnTQ+plWDBX0iAz3H4T+UOfEjvWWDvE3dOa/nseMjtaxbQkFl7SLYLZtqJzTcLeogy8YlA94hxShGnQo71zb8Cvdt5LyQX3bDGH0XdxL84hkw1DVgjWZnVb+P7VMtgCRV45noYUE+r+EKPgSPHLFGF4zXPtGPtim9Gtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756742393; c=relaxed/simple;
	bh=Qa22iVCu94c6gEew/8uoMEnmDIeZ4r5fZzTB1o7KiXc=;
	h=To:Subject:From:Message-Id:Date; b=UtbmxfHaL7z3XTUlklLoinkmxJyvWQ0cvxOG7z0ORP9vYiZ4CnkVIqgO5ZuE9whwiCoHmu+KtJE2EVom/BXeMIfyzSQtvbHWNVMSiMGFhdP7jhk1jQ/BdductHlkMdYi31Fsr5Aw5HaaTagSlRqUBaIDWb6ggCyDmhPxzCsMifY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ8bDOl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ8bDOl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756742393;
	bh=Qa22iVCu94c6gEew/8uoMEnmDIeZ4r5fZzTB1o7KiXc=;
	h=To:Subject:From:Date:From;
	b=NJ8bDOl2zEny3ctba0Lh7dMW6gUM2WZP0BbPx5OcocDwJh8S6LPYgqrBziUCJ4BdZ
	 Vp05mvVmsDtjq2lJ4GkEyLyIGxEjD3uPkHEt5Ax4cOVbexmNTcg1lGOPCPCZTDRbYX
	 O4rHRLPg0+9yrotNNJTbBfPVIQ2VrrRJO91U63Hip60yNmohdUEIjDVB4lI0HwHDxq
	 Ri0McQNp2PTzgEQsnKuq9ko2BbjihvTj9Ff0Fs633VxYRrQqKeqJLasmV60H7KLK3q
	 dRUSvm8RIUAmwXCK7UDdzJQHjzYkgCJg5c0xk2OgyFBfQbVwjn3C2H6cVLBaYi7+5d
	 qg+Yvr5rxzJ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B3CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674239357.20262.15207264420207815506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0cd98ef6155a5234c0a75f81977355a00f2c22fdc1efba75730d3fbb54919b
Date: Mon, 01 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756742393
