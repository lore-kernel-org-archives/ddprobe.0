Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510AB361974
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784915434; cv=none; b=mgtU+Cy0gLDlEt2OzamVfXpI0kOuovZfpCX+D9nfsU7cEbsMwtXlouUI/2ZdoE+DJqbuv5nqUt1VTM4D6bShyIyVyf7NJ9f72wWDJO9rIDCFpSaGFtuDR9rinI/dl8n/QHZq5oAz9faALGqsQLaGcksjxuBoPDIC0LrGj7/Ept4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784915434; c=relaxed/simple;
	bh=VuiT/qvxv4docYOrkTARyS4PtS+vNCfMJcf7+s3moT0=;
	h=To:Subject:From:Message-Id:Date; b=Lu9zwhOgHL6cQ0L9qHAMa3sr3pO632F5Kq7ImUUw5vkxXEJTLCDXwAhSOvjwSQ/LlgkRLNCxSrcXrHUdySPtqIFUmV6e99hK9PqjX+pQ1sF46iULhUcFf9TwrG1akHDD4KtSbPe0J6rHAgTKZ9OcyLtSGpLqX3Ppp9+J2yBKWmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrFPpc/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrFPpc/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D23C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784915433;
	bh=VuiT/qvxv4docYOrkTARyS4PtS+vNCfMJcf7+s3moT0=;
	h=To:Subject:From:Date:From;
	b=lrFPpc/tIjTnbRrtXHHqQ8MSu5lzYEOMiKQRQ15w/zPkLxyJQOPWRNiHtdoU1gbJm
	 bCKhmkqd4n3M2YHJYr+gjX92bCWNsda18DHu3jfrwvwEKxkrwR9IFcJqDxbfqV1Y5e
	 R1naTTO5XkUaziSRclWuSdPsILfFpXLLcU0/ps2N0tNqVKJ3r2iijDxHGcizvAheXS
	 sJRG+udd8NF78bz85sX/l4nbQoZE1660JoHFtaXVk6/Q64OlUaAuGTsIbdoSyZZkuQ
	 ku0qn27vVlZWxctSGlFtS43GveNDZc+yuIL3+Yw9vL598waW5L/OC72njUb2L4670s
	 Ztto/seHwwPBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A873EC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491543368.31845.754689386761340070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d008ca5dc5e3b5eb557ab31cae2a4e3e3d31dcf88bdc4bc8d63f5e044de773
Date: Fri, 24 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784915433
