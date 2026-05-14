Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFBA2EB859
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778728233; cv=none; b=EtYTWFAv1RIgA05iwBfxNkl13N9SS9vqQH6lpVsJnXhxYnXkWopoTWSlAK1NUiBf8V29+yJJTDReARAAtDyTP5voPpmv8zhT1KrzM11OUe4s007kxwjpkakHaJagZr4/8JiOHTBL3UtsQz6Zu0CvoMZ6CaGXgiE9CfTZbCJTKlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778728233; c=relaxed/simple;
	bh=I4L0fPK7uiCP5Xp2YiqZZUCmeevmVpKCyKBbq3joTJk=;
	h=To:Subject:From:Message-Id:Date; b=CpojdWTf4NgwmGTj3kqkfMj9+kG2QcqeAFcPRsp+utDusLNZCj19oMueYQdXFa98sxa4MlieHozBXM/kTh3nic2LOfr8W/RBUANxN4ouwl7CAhj3TnvTQg+Ct/I5jKwAL6R+z6FD91T4qwtsvOFm/WpFbu3GcKdLy5fN7L7E5oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taXDjJAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taXDjJAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9989C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778728233;
	bh=I4L0fPK7uiCP5Xp2YiqZZUCmeevmVpKCyKBbq3joTJk=;
	h=To:Subject:From:Date:From;
	b=taXDjJAcm53p0PMJNZWbRUm3Bxg79ItKY55goIEBhlkfBp/Egr6Pjxd0DLlkqZx4W
	 rOxp6avek1InHYWYk7SCfk9uGZ24etI9F/La8/tYfuhjXqG6f2hbr/Z6oKnV8jDipn
	 xSLF7tm++UwpWTXomY1WGWcF95e2nu4IhNEA62YxhTQ6pZLwalxj6Mtkv0GjA0+DI1
	 62AvsH+vhiumMNvfwZYEsCaQHiNnlJUWMfAPdE0yW/xL+gxIMIoqZeFHZLvwZTe9Kz
	 5RdFXgGCpdsciWGLY5nD4U1dvK4qv9uY3frWi0jOz4qpR7GQtP+1F0WibRevN6YllO
	 HB9ips6CBnung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EBCD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872823368.25348.14903578205105384552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cb245c26d87474615f2d3f0c8a69c8366b3ea158a62d6e6b47e5b18cc8a135
Date: Thu, 14 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778728233
