Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396802FD1AA
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775112334; cv=none; b=VYqKbLqunlZewYV5r7GXbtShYrcIOmKpCNQwvETSRgmjHpki072Bx5xiuggXrdVCS35IpkgBiNmH44TWBllJr3roSmAqBo239brDh1NSfcbtW94Z16V5c06vQaeeuflm6GSAbpcY7GewrjKx8M8vEQqxlyWWkFbEXaeVoPup5n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775112334; c=relaxed/simple;
	bh=At+exRYxrx4Eid8HP2nfwm76yGf/LVVe3XJVhOZ0Pqo=;
	h=To:Subject:From:Message-Id:Date; b=JMTJIFo63J59JJdRSRBxROV7706O7+uEwpX69FOyaw52VCfECJKCmaHhE2TQH3H9YUx7Dvt7wT/Ofijy7EaJNfXiMoyEZ16kDQfz4elXYMtwFFxYQIYnBUigGDJ8q7GZpx7tbwf65FZk7vc7yIjA09AHccXyJipBBjfvIT1Tcnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAAZakIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAAZakIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47B5C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775112333;
	bh=At+exRYxrx4Eid8HP2nfwm76yGf/LVVe3XJVhOZ0Pqo=;
	h=To:Subject:From:Date:From;
	b=rAAZakIEPG3B9iP8YZdW4KrkY7wLjzLNOTde9d6BQHcWojj8Dm/LSiNd8TtiesxL7
	 tR9Pz1OHdJEpU1SCYj07Ng4IsdMp25sa9JVZlZAEWImOdpZH9AtiJoeIJOaqT9kA7V
	 otIlw8CUgGHOPjC5VTwfTGnbXLMJurP7X7+xGfOIRrxH1ueV5x04Sz/zlkodph1i9Z
	 1TXGj4w20TlngOAF0O/8X+1XjCiC5JEJKuG2Ug0g5l1wOSxjl3CqG/N8sfBCQ1rHym
	 PB20w+DT9KUG7EAMR+dp4cTOGqhYknE/EJ5Dbz1+TA7WvoFVVJO7xwbtvbF7lItd9G
	 U2JtsbZi/JrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14CFCC6B03
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511233369.27680.6875533291138284687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d11e7dd087a8a68371274f73edf7409fe7dcc12c7f96b5f8f64e629167b86f
Date: Thu, 02 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775112333
