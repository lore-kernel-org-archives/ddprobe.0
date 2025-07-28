Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312881A316E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753746594; cv=none; b=TabLO8o9ev5IFZGgx10iX7L39rEYzJF+CiryJU8UjTyyBqCIBwLyBFY4cJD+WHzMVbZAsM/LbhzWDpSkx6+fpU/pjS+JaujwCUIoJuodM585zt6OZD6yI/mXgvwLvbrH4OXa36ff3qOA6ouW0bgekOmBTL4M3TZq2nZcw9D76po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753746594; c=relaxed/simple;
	bh=C9kEWHF6q6uUX4YJxmkZ+J23cmUewgnRSFfXBo+m+UU=;
	h=To:Subject:From:Message-Id:Date; b=siqQyVC3p66apSpaKnjfn4OKTmW+UUnnl1NMdE3cpa51Rc4km1ixjR29vA8wYrHEfMN29iccVvE+Z8zGAQ/XYknvcj34wng8kE3rshHmYXo3A57Eao39u65ZyifdVcsg2NAfPN+Lx3+5T4XkTQOmCptxDrI3YxjCnQm39K/7Ci0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCmTuxjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCmTuxjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2413C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753746593;
	bh=C9kEWHF6q6uUX4YJxmkZ+J23cmUewgnRSFfXBo+m+UU=;
	h=To:Subject:From:Date:From;
	b=mCmTuxjcYoNcoV+ht5ApRMb8KIaQoTNEZ4TO/uggB79BkN5+aRRXd7uN4s8Ct/3jn
	 /1ZL+GEC3I3Nl+irRsixH7mfh4lvcn83KcDD3nSpHYed1kHKTex/N8fNAzRiD3eBPD
	 ZreAL6Ayb8+RQCbqF2K2hV/MRJ9mxYP1ERRbGqxkPi+MD90slAO7bh4tlHLb4ipogb
	 s70syF6rhrcKxTfwkH9RjelulKYLpfNChqDZooPig0MhyQ2waYBL+Q9Ww4JPf22zpC
	 ISxxlyNMZOWoTKCI+xkMnwUGmPLopwwr44hi0eGW9kT+pa/zXTazp2q82WSfqa2vlJ
	 J7Xtq4H3E0tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91851C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374659357.6769.12141737186400643170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c524fcb4b968f473d3369a16578bed84140267b603744098266e7d729730750
Date: Mon, 28 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753746593
