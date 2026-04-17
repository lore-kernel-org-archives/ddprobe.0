Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD6237F8D5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776469054; cv=none; b=Y8aEStp8G84VFyYkgzRdnMbZh4o6yFW6RqkdY1fOpFuDAiTw3UbLemrkrTug719bffCrVwUEnmLhLzUTRGjN5p6M8MB4uHVhidS5A25bAkAynRWWdhx1ouueKyIvJlmoexgXcdAP+CdUEnxwj2XSwgmW+phzITUhoik30PG1UpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776469054; c=relaxed/simple;
	bh=2PsX3XpeL7SEQr1RzRvtjbX+T2KWYDxYpPlO9GmAISE=;
	h=To:Subject:From:Message-Id:Date; b=tyjk4uTSQyEqmXNA5frfRUSe+Wn2F3KMid+akXSKGAi3QLGWaf8XmydlP0TtecYiYZKbL2YXKooSFBnre3NootbHNrjf/YON43XFTidWgheKyPVTY9gxdGQRBbyf2e0YexqqXRzOQCAcqd6DlmZ2Po5FYsBte/VZj2lYhzAgKsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deiDL4Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deiDL4Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F81C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776469053;
	bh=2PsX3XpeL7SEQr1RzRvtjbX+T2KWYDxYpPlO9GmAISE=;
	h=To:Subject:From:Date:From;
	b=deiDL4Zz/QRy0THwdr5aaLLRuu0dUAwwyo1P0RJ9y/yNyki60b1w0V5keZjJ5J4sW
	 TPoZUXKDRizPdZWmnBR59UTCvGCp95wuNbNjNAufVj2iJNeYutaJdIl6ZFORIvfMva
	 cfug9MFWhT/y343W/0SXqYFuiq0OgXxATAtYjCJ9xeuDyIBaIyc1Pc4p5FLhm6Ib5/
	 HxHaMMRZS9YMwbHmSJN8BFgfL7/1ewRc5KNPSX4aKzS6NuFG9uCBT0L4WUz8LdRfH7
	 Jq9ueaDs2Nap+eynozpsO0DLyP/+jYiN6loLp/w7aWt0Y89sX3VMBt97mgQVdgqBvC
	 +t2IfV4EbtfQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E7F99C6D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646905368.30980.10899732566421177907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55412e698c008ceb41526be1be4e0b4071c4d33f2da3fb1df6b8b45edcb5c4d
Date: Fri, 17 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776469053
