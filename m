Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B2534CFAB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776253654; cv=none; b=n3A5SZgoRLu7sXKEeDvwHfG1b1PmvcLAOo2BNrR5feJSCtSFwtJH/JLc4vaghOWZUXEf/P9OdlABij6H2nxUuaYPDvEWKf3nIfeVctOpbkNmveB0BDRAHMp8S3bGl0UegjwUKHFGP92ndB6Xo10uP70dluXEDYXZBp2m+hGIOUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776253654; c=relaxed/simple;
	bh=jY/p+RcYQUe7vG0nUJrL+DzDkEZ+C2fDcfYwrVNc0zk=;
	h=To:Subject:From:Message-Id:Date; b=LflW54QRA35ZY9+FMJK4tIx9pdDG8OCVwSB6dQxt92L2ss5b8SS73DSZpbqyIPjOHXuxdUaIERbtY274nnTUsEU0l9szQhwXoX3/WZsShY63bIH7A0wyQ4py4sArgUADuTZkvOecuNPkZp3AVoUU17euBXt1tByEUbHUJ3YHqSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqaYNJIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqaYNJIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD020C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776253653;
	bh=jY/p+RcYQUe7vG0nUJrL+DzDkEZ+C2fDcfYwrVNc0zk=;
	h=To:Subject:From:Date:From;
	b=HqaYNJIqyXlb6p4ENeBBeeACWyOW97CTiEPxHLeVffFPso45o7pfCFZ4x0LTdCJyE
	 QHElt0ogbYajvJgbMg+fEf+lVUZ6I+2TBpbCmAKIUWWWHPMHuQAfOdob6U3B9q257Q
	 BX7E20e54WKKDHirYNsrXZwiXUylaHdrf3dsnFz6WNXIAx+g1awzuJIjfXMIPTp/ZZ
	 7kaM1yaGHW8n2MK+USd5MmvBG1zINESFu+TSJxIXpA1pYUrSFquF8HGR80ST1WPPnv
	 1Q8f7EdSaVVkbr+IANSdP9byYDydnVSnrc0lfm3xsNau6Q/ZkFJJDIRoPUFPAFJEoX
	 zk6JcTdzdAnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4DDF41993
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625365369.20845.7923317586208993516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52960f0428dd4a500dbe6a439be6e561fe56de9ecd468d58699b93c5d00ca80d
Date: Wed, 15 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776253653
