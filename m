Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC73A9624
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768491234; cv=none; b=pK1YYZbq/bzSuoXw86A6IjgtjdP2GZplEZID6j4BDR91ZEVzFuQRktyGoAvMGedraEaUda8rENm7Tgv5Xc8B9BBnC6p7dfYDZVqrPKhlqdaD1kur8DZwS6W59KfrP1ph0xwZmFRrUBT7eFzVk+EDHRxwrzzyiKiEjKZxRXTeDxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768491234; c=relaxed/simple;
	bh=oGqybONo1jFVUyRuXm289op7CRc8ghAfo05/RJQiwiE=;
	h=To:Subject:From:Message-Id:Date; b=sctoQ9g8iee6juFeZ5iSiiT9Ffu8Y/Admafx6KdwFS/2vyzVen7doyceVAz2smrHsdXIDGGEoAMwLW18EMuNQZZALYUesSGy4Cc4No50fysNmVF6J+UUWBcV5St10Y3D+0pKIoFXVDF8nG0mPmvhTosxHn0ArQ67N+QaEjNlwfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEsvUak6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEsvUak6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768491233;
	bh=oGqybONo1jFVUyRuXm289op7CRc8ghAfo05/RJQiwiE=;
	h=To:Subject:From:Date:From;
	b=nEsvUak6rVC0AqIY3++7vT2ceQkRpq1kGQh8sJMrlMpMzzcfdolXOSxnIUBLBkX/S
	 g36Me6AoB703La8wd5j9HCKkoGI66NjtWcmbO+OWE8W5EGbm8s7AwFRpAKKFF4s16G
	 KeGS0zAYP36u3cIc7ithpcbaR1L/sUQhTX6gPnrma68cpu9MZvvZuVUnEyRQNKhogm
	 pDO2xXb09UXZa9cI3lfqkWUWAF2KAvGze6QOXDQRgIeAORpvMgvJRyA20/pQ0Fl8IO
	 l3GS+gfAOkr0o99LxQBAp2XZysllT8S2rCeab3ZDn0Dl8KsDZ2vtwUPV1oPIIF3yBp
	 flfj221qMipLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A54D44C67
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849123359.10336.514197133768154418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48dd0cf211c1e14e8250a3b9a8a80448d94df649ba5cd78541664da1bfa1b8e9
Date: Thu, 15 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768491233
