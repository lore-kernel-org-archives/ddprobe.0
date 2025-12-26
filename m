Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B08221FF3B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766781835; cv=none; b=L4w3K5roNEG0MP+gd+Q8skrQecksZ/J5C8muDJ+1wvLORfuFgdurjqUvMkh16B2AekKfYvCn6WEgoEis4bChYAOfdgsmue3hwUyk/swGYeCZF0sq0TIL8zvtEBuv/SjRuxTSZqMcBkpBPtVN61RWnBi2AxtKHql8kArp/2UImm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766781835; c=relaxed/simple;
	bh=VNhH810E2B25QV63QyJmzP2DqzyBnMLvj5lwpTHQ9pw=;
	h=To:Subject:From:Message-Id:Date; b=EWNAyPJYybAzPf6CWX2wJhqomqHEtcgl7lN/RY+uPzzPEIu0x7mMJV12RGZUjg99YxJYXWirdsEnGxVupICM4xrK8XtAeL0hHd7V5Eax8VC+gpKbs03ZcmcwDjmw/rXS4QIIReJLMGGSVr1UrzqDEbAbN6i29LgIxBbTxaAKNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM/qij/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM/qij/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8096C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766781834;
	bh=VNhH810E2B25QV63QyJmzP2DqzyBnMLvj5lwpTHQ9pw=;
	h=To:Subject:From:Date:From;
	b=WM/qij/6h01u3yaHm6PvLQHLM26LG/f0Z4ke/Zurdcfn02s5f4uRbVBKmVduv8mM4
	 O0a6JONkxWzsSVGIjVP5mIEfWnnN9yCKm1EHoPBAA9LxjufqnR6QGwPqmI1vyGEkP4
	 8rE8zEUuBQ1dC+Sjsi1z8n8Kpr8eg8Xml2THEbfe3DjWPYuayC4uSc5y8CANcgfdXh
	 9lXTxDpEpPjPQVjdXvGOjJrWnUpsNFXI3ejxi0EsIs/82LTcwW3IGHeBFr7PhFdtBn
	 JinFVa+0W5OyDluWq1KjbQ3N76r/R6kQsIeDGvhj7OkPRSMdPJXBV/UKOI/M7t2bAT
	 hEYs3GPC7TzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93861E8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678183358.26723.14573601898086079730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc839e1d494289c9e3dd7aeaa8e7459054794dcea4d91a878353f6f059d6771
Date: Fri, 26 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766781833
