Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC14C9F
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739086554; cv=none; b=SQXbOqenDXSJ30TRw80bc0QNZBac8jQNwOS/pN6IuhowIiodNtvYRC7E8vAkcGsZ57MDLw/nqoNFq2q5nxIPoNwsUZG4MUbCLOi1Z50trYIEZCwNe17RjyaPn5WBp9P+e3G02X5u3hc5xSsWDnE1LTokwI6+nfgvvJyIeqaOOQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739086554; c=relaxed/simple;
	bh=VaGJIzyrr8kB2yLZDicBlnwhCTUQEcIkXjbSMJ5+YGA=;
	h=To:Subject:From:Message-Id:Date; b=iFtXpR/yGmRrpLdct11om3+1xwEf9H+8J92ZAc887vxwPlZuG9bZYM3LaHR/Gz9Y1DjwUs6y5+ggP+1/WQKhZOcVyNGeX04s643NNrftqb/E8GSlWoIhrIPlTKLAWMiEbxWlHbuCuvDw5gSR46vNpzvg7KtVt3u0BQA9toHpRj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7zoR5xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7zoR5xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3963C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739086553;
	bh=VaGJIzyrr8kB2yLZDicBlnwhCTUQEcIkXjbSMJ5+YGA=;
	h=To:Subject:From:Date:From;
	b=X7zoR5xJU5k2+abMU5JSPgOsXnqgqdxxAbA6u+IRLg9W/9nFZCYWInw+VbOJFduyB
	 cNILbLOfb0RnrGJAG+dFJVemz28ghiur94PKS0cgaCHDZo2pFXyc8Ef3tqNvr5/p/2
	 eimBebBFg+1qh64eTvXx/QqITlkicwfI6wbJR5Ucep6T65rPtXvsosTIG9goo5BBWO
	 lrfyXjhdTlVHcd9iqhkh8b4MYamtB8+CKc4eYozAkq6F2QWo102f8mGMb/+3Wkd4eY
	 v0OFKpdb1zaQbJlTg+ybuZu5Reh7E77s1RoDLHv7IXDoWD4/Etb8Tf9ZnzOz/Oq96T
	 koXQrWi9vInaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91863C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173908655358.9640.9411289276815762926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fe494cd878dec330d2e24aa461b1997d50105fcb052753058698fa156b424c
Date: Sun, 09 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739086553
