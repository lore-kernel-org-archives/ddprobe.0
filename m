Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33F77FBC4
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708531697; cv=none; b=tvqoq/gO+OhbOA5G/CL+XRP8uBljExVhs1jwWKl6GQ3rtOgMShwS2v8GZHDr8u2kbkloM/Ib9UFRVulGtXmvL1/bLMG3iyAogZKeKn2xmaEEHzrtA7jryxiXva+faR/TVZNdTxMoufKKs8EwKuSsRxz/He6xHIKSeb7yY5OI1BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708531697; c=relaxed/simple;
	bh=l8bYNsAw+10SGEgovuiKGCegQ7NChkU/uUSbGXqbG68=;
	h=To:Subject:From:Message-Id:Date; b=oCN15D2CW2NGEi16sZ3nmaSqAMVm7+M22UiUnndpn7OixHA6a9Ebqa0+d/NFzLIp6vPWhpZbYdgNvryr1nMyJWu1hI9J92bf1akGgGqQ4I3KVtYpcnApoVuDxJTsXUtRxWYoMrDcmE5S6TcE0BZyXZ1cuhSipd56hWvIfSYHKcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nt/etIIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nt/etIIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879ABC433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708531696;
	bh=l8bYNsAw+10SGEgovuiKGCegQ7NChkU/uUSbGXqbG68=;
	h=To:Subject:From:Date:From;
	b=nt/etIIo0E2x+qmAMVxQHKiUXNyJ23s07/tgnJCAhGOKwdpHTxv6WAp1OYQwlhphh
	 IAjlRjAQIpEzdHO1YxyXGYu6PoK/UdZ7aFRwd1zHk0/DvMQqrCsNZG0lY8rQYsdGsh
	 utOFxx7n81B9xgCcRhcwxMxFLCDJhsVfooyaAScOO//oR6AWL94JcrLXG8FzOkYnqy
	 CKm37tfRjJkZtc+Bsv3mx/Y4LrbUmqMO0uX5xzSL/xFkgT4KqpKGZDDiB+W50O67n/
	 ekxW630EnQvbPeWcBbi98HT1Ya8qeuTEnVrQAqniwI59EulczjuhetikkbCHZhgNOC
	 SmNG4qoSGveSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685CFC48BEB
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170853169640.18140.13146295895456682239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef26bc1d1b04850835366c0ff40f5927138aa9724ff4cb085527d416c10e5bb6
Date: Wed, 21 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708531696
