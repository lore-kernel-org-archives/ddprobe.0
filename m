Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDCC12DD9E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717422923; cv=none; b=PcUJvO9MyhH9UvqFnR4Tp605sacZdPPueFAl/LBqBd1HjBYy8zHn5FvtJbAbrw3lxyYRd6aVFwEZy3uHl/hsy3siEfO7e1p3NmlfFp+LxN9EXUgxxVBWT60lYhP1NhobgTlKI7xHPEpjwkKU7FeQDcH/tO+spuBXS0uylFLHuLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717422923; c=relaxed/simple;
	bh=M/bJ++kjNQJsFROP1tmfaMEJAdMDtKDTsl+jftyW72g=;
	h=To:Subject:From:Message-Id:Date; b=MNXxwpg/D4g3EUEXuUGFI6oM4PFkLdF6oJrWg9Cy24fjdsKRmC3Ha1RQA68hFU+/LyUtjmqDk0gHET284N1TBgYT5ffXFYKao+cIg/NIKDY9qMkgVjL8mQFfPiuTmKNLmuH6pREFW5teImmc8i40MKHlrfxFyp8n/f87aHpwMBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erzyyZyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erzyyZyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2A2C32781
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717422922;
	bh=M/bJ++kjNQJsFROP1tmfaMEJAdMDtKDTsl+jftyW72g=;
	h=To:Subject:From:Date:From;
	b=erzyyZyTw8y3/+muTMIhU14LH9nCnZtVuWN/+uw0YDKF2nDluyXDLt4eswCQdi4su
	 awOBQ3HYxDu9fPGrkCAt8of66ePl64jCXGtUKXZulUMZ20Dea+Y9LFGD9FOXpFk8or
	 4e9JC7vlmhYMnX+Nq0vLNG458iRXZ1KXfZZt9DncygThood+lpC//W8fr9AcOEJACo
	 qAK/rTTYB+QuYsszF2bc4AjHvzjAR/8H3Ux8tXSMSSLsN6cFB+p8wRrziWN8Q75ubq
	 VEYhQgXie7tnsEGCDRR0pWgsJy4y9MK0grK5Eh0hLfc6ySFO3fYuD51RQ3hKuh+VRs
	 8Lb6RObARdO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCCF1C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742292282.12540.11041267361536638163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc669de578c952fc08afdbddda49de8adbaaef3f63a34f2b1d6c46f98f4e722c
Date: Mon, 03 Jun 2024 13:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717422922
