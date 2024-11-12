Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A19433C0
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731416754; cv=none; b=EJ2yNi0ZKPlD/pnKq3uxxApBrHfHKrcVIkDU3kumokWRNit7QjxANJfe3m8FzT92BWhuWnkl4pulA1TofOsVdOyUz+42Fkgnhwra7dpcZSGzz8Mz8xEkH2Lh0gxx1RQ+7bTV6exkfLiEmzRoU3TbHwbF4Rr6XAAx9Tnkwv4rMzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731416754; c=relaxed/simple;
	bh=ivKBQAiJwRYXayrkLhTs5FUVZtq568f75Zti6iPMfqk=;
	h=To:Subject:From:Message-Id:Date; b=fdM2BmjpgDLbTSSTbhLD8HQTWdCjCIJgDvHShNTLsYQLTTd84Cq1qSC2+S4Uvv7pW3H82KjV0IHH1UN1dKSN2rPdD6o977XGmCjxYoFmlaaRlU/PLWz3Hd7GI4sSOSXSgexmbBNHDqCQs5NJcQz7a12vahHfCyza91O053kQKoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiu/9XP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiu/9XP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11FAC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731416753;
	bh=ivKBQAiJwRYXayrkLhTs5FUVZtq568f75Zti6iPMfqk=;
	h=To:Subject:From:Date:From;
	b=jiu/9XP4gIZ3/EX748K2SVRREAMo/JumKd7R507izC5GdTr3zYszrtee6shLkvFBi
	 +Yc87KNWSciEnbAgeVpB7nQBR+p4xfU60p+P7yAt1468Z+C3QUGyMKh28QU7oZzKOx
	 nKQkioxsn81YBJ9ovlXvlD6Yw1WtN5W7tCEZFTXGXxGW3UWupi3Rq89VFByrP5460s
	 +NraDH/a2lWD87BFERA2+EfhNO+S0Kknhz1Yb4FA8vuJGtAFizhqx3RfnikQ+F6xnd
	 +O5IepF1QbWy4dXVXQv0VXEuFQcrhq2eM5O6UPI14t5LcyEIEQj5XdJxcRKxGcFH+j
	 8abf7mwElu96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92142D3ABFB
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173141675359.20159.13104780263034921381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fe93e5824d19375b41e9221791189b4f9130cbc4643caca59861401b33545f
Date: Tue, 12 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731416753
