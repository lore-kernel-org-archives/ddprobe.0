Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047253FD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711495097; cv=none; b=GOhcR/cvrggIComZe86drZf8h2p2b9wbkAdOfLLzOMD+h9KFUx+Zikv8ExBmwORKkY5baL9hmG/9Jc+scT3BUt0GgrhNWX+zBoS43SKzAAkGfAasCqH7ufqlwfL+4B7MU+fGZ+krUPqIjZ7HNVF+SeoHZ+zXVckqLZxteg4KJ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711495097; c=relaxed/simple;
	bh=8Z76P/zPfiN+bAV+v9tpUfM75wHfDrt/qQ9zbZLosks=;
	h=To:Subject:From:Message-Id:Date; b=o0B29bUS0Zrj1WZ1XY16KBb1Y7l8o7Ah5UQZW7toG9YQKfHyqra2a3Q/AGARnaBh5AJAm3FdqpnHbNBe3nuWpzUm7x6EEPIfiTvsCjj1xGtS75vn43OHtExPmVE4HlelbqYP2O8Vv2Hjqaj88Z1cw8j9D8cvhuxxHtShTWglcyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHe6wVsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHe6wVsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE1BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711495096;
	bh=8Z76P/zPfiN+bAV+v9tpUfM75wHfDrt/qQ9zbZLosks=;
	h=To:Subject:From:Date:From;
	b=pHe6wVsOTzrjtsPWuf/Q7+EG+wvV7VYW7Woxzu9/fZZ37jKkrfc7CyzrHvUFlDGEQ
	 1JtKB1st6nbw6O4LCiLlvc03uzYcaHU/rdw6Iqf217K/xjdy8hwMaiHvuVwl5b+KSP
	 1PClGG52uCMlws12M4GnGYAogJj/b4nwGzCPKciIStpBqpT+u57W98Y5Q9Z7I1gckx
	 0d2vyylO11hKaJxzyqyMxf7ZhSiwct4hIh47ym3QYiawxtl4mt3eK3sEx1n2ySx/G/
	 w7d2jbDTl7iybvgi1IHrlQc6pCB6Vx+HYGQVoquXj74KDX03DbsBNFkV8OKfdYyycA
	 dDEkyb4bA/RjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65847C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149509639.8343.6528555203458361430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8081f3c24df86a3628fcd4073501148c96841b415069e56c4d061a4e90df661
Date: Tue, 26 Mar 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711495096
