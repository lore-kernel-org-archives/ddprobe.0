Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181C172602
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765515174; cv=none; b=WVOceGWq/wc+KTZRjipTFS4hCAGpQxnyx2zdnkxxdzE22FnOGuFRmJv/89EQ6136sH+SDl3VTg7OTwLk0kadIpsa+v8FqgGyMo7Uz60FMYQTx3oLDe03WqkK4i2LyPesSIFK+S77LyU9iPxTYEcyhQ8Q8NVf0dM88j1CpRZyOGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765515174; c=relaxed/simple;
	bh=LhSh9fhSIUX+CictUF852c/hphKA42A2XbjSE/IQ8rc=;
	h=To:Subject:From:Message-Id:Date; b=AGrI2pxpcc5WKCcv7s2JylgWtqg5r1kdf9emKnT3VBcm4g7++nZpBhQEdY6e/mzVVlhvkpJWVb4RcwSI4zVBZigXH+S0kLuEPSf47XJk3JMM7vnr9IFFqeQDrM2SHw82ykGc615hcUQ9Dbrjk3zKvxQ0jw7vXoE0IiCfjIrCuD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgVhIwP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgVhIwP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B51C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765515173;
	bh=LhSh9fhSIUX+CictUF852c/hphKA42A2XbjSE/IQ8rc=;
	h=To:Subject:From:Date:From;
	b=hgVhIwP9S4jD1YQ0c/FL6eXeKixmHW5dlI/c44B5qna+yGO3v3GzFml524XCjFRBg
	 2HWYMIjae13IxmVOs1WB0DeGzqf0sgUVbR/gu/h11mtQRA9N6g1Tly4AlWHAQSzMUH
	 eFGll3VReWn9/Iw9IcLs9/4vrWf8cXOV7tKWa6fs6H0GtPy3Kc10mRemhuHdOO4U9b
	 uB1CWnqU9hvnF4GvQoZg7HxhITdAs9NSqhkmUpS7Dgx4kOQm9Q9BFz6I5TzDr3ifEm
	 vyiE8yFG8N7ds+fU3fdO1K2dkIP4HYB7t4BHDdgW2fzP+qyZVSN6rF66VfyrXh1M7x
	 u+hyriTY8dEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2194D4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551517362.3073.3501043981776682400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0067738d3c00533fc26391b23612a8a67101964c1c79668b8989ab3c69c1295b
Date: Fri, 12 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765515173
