Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF571F3BA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760189994; cv=none; b=BOkRnZdXyeh4J0q2JYzHAmwqgF6YzO/GYLIIOEPuZi7OlUqrJCv+/QIjdEO4OZwLczPr3rfjA/HLImzFRtsvnzRA0gXXgorsYWIm6F0OXkJl2uioGvMRiPvsbmIQB+6tXa2LpE3wvnTdmis1ppLo8XNut7JB9QDIpeg+WS4VHcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760189994; c=relaxed/simple;
	bh=Z9sVMO4c0CX/HvnB3FJFl4xQUIU+7I5B7hQyeVaKeIw=;
	h=To:Subject:From:Message-Id:Date; b=ach3gNVuYXJXWm0mF9mO1WMgC+/pSSUaNXpj2QmcvUcwILyXOj2Iv0gKP0TXH/dre8gb6WGNanH6YrUJx3Q+99jzfLzuH/W9sCfk8Pn7WbqYEQrXvzz20Ely3MmNDyK5mxi7+qRWQQRGtVbYbMXm1yzfgu4WplaLNh5SB15dDmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU0dt1p0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU0dt1p0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C2C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760189993;
	bh=Z9sVMO4c0CX/HvnB3FJFl4xQUIU+7I5B7hQyeVaKeIw=;
	h=To:Subject:From:Date:From;
	b=FU0dt1p0IC9F3MtqsQW6p5Z+OwEHUYPR8qeBFCHP3gdkdnNbbltD0pc1HJTN7i98t
	 5wfCzVeUWm7wYzeD3guj2KfGuUEhYzjT2w+Btl0TbeJe1GkJjPGIXQZfOAZlKnFT00
	 QOatHQGm1mroH1hBqRBTLgOpWHLdZkLHUb53hBWzDdTGXLWif3Jxj8sZFKuvBoh+sl
	 8BQgCxYpI5wqdQeq+WJf/C4UZmtN4NKPXBxe7ba6zESjU44IMaNLeSmCn/GGU5wadC
	 97WcrnymorhE3BUTXYmv5Z4NHgyCqJYtoJ71OcbnO/fuZAQ4BgR6bfWozHlibtG2Ah
	 0eBUBx+gxMo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE2CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018999358.30845.3248809351152130233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545826d4b194b97e68dba142a9851fde0a39683a314c5bb28e2fd9a14b809bb8
Date: Sat, 11 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760189993
