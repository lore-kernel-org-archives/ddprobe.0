Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F9A1474CC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755172195; cv=none; b=pU1CXdTXgIZxB3qpWJYvcrIGWx61SqqW4dqtXpQvugD14fzLvs9cwGwuPS3TNMDPgmweDDor/cEC8cxWIhHjaNlT8353uznd7c9C1ZwDi/qG1VO9ok44RkOAuZ4Yl6STltQouiwS06ijYf08+bB0ziao1Bd7UeUGDk5/lxwM6zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755172195; c=relaxed/simple;
	bh=1WNvGgLzI3yp0c48FvnwXnn4bfroUdpubPsfngtQ+kY=;
	h=To:Subject:From:Message-Id:Date; b=LU6LILkgyLB4EvZvczUbS6R795vK9PJ3qbZoB+s4XFJgMQ/9ujlJJjVbHyLBlmzOP5TaFgoJwFJW0i6zfz+RMiRkgM53YqzLrZlyHiwzy5C5qnI1jYYD2X/4Puy1euJttnmVqlc8iZ1nrlEPbrlYmVfNHcUk2ztdz3GKVNBvfUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZNR7PTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZNR7PTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755172193;
	bh=1WNvGgLzI3yp0c48FvnwXnn4bfroUdpubPsfngtQ+kY=;
	h=To:Subject:From:Date:From;
	b=kZNR7PTgqYUJbANwSNSle/K9oj8Hchs2CDT1J33y0+DYNwQafGvDMW+yg4Jw4NSGU
	 X3jZyTlc+6axszdyXI96XwQ7MYdU4+xiIGXI+RDZydZ2soRT9eiiFlLzPDpRuKV51J
	 S7sTt3RHa0umdO6SDcekOBXVlKD9NewD/Qjv/fP1u8STY3IDKgMOhB2Y5Sk+Me43bu
	 j0LNqIq1W56BESE1+0ar5Af6in1IkV8YV1yhbjfLJJ8NKZ2qHEVyXmge+2JBOijCQP
	 VZaxzS+sqYLGY+Sal3jhF5bKqY9O1At5fOMT/mrtV4XlMzHXVzDYHUTHDbBM9iZjSO
	 san4iDKpGXYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D7CA0EE8
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517219358.23680.9309419873325039199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62998806af007526c54e82146f798a259c05fcf1daec1d5fb26227d48694e5c
Date: Thu, 14 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755172193
