Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB002D978C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773084293; cv=none; b=HEuxvc+Xc2d89SgxV67rhLNIUrgpekvp1z2ERpdNibbzxzgW4g41dXhQuW8gyt+AxnZ2m7O1Mv1wkM5pCdafegH6p8tqZzxnOvVm7M7eiRDKW2yH24iLerzUiu55jt/tKPN1aqAUA9HqWdIUNGDQzvlrcTOs9Rhi3heZl0uGNGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773084293; c=relaxed/simple;
	bh=5nGWHIygOwdqAHxLKAwJXdRMmS0aDbgK9pE5SFP75jk=;
	h=To:Subject:From:Message-Id:Date; b=ap8jBb1PIMukI1vwRfIrzUR5nP0OMSudFzXtgieJvCgxXavT4Ddgo7Oq1b7q3+zYwQYi5RB+bIxpB8ELuXGFjJxb2mekzC//xlzjxDewXSN99Lf8xcoUHfAvlvwgD5pgu+ljzyqWWhlGIFMw8SDE9LID7MMmOn9ZXSwLgjlhmS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plCcQj+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plCcQj+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5011C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773084293;
	bh=5nGWHIygOwdqAHxLKAwJXdRMmS0aDbgK9pE5SFP75jk=;
	h=To:Subject:From:Date:From;
	b=plCcQj+oMX7uKSHnb7MMJMlgwA7hAfBNcYxlSCCueHd09Ug+kX0GmUWc8SM4JvD5S
	 dOul6FCdYJNQl7PJ4EDeW/wMrNnEeohenEoZ/pDuGP71OWcUNQ/GL11/7XSW7878xW
	 Xcb6nR7lOBIFcHUl3pNZnJyF2pBgb5v2s2b0dN3ge/0CPBorU6omFZeVQKAvjtBAAj
	 tlxsznL/T7M9K/L2Wr7xFjzKO6xx24cup9IrBkYPYXy9tNnar/FiGnAqxSAIB0tc6r
	 6w45xj5M4SuKopi12zVM5+dneuHWmh7E3XNYGdPq0lVgJqe0++7VskBsb6e3ElVwzR
	 3GQa3ufRNbDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92396FCA17B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308429359.29688.2739326633367774869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d40c6000a0ee02e26d58a23b81465763f957aa2df286c7eb295989844a9516f
Date: Mon, 09 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773084293
