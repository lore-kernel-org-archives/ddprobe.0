Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098311185
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747619994; cv=none; b=UhUgJzBHvibR788Z9CGLoNls0oeRuEnXJrOblkWO4Ith4lQAyqszzMhWIfFdBekLQNmQxHL+TVcKEwLvbO9ev3mnhCuIKCCIjGFCwaMQvlRK5NSinqXkjgSh5aNh7U9RJSWZBCrbCtZJaDVYRCTeuJte5WIoL6tYdTh5s4qa0SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747619994; c=relaxed/simple;
	bh=3yoqNwneST5c9z/OAkLkPLf+KNrPAoH0ILQpaApESmk=;
	h=To:Subject:From:Message-Id:Date; b=YOe4aGL4gw4QDPVJ5vlTkVKyRR0VoxUZIax+qhYZesDFlu/plCG5ju9drUyPx7MDd2ZvC0tyddelQl8AmVPE6KHRYy6DKRYDUU/Z82zFMUbYiOAXADb55Iji9SEPBZxYeN/M+XTk0ei792xswyWhrfquPZby/0lWngDCvD1K+IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPkZicZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPkZicZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2167C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747619993;
	bh=3yoqNwneST5c9z/OAkLkPLf+KNrPAoH0ILQpaApESmk=;
	h=To:Subject:From:Date:From;
	b=MPkZicZ3hFZffL9Wr0Ixy4N5MedA92WD3UJuCju39hDGqjMVvDJUHUJloDY4KSDJU
	 STO52ysjkoAagMsrDNgsmSUx7ov0a0e2U99tZMoiwO/XrZGn/H+kWULLzvZLP3CxCT
	 PrdMhEAxTspxxAKHFYcbufIePefphgesYZGiNnEYJsvbmB4176bFUiUY2P9cMHRTCx
	 wMF+Y6byGIhY85plDqPtLqKAvteg7aNEACuHiLqXOak3Se8CVB7lI6nxtacxCkvIch
	 OlYd2L/CRhOQf2dXZIp8X8Iff2ehBimgUpndTcwy1VaOkpszm5/XsuWEcw41q6PJiQ
	 097ilhNNah1Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8AC3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761999357.2975.16580301467902463614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72513b5e31b327989aa414f182cad60bc7e1696e9018b12e8838871b7533820e
Date: Mon, 19 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747619993
