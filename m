Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C83BB48
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774916094; cv=none; b=lsJZqtSi+ZpBReRmI9sHymmBHbL1azkXfa8RTokt58nX7bAr2gpGRzJRi7jor9nJX4J8G9jfnam+R0BwC4d8vj9b3iKRaIDaAq90S6C3H1YTaR0nkOxq0ywcnO1hLCO6wSjD5cec2zvKWHNfDeQF5gJ2gW6CJIG/blNhM/OdR3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774916094; c=relaxed/simple;
	bh=adOHARHyUNZRnjd026vR7xMdS9WAVmmUz4WV1J9FmuI=;
	h=To:Subject:From:Message-Id:Date; b=rb4Bam8twZ3N+Vp0EdCa47SMgcx1jWTY5Ah1Kahvzp2Mf8SasPglovzjJj49HImNZweKuwpk8LvjbbOP0e/Dtiz59dZ6SHcPuOQUxy4/ih1Ul0upgPm69Xbyi3lKMa81VVggrXFeaDpFfL8OPB1EzDLGbwXZcG7jeyfAPOlvAo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOxnmrTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOxnmrTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA3C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774916093;
	bh=adOHARHyUNZRnjd026vR7xMdS9WAVmmUz4WV1J9FmuI=;
	h=To:Subject:From:Date:From;
	b=rOxnmrToSkmYAs78HVRGUckIe9sEClFB+I2YnnxdOlVQ+vgr4ftGcb3h8+Ldb0HHf
	 6pqy7rOwumOVv4rXcpJWf6U1LqAawxAkjFQc06mAvd8b7Q/fJaR0S0zTNunlLG1qwE
	 TSQfzqXpDrFWma+xndX6AHyEleyMXTqMNf3PSXFSLmBnaWUAQoNCvegyuxG3XdENLw
	 pMF8hKtnAbOUPYCL9jm4Jqwbh1rPtZdhP5v2PX5ang/KekLngO4kDAjgpbWRSkI7J+
	 DrLPgEgTokSga5Zu6I2qWWv25od8TVOcuZJJg8hiBm00s76gHf6mCDt2eUfLbhwKfe
	 cF52XjXEzRw4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C81061B29
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491609358.20702.4354467420357964824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d3219c62be16b6f23dcc59197e73b624df5e772c4aa820864bdceb2c6694d1
Date: Tue, 31 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774916093
