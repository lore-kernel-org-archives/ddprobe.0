Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341421B4F0A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750052394; cv=none; b=RRIBoDB4SfDEvyn5u5QchgjdXcszpFlhotmOPTr39J7OqpwRORuqO8AaIQDwWzNMua6JAmAOWdT5LcMktd4drfaTtreV+uFHR1Arb+KD8q0Ye15l7LZRe6+bzmHLbYL2B4AnW/srhm4m7emg5Jdh9tEaRcOFa4uSmdLpRkxtZSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750052394; c=relaxed/simple;
	bh=g+iCFYCrKawKcQJdb/5SQYir68cJ3qboyb8ZXziHbGY=;
	h=To:Subject:From:Message-Id:Date; b=CHOkKjLRVgAfWX/HVpi/zJ7BbnH5dCdUJQAeScKV0NajfSiBn9HBDNRJ9gQNUDg/jUQYzlVJaZ+pZxFqtHkt8MLUY6lurt3bstsSIGtGKQWBlOAZe8Uo352S+9tBQdmA8en3OophlQlb0AI3Qdjlv5DsXzIvEQiFGKfkL9iyOo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTos+gjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTos+gjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AD9C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750052393;
	bh=g+iCFYCrKawKcQJdb/5SQYir68cJ3qboyb8ZXziHbGY=;
	h=To:Subject:From:Date:From;
	b=VTos+gjMHOIyvNyQNS9cdrs5rwB3Z1dEtkdEDvIjZcE3FP4GRDWBTq44ihRNSmgWk
	 qwdTmw09mrbebHL1rSvIYUpsy1Ww3Z0sfq43cvZIk/Huuoz0oYK5sGKMkcmCYadUd+
	 iulSu3HpKrGFmJK34pFsRaou7Q7L6onLGyqN8pYASa2Bq72LBSZTG63PigMdRW5bYc
	 yAMvyUsKAv3OrDRlUuz8vQDoR4ccB/naPoiRf9LrNDHwrvbMD0inTTG806YqhE8sss
	 BWyugoiNQFW7cN3YbWWVsImjzdk88jRH3yi6I/S+PWQ+cXRCqa6+M3bPWxxf4KBWMh
	 LZwnXmvmGfYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190AC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005239358.11038.9301248461204087701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b7e0453d69612190a3939fe53ed148d3567bd54c3d5cc181aa82f882372fa5
Date: Mon, 16 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750052393
