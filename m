Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47B1A9FB7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773506094; cv=none; b=JIZGQy5xn1HUcFUzkvt4lben0n4eeNI1U0Wdx7U77lU/qRPcad0UbJUfcPRFQRSOwYvtnoFC4gVd7t5Ocy4mt0hmTKBoA8TO2REV/g2B6ROYC7vhdEMp4RPsCGDqHWtRZR3NOlp8vTm+tavECRF9L2NAdCPe2jOjnYYSF6LaHl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773506094; c=relaxed/simple;
	bh=NiHSnR0wX9cPD2QljahUjQLfM07/5tTqnc7d0W7kGSk=;
	h=To:Subject:From:Message-Id:Date; b=uUdRo87wwN1O1WTtgR1SUjrTmXHoaEKnxFG7q0XQfyecEoPAfqI1xKbaDLcpIH37Lkmv7jT+O1IszC7zDoIgfeFXE6Ay17oCJi5XIaWS5/dDrhax/XoKZF9/vOTd9q3faqi1cY5smQ5NjfdxiNFxPynUnyMoRXPHuQZzFDx++9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qB9hbFcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qB9hbFcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E92C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773506093;
	bh=NiHSnR0wX9cPD2QljahUjQLfM07/5tTqnc7d0W7kGSk=;
	h=To:Subject:From:Date:From;
	b=qB9hbFcgxSSv2NbkfZt5lTyjEs4PCqtlDplXvKXpsna96CxiKGar6CvDuH01TLSqk
	 7tNKCORNj28CBQxongCV1EdzZYlJNfoDRpq6KadUlI7YYvWkrr+G8z7fJiKQULFOgi
	 SA9GsRQuQQJZnVsARTPFSbdDeIkri3hP12TXN3i8Baeu0tGKMzX0KaVQqetu7fMrDT
	 pUal/qrzhFr64nFywMKZR8L+FDtEbKEjgOAShTZb335v3yfLCfJC+j6FkrOcDdprZO
	 XGeoFggpDtKVnSC9qqASZ+bCTZwLSFToOlG0t8C6uEijdhoPFZTXog2mbFlm3+gIQQ
	 Lx1X+C/s/sUew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524510706E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350609357.20640.12582785466731869829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5169ce2ba212a3d2545625143b4fe6987ece006c95117275800bc0a3e22a34
Date: Sat, 14 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773506093
