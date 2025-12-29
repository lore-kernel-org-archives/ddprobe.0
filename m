Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4308320F067
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766997234; cv=none; b=jkhRvltEwJFHsaUOpQS4xdtq5AwDlokwAl4SPUrJrFeHa5+yS+NeDqgyzPQzl1C2MXqqL59EG0KbAHDoZ9wumfYwC+Lmc2Zu/xA0Dqe6SjGCSFhqdUIGpzihL523N7rzfYTrEt0QZwKdmkbePXpnhgBv5ovJW/bXUUZqQG3LqFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766997234; c=relaxed/simple;
	bh=Idjtb3wQ5tF88S6Vl29NaI6NMBx+BcRtIETQdSkToJ0=;
	h=To:Subject:From:Message-Id:Date; b=kdlNu8SB2Hwjwze13AwxO/+rM2bDuJRivnNfrzTx/xtXJeWN/yqe5JWzN8aGuaVvIxFAMkG+XB9lQAk9SQjS7yTmSulTPOBPV3faoMqLj8c1RSzdn7RswkfIfa9o0kMuw5+Tr9cLy8w8/Ovj+aACBC0vqdXnDnNRyDRTKOi0KVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLnQZKy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLnQZKy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF58C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766997233;
	bh=Idjtb3wQ5tF88S6Vl29NaI6NMBx+BcRtIETQdSkToJ0=;
	h=To:Subject:From:Date:From;
	b=eLnQZKy2kNer7fL7l+qT8DCiVJIg3X4cvqA8fEfIe5hSr7m9e2U7bniRXd/HM57CD
	 4rLqjqQFyJVOamU+Bn+5I7vzr6a7IodKoXKJgEzWiaHIz898IvPHDYcP28GotmBodM
	 CJ5hqO/sMSTLixctRfyK2+QuCEPcEOeSyGYnwFJhaTzECDjuo49aT8216eKbeguFzA
	 b1fwy3HyyROuo8XOuN+0ejmg6FcRHGS0EjARg/hGhDt28QNu+uCkA2UO3ZIgikVF6B
	 JOqfcPjZon+rgy4SPMtVO5r3Mz3EzQpZo54TkQM7R6DPdJltCdJ5Y/v6vC2iqQm6Ih
	 2LAkC32kSQKig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E80D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699723360.1567.18052614205580293621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0ac0a4d790b7064939f9c6024b1cea55251c33aac3d9d5347e0274968908af
Date: Mon, 29 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766997233
