Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6AE1C5F1B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791428434; cv=none; b=VpHAMpWZ23+Rw3B1QtfcvdNpwzA2IReN9w4KXr+GlhZiEQVsjYaHNR6S0vHMXSfO/WkBITAVYdWDdi9sbaTZYFxqaoUkEbw4pCCs4UqCoxENCUuLHK9Xvk4uwifjOQomsoLmrlVTwT7l4qTxcSH1zi7EVP45vt70N1mTxKii4nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791428434; c=relaxed/simple;
	bh=ciWJbpcc/uCslqSz4d/P6POGV8jvMS6P66rUvEz6fLA=;
	h=To:Subject:From:Message-Id:Date; b=iVOuGupesRrr/4eJCLQKEKmMnrP7iCMyt5JJgBWvBBLpaZnm/4W/NK/nW2R3UUNtzy9XymWArKCRBBqqP6C7Z2QvxdNjfiDAt1vzkZAq0B8d1UeKD7N9dKuER6/ONacmADxI7+s0Okz/UFk1LwoSa//dmt15XJm2IkzD9kZ0xRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmV690cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmV690cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48E2C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791428433;
	bh=ciWJbpcc/uCslqSz4d/P6POGV8jvMS6P66rUvEz6fLA=;
	h=To:Subject:From:Date:From;
	b=nmV690cQklI4XDH4I7HHjxqyuxT8OxdjdrhWKSa+de3PlG8Q+IxUWLThyEpOHIlVu
	 FT0GhazhNXdddAitUvNTDHC4rVqqmxD/NxZxnbXMgOjsUXpIxTzH8+lhUwJ9ebNRrt
	 if9yVOglgkenaXr2kOueQA95tbW4Ae1u18Lqqy0g3mjl3PNy8Uw72FD8Zhc4VMAar8
	 s+lZWoRZx1DBzC5PiWdd9tUNVMbMnHe907eGg+J8ASjq3rhOqddo62OSxJYk038l9F
	 r3/HvbHHJiV/QgE/SfVpgoYm7EnQ+sZ1m+Wjq5I3o7arBsSEyf1TbJ5D6d4fiLIK87
	 IqISd7n26fZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF11CA6004
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142843368.2623.16267848661453697498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b957e605019f12a3cabfa6d737ceee2a71893d17730f3884ebabfbd58823ddea
Date: Thu, 08 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791428433
