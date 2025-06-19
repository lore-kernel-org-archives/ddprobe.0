Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255293085A6
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750309194; cv=none; b=YzaTVLKsuAvs/UK9B123AEgkmrKYezZZ0r0V0Xc3d1qYpr7mstbzqDl7m+HDv6exNqZqLYswvMaFmpP+bl8LC9Q8rEgvNx8dJDlUSYvvPpM2xT2BYaau7TtEFQA9vE3sgaxzzhPq0sYEf1/yefCVr2il57bHqzozb+j2Fb7BNbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750309194; c=relaxed/simple;
	bh=8A/O1sj24TlgWQg9oZ/vOyslxVrDfF3RrWLOTxbF0Io=;
	h=To:Subject:From:Message-Id:Date; b=roTdqVmuS5C4K1dK7ESY/1LCZE4zNIY4kDeY9yspSXucr6YsNVLQwxRG/QUWdsn0seSl+ltzwapqzGoN2+V4JHicHt6OKBtJqSf0Jvukp+CXx5dzfbfjHqfEGdt0YxgTek7Tr3JO1kdzKjhkYAAEPptxfJOH4qp6Qi0ojiyg4rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLjUk5hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLjUk5hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5511C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750309193;
	bh=8A/O1sj24TlgWQg9oZ/vOyslxVrDfF3RrWLOTxbF0Io=;
	h=To:Subject:From:Date:From;
	b=NLjUk5hXXx2nxXfYdec3vhtt62XJFLs3bFBv7La8gE400I7VX/GEIL3rFQ6arqMeC
	 KU6EW1+DJ3ebk7XkknyIt4slXzjvehsveS9MV/j2Nbe5RRVWYu0Udcb4AlNfpm7tZt
	 fRjXRgpM9TKpfAI9jyeDJda+BxFm+FW2MuNW9/Zu0XcslQmPfU34J0ER8VzkLdJNWU
	 kmiP8cNLxM9SWEwpZU99thWPnElORtm6zOtnjxN8G9iVm9TwsgF0toiyxiZQJ6w4Wg
	 ZfRzVGrw5MzeOZElf0V2yRiHOCQwBjaTWls97CYxnN8qFtgf40vA0gAxeITIha6DOc
	 oOIAtCa1VGZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D7BC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030919359.5667.12606762482016344050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9667252ac8a37de445a21d98ecdc8668d9196741bb77ca46a5701ba5344fd1
Date: Thu, 19 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750309193
