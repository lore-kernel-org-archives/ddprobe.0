Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C89D35292A
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789508434; cv=none; b=FTUS1PFUaTdTZmATy/CJ3+qf7hCujAMtCbLh2j6/kqkKhhWRxG2LcaGKZ0s0tfhWH1jiY7Ab0WhAMUa6toL8RpzisQO4hnCv2gv0uzO48vPJA6nfKjuR1uf3kTY/U4h1c7qTvER3kseqJVA5HUXXgcmhE6UJktjDLHkGrhSCglM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789508434; c=relaxed/simple;
	bh=Tgt7Vit/vmA/LDzNLCSa0ulmnXHmppBhRNGbW7HfN/s=;
	h=To:Subject:From:Message-Id:Date; b=Tdcb38JtzGCt20oIewb4IbKgAC0eBsQ9Tf/T+62O2ynol1G3lM0XsFIPKZoyah1LhCOEvc12EL189ye4y1mwGHuiPx3nKX9oe3C3MrnuVGb18J9xvtymBIGY0J+NKjET8XtkVFtJmQPfgxmSjKeUUI9BLjEV2bwJV0UhueR316s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A26Eprys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A26Eprys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD460C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789508433;
	bh=Tgt7Vit/vmA/LDzNLCSa0ulmnXHmppBhRNGbW7HfN/s=;
	h=To:Subject:From:Date:From;
	b=A26EprysyXHcXaUhDcyvh9p2LrE83ThzXbwRJh9ag9jVUet6rYyFCNOawpQYOfFDN
	 RnypCKhz8wxvmM5l1zfF9B+NxyO99korU0HbtCL+MQ5U/ty+7EdagBltsQt07OAL7d
	 YLktlhGTNwHHHSjBTiJRUEzRGrE6KM9MmjSHUE9OD5k86+aJKGYrG4Y55yNwRG3W7/
	 JDnRVC0ItxXG60KMVVslA7IwiV1PCudYes8Zkgn0jSVJqPD3MmcIA4/vJmK/E29mA0
	 kB3djbKyEoa9BC1UDZ5EnZEOojp6Uo820bKl+Wr9OnQ/QidGckQc5mGR7RPbERtbSp
	 Cx8Qcuar8A0ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC484C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950843368.23328.10118230637007875631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9814b6f089e55b329f22b9b7c319bbbafe4a0841f0bb90ec51d0652f51ef5fd6
Date: Tue, 15 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789508433
