Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05972DFA20
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744752593; cv=none; b=pdqO40w3rv3AGh8MbIfnj7irR3Fcg2cLtyN86+PihSKOlp/SA6n4T1iZXAkfvTEQtFIjEyD/F0ap/2h67Ho1Gtv9a9KymL1r9w+3l8v7MxO/6m9+gtidClKvX2rMtWVufLdhRQTfrWgCn5n2dwM0+38NzB2pJ5ihZ5+PBH8A3HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744752593; c=relaxed/simple;
	bh=F4yWadiWHUxuSlcgO/AHNz1m3cmnfpiOWR6bvElAFJ8=;
	h=To:Subject:From:Message-Id:Date; b=gBSSFOPD8RxTaXA0qlWulfOWWE1jwbgzDOsfTBrmH5LJVt7fIQV2rbDEhqPGeqlAF2HCZyygr+mP8BEYPozhy2e788b8TnJczwaeicwZ3L49dwlq5pxBCm/473YUUtB15sjtzCM2zXTrC4jcYDXH9+hF54QxLD4K6AnCsTwFoUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O82r7ltF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O82r7ltF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD689C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744752593;
	bh=F4yWadiWHUxuSlcgO/AHNz1m3cmnfpiOWR6bvElAFJ8=;
	h=To:Subject:From:Date:From;
	b=O82r7ltFGe6x1NhCpw8o/kDXRMrFvAdS8SE3lWLbS6DGOlFsuN+iO0dfcqQKsEQdQ
	 NvR33F+khrNDo58yN1LWM98+A0/mqWS9jWqwRl4u0gvHw3qHcyPoYBeLYvAi04nE0+
	 paCifljmMVHZjgsR8lV2TCwyCgQpTbdmn8p9sW/T8u7e2PMfDgZsMMJCImAdLgDQIi
	 o7eAQX86qA2oX9+6L0WNUeCTl7QbiLijKazNoaXjjNgpU5nz0m/cvSzrsY5XF8NUoP
	 2HY5TtduJVOpEDX1/lBaIfLGCjrkV5qgLoNzQwf93bRRqvWd4GhmyPc2pzvVZZRFne
	 qTI642d8TcleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F9C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475259359.30133.13176328655614248378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7313ae599e91073eedf55981ef6878c6c986bb80c846ccb559f2994991c70308
Date: Tue, 15 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744752593
