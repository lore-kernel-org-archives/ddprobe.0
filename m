Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6457D17E912
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716854063; cv=none; b=M2xKXJgZ/+hgdBzZBDiyp4av5S7mcsPPjZ2PCoGv/JJI8r35Z2rsHmS5VD/RNu0kCc/j6GsDE1KhkFndNwvPSI0YBQejw92k9O+nhEm42VQl85siwTMzZ77tDOeCYEoRaWg2P0AFl5BHJO3R1uDM3WjsXY+keXCIGfpSfPkG2zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716854063; c=relaxed/simple;
	bh=c3oC8/Snocr3sotags4zIz2rqKX4EBGoB5vnlrn7pps=;
	h=To:Subject:From:Message-Id:Date; b=TeV/swNyzXm+yYFSR1P8oT1YqK0+aATD8YSb7iYIPe6AaD9UEHx1wgsty8ZyPxEudxanoOXc4n9lra8+608ecQC1yOmnNXj1moLv6NtoggsZWP1HS8T2e8TAQ8LtYhhTQPmBz2zpZMFk5t7OKIpYD2OH+dZ2Ge3JOGlAlU8mdyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uex8dE3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uex8dE3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8106C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716854062;
	bh=c3oC8/Snocr3sotags4zIz2rqKX4EBGoB5vnlrn7pps=;
	h=To:Subject:From:Date:From;
	b=uex8dE3cPGXV4DxYA4pGMnL45kxBjr+TitpbiLdPF3xmDHQ5ykg9XJd2BzU03heq+
	 xkvSmdqL0JW5CeBrCn5jQ9lAa+qmN1CBp5WU5rmxLOB33pazfQR+eDYr4yJYD8SR6M
	 MAnc1HuJiRH6CjnERwIBeZjvrkksYcvii6Xuse0ersyV4B5WxE7/x4cSwh469HRxRN
	 7rsWLyBJTL+7lpTtTkIkJMJ1aPXpayWON4yxPqBeZfwhYK4YX69AtougLWJTZ+/1Z/
	 lLZRmfglkjoKn30D0M9OR/hhqxE4jTEaQz36RgBdTSnWyIVHGH9XGsVkP+ZO1OhuBB
	 ClvDLQh4y1erQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21CCC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685406275.31987.15843269696724400091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a0df34d11233135393487b1a6c269c5e71e5200a5edd1be87f59d46505c6dd
Date: Mon, 27 May 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716854062
