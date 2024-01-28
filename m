Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BE4CA4E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706428097; cv=none; b=NY6VSYH6vRAkINGH2YE7uS9/AjWOFa6QGGIg44XPlIaf0kDuM4qrNHn9au8rnlIGtr2liSYGFRIxHiiXOAncsQrDhsu3eb1mNvUWRzAsciOwdLfJR7YvLr9jaknOr7xPRNAGSjDWJPvyFnjgVsNNlpCFI0jJZ3zQGaKi4Sn+LlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706428097; c=relaxed/simple;
	bh=AM8SFgm+qdGtUopVsNDR8rVJDzCX2EOcJhgaMqVspFw=;
	h=To:Subject:From:Message-Id:Date; b=ih7WIEyKYQl+pNE8J79IBXTITf4bdnlM1OVdIvPlr1l6IKAt/IfUPX+80GOBgKta7z/jpav63dBqsxyl8E2PN3lUG5ecNji9VgnT/5obaZtSq65w9fnsQMDWr3WhtYbKfnjZxQ5/u0sNnByWDp4v6zSHVaiGxkNTrbJIYEfuD9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMHr3/bT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMHr3/bT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F480C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706428096;
	bh=AM8SFgm+qdGtUopVsNDR8rVJDzCX2EOcJhgaMqVspFw=;
	h=To:Subject:From:Date:From;
	b=uMHr3/bTQaFtgfp/NY2kxh6Ea78qOuyjjo2M9Z1MqaBYEuiH4WjGFad19Um2VeGRC
	 ZM+5VIRoQGKUTsE0oXQZ/alM4OTe/oiZpY8dVWBSZRNUgIn7pG9VDypov8uzKi8l+0
	 6s01L5PwaqqXtKCURZtJE+Cgl9J7a2VMsP4JvwLgnjELLsIJyCF3ahPq6G9EhoZiZ4
	 71X42dhEPlWbpk4kb3F1dllNtd/A//oLxsNxYIB1/1JVdIoJMiQbIAR/HGPy4sn9y3
	 BNvszgvy/qxoHgad3+P5EhSLJ68mV09jF5YlBNEMY4qQ130MZKT/5bwkwLzcsKRZ6h
	 ihsGQLPhbf5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64290C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642809637.26914.18016437153353166632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d775d4ee163feb3086e3a64af80592eaaa5894fd9a6b93f08fc3df407a2c7f38
Date: Sun, 28 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706428096
