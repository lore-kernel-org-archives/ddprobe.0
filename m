Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD153A8F0
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728273354; cv=none; b=ik/gEHzi8QRs0zV9slEgI4ex2q/rrQ/EHS4QHSurMbc5km3V0F2RnT6sTZUOQ6ahuNF83/2lEgLXqhL25LNhpl/g1MaptEES79Acnha2UPNQ4tGMOgYsP+qP+5ohaWufULx20mteuBFcizzV/mfhh2b5r3R9grjWRsnAMxTv4y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728273354; c=relaxed/simple;
	bh=NWlUYnvCcR8nH7CFdvnTo1kG0JF7HYr2gyRDlT9ugPA=;
	h=To:Subject:From:Message-Id:Date; b=qqZRy53ZQ2raD+Ns+DgsTE21bUQw+KM9x7FFNTx/SBCqhKEOVGp+127fw+dB0dyjl4v/ki2qfKzev9t7519JX9kLRTqdYI5tiV7aZ0iVqA/onHdGA0/BEGStdqZluUYMJ464qqHNviJQ4/+QEtX9MxYR02Q1yMZI5kGd2kY7pU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYJGCUoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYJGCUoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5381C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728273353;
	bh=NWlUYnvCcR8nH7CFdvnTo1kG0JF7HYr2gyRDlT9ugPA=;
	h=To:Subject:From:Date:From;
	b=PYJGCUoT8Oc1AD78qKwNdR87JqlIaIqdQvxGYTHWQI5zca/SlrCD3siA4rLWnaCfM
	 c4WdaFqEIIrqyiJJPkaiNSYT37EC7DFOAT4J291ao7G7LR5vaDWpTlJvYqUTdFqsaM
	 h+KxwQoc9HoUk5BHPr7nOJvao1Nn4LZn0IoHIMmGSJykVIiHl6NrLg20/du/MzqKtc
	 scKx45oWkS6feBOPELzigSXHHuUk4tTsY/NA3tx5dYr+L/XDQJp8XR8WDL3CjcZQwx
	 4q3Lp011+WQVv14W2UpUwq5+oOPiOtt1ejOc7QaKp5BY2JyH44RLkOtfU131nSa2oB
	 JEdyXx964f17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9432DCFB43C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827335359.8007.14649950132928197801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa6d05a69b5be0c6fad8ab923d7aa8190b1c36b809bb07ec94d6a81c9b8e95e
Date: Mon, 07 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728273353
