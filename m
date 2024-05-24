Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DEA46542
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716578003; cv=none; b=HQRBaAXADuL7ftVVC1PD8GAz2wwCxYFLZjcH03liX0sL3fpq5/V2NSfv4Z0a+cN3WaIzf3w/W+eA4Ca+ydOu0fTUrj8Fzuy/zK9YRbBmTwQxC3w5rCezdupn2vL/6WpnVcfoFBYWNDUgggnHgkIHOIZ9RkPo/5E9LUnjp9GDBek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716578003; c=relaxed/simple;
	bh=DCqjKoQ5L1wfdXkCD+6swSIys+N+2lYun9aOBseE7Hw=;
	h=To:Subject:From:Message-Id:Date; b=l81yjouzOuRlrLudnqqy3Hm9Wt4RR2nmWP5AglGW4WRIki+U0ZubKNMsH5rz8TymbuJ1Pg1MofytRqEUIBnbNNAk1kcXZvvIXoGrtZ6BrcuV63OmdlkyDnU8BVrDpBwGZi/FWTuIOqr1OalwjGXIeREaxjMBjgA62vzwfG9RLng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGnYNw2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGnYNw2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57F3C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716578002;
	bh=DCqjKoQ5L1wfdXkCD+6swSIys+N+2lYun9aOBseE7Hw=;
	h=To:Subject:From:Date:From;
	b=DGnYNw2IJgeVDGxKko+u1pTEUGeitdBq0/8AmbOkhZ5eXCUMdlwwhxLYBFrbxUNZT
	 SBWURY+esWije9muMQtWht1xWIIVHS6DTyOm5oNirt50DrAr1NZNyc7DZaoz3kF5Od
	 ttp8VG+yXlxwK82xxOHvpi6g2ZPYHnplpbTh3wY3rqu9nKRsIEZpiQ+tKw4NZQVuG1
	 qMWDqtil8Y96FROU5NJDDopBoH1+jg07HAhM4NWoD1jXVm8NDnaPfJxuAKTLlvKFAD
	 VXgfKFRrs0z84oX7DKKywXYQFoOXvLasfZCnZgr1jRoawKPovhypc1BWDtUraRINkH
	 rKknF3PZCjWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE79DC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657800277.931.8064751034427625424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc78a7aaaac320dc4c2097fa1f1c1a4fb5acf0e7b78fcf3fc571e23a39307c41
Date: Fri, 24 May 2024 19:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716578002
