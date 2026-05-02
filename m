Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0BC17A305
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777725454; cv=none; b=S7sQVAVxwLkevIuGtx+29FMXqYryuFjVa2D4qSP2te4OMMV8Vl2nDVkmeEzqtaQ0oDkpmk258/83ipfbyENKD9Eon46esMhQh5p8VM1FXdP1NiWEP33vBN5fIEZhdxHT52pH7JLQYJDox7vYLfYWbWkMEsnDgusHQKk2BXX4coQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777725454; c=relaxed/simple;
	bh=Zq2PHg1HzmtQ6J5QgWEInDIRKmppAX+jpn3hStxp6j8=;
	h=To:Subject:From:Message-Id:Date; b=HK6/cCH8yu9NRdFZfQt1baoRgartIvhAturd2SJ3YP9xNriVM5VMqNN2GetZxJJFlA05H0q4JjgCVR6KKVj83fIZk+o+NadqfYcp4FfgxpJhGsPuhxiBkf09lHGVk9IsmONMWmrzATg+CXsDcw1FmVp4CBnGzhnv/Sli0NpayUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFBHYoWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFBHYoWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C168DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777725453;
	bh=Zq2PHg1HzmtQ6J5QgWEInDIRKmppAX+jpn3hStxp6j8=;
	h=To:Subject:From:Date:From;
	b=uFBHYoWZ3NweH1qiOrkZfi1b/gF8r3oujWOa4MrRODi5w0+NxtY+ghoMbSCvHB34m
	 XaBIkHqwza0InZCsz/+KUnxTEloHXwQE7RAgfDHzEXTXFrnjkCYPHUevfwdSeubKC7
	 u4rouT+T3sdisnq8bHzaeQnVklG7wQ55STuHKynlwcqhNzW5UTPY1031JGyVwtDWHD
	 Pci8IBajL9iZzIvdysJGlhFk5V5czEoyWHV/Qh3+Y8CqGWpBvQjfdOoJfo8U8m9FcS
	 SGs/2YspA3uDIMWwM/Vk5F07UxkWroT94KXhbSblccN5fyw50IiHsfq1vS3XSj2mCv
	 jMXEzNWvR62vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1F0CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772545368.5004.8817255194516153980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c1be540ea8d55e112ddbea7b1f6e663c490828955a9e78e0caf3b014621f9e
Date: Sat, 02 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777725453
