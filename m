Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E6941D23C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789423234; cv=none; b=Xc68VTn6U3pA6jTrWtDH5Cakmol/ngK51uwdqA5/NrGTcXuc6RXWY+Pm/6M9ZnuP5QR4N2fYqcaD4aL51QWIveAzo/SCuS++/ClyJc4mMarhrwDhtKeejKhBxSq42F5lXQiY2Bqm05hv14RvAkTohQdw1Cb8/RMVh5hoR1RB154=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789423234; c=relaxed/simple;
	bh=sij7xBb8GV3VGcoSPF5b0QeIL7+pPS70vuZohZNwg/k=;
	h=To:Subject:From:Message-Id:Date; b=UhEdpL76wGk9Ub8rqRzC+ArWYxGeBiB+TIf78impDamUCw90/thhxvAiWE4ef9sLxL5jVj3QAgM20qwjyGgCaEdH5vdcIT96b7ZWFm94Ze3r4X5V7VeMNVyMBYNWvVJu7SwgnCzr2yF5iI6LApwTFKDH8BzP+ZnuUlH1t0f+IwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXHy1l7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXHy1l7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C81C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789423233;
	bh=sij7xBb8GV3VGcoSPF5b0QeIL7+pPS70vuZohZNwg/k=;
	h=To:Subject:From:Date:From;
	b=eXHy1l7A7/v9Zo8kXV0J2fjUmk7Q5Yl0ygiXpWu5robLVFrLfWCPPvr1pkyfAoQa6
	 uXN2Qj7CTnIDIgOpR1U2pK5I1Rdm3LAeDzkjx/W96tTcxSGfs9/XWJSNKughkP2RTg
	 8dej1mBtufH/iULi0T6969iy2eduZjZ6NOHMKsP705ToKoaksIdiooKU/7aHgPY67U
	 gNJq/aGOL7V/9ci5bg2Abiv5tJkJTTfDz+4Pute7my7geJ0KZs0bDsOYW3P5nbBvkU
	 YKRC2cteeNq7p+fHCrH+MaKvIJieJdDEzXgTK+x96BlUgOzQ3cKqMYQUqAoYRoGduQ
	 hdOG/Zcagew8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB1C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942323368.10845.9166998454654686436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adff0358cbea0e7ca1ed473e0821650b51e485891c359cb2a33c4c88b959522
Date: Mon, 14 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789423233
