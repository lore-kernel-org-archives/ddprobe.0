Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4067A38DD8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876023; cv=none; b=av5i8UV5yfc0ko3xWQKPNND3Q4916/CWkrOukBm9goXNF6RWYgv/L/ebe4P/yvmlfymmfa2fmqYWEpSbUpumrklAF4KI+8QdFV4gjDZUIxllggkjGOFoE2tOhmXx2bTYXJ2eGfXdXUhLCtHw5zGhWzf3vrTtAoi2xrck+2NKoaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876023; c=relaxed/simple;
	bh=34VgByQdILwYakZjvQ+AX28oDv/BKajGzd4+5+9967Y=;
	h=To:Subject:From:Message-Id:Date; b=lK/qxKnw+o9jHHCdOiqvR9vBbAt8DbEl7OViv1nrzhEchHFcJcH9Ewmz+n5yAd9Yh1u4IjmMq3VnXq7A5kSU26FYCoC4VYnKZ2uMlZi/DQ3bMkB6gyQzSJ8aXJkJanXApFo4gwNqCGckj1dgtOTuvrZyJFCGmsh/wMmLbqOK44k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf64bT4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf64bT4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F2AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713876022;
	bh=34VgByQdILwYakZjvQ+AX28oDv/BKajGzd4+5+9967Y=;
	h=To:Subject:From:Date:From;
	b=sf64bT4UrFfWNnNMcQGSpQVIoTZ+1NmNkq+0b860r892g6kZk8MaR2ycUAL4RD7ib
	 96EddCEOB7xy1haaKN7joFiinnPE0n91C/hxc6rQkYSkx3V57e7EhmxGftaYQr1KMO
	 kzT2sKjoVt/m6TYUNp3HiYgRnP+KQjszXHhlJBN10Wf2ZPe9iWO1wVnwmt+Dc9IBrq
	 ZvIoHrd0es51HJ4zpm+ipGHwME31+W+PO+9+ZQqtjb9JEx3plkPVfCFT2tTdPwQZv0
	 Z2l+Y/z7p7kKIojUlZKIPnF2A4FAb3hZoAjOUO5sB6XFmB/dvwzwqtUHPwA1xpZIWn
	 jDeUKFyCiQezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C390AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387602279.3907.18408941830450984009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ae4480db67f1c73bef22c37a4a6bb3c5b5d96f273a27ea6b9cce57febf0e64
Date: Tue, 23 Apr 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713876022
