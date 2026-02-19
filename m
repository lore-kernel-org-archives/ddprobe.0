Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B85D29A312
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771476294; cv=none; b=qBQsInll+byr1ijjPjsKdu0i9iW5FYdZpt/qWEb4W5zzfmBRaWcflEIa06/7ODedCoz4JORbg4C8+hdO3CpUQTi5oiMzqMtZcJARNkqb+svOF1LofJKokpwUAI1H/nIDuBa1q+WmgTIsnwtRfPcP/ylzcLpMtlXdit0rSev8NcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771476294; c=relaxed/simple;
	bh=uXeymGw237jXG3BwjRPS/m/AuvOpcOgWie9296aWL3s=;
	h=To:Subject:From:Message-Id:Date; b=NCsiWGyJiYfLOXNa4I2G69t6gKw/95s6laa6DFJgDdqkS8rVfssmHZO9yfYZwT3kvtnJ1dvJcch5vHCALUCnoAom3e54jr6G2WGl+DXhHv6aPk4ZMwcbjftBES+nS76M3OzqNQq3FfNeNRQLPYzB+3nFJaDEsJytM3I410Mvj0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOe7nnNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOe7nnNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACFEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771476293;
	bh=uXeymGw237jXG3BwjRPS/m/AuvOpcOgWie9296aWL3s=;
	h=To:Subject:From:Date:From;
	b=pOe7nnNShGL9RzrE47fAJvVkZQKy1OfVtdG7f9UQuatNZkoHAj49/HYbEgtY9yqro
	 BdvlzEXl4HdFZP2rvnubHnZueZBL5+KyikysuyZ6fsoTLi64pPhwzz+EbeMxqXr5iY
	 rUW0H+cxS/WXb/fFcjV91ItJcPNCPto8PXVpWryoiytkZZVK653gumgv5suFjxAuyT
	 xBK9Ut3HmobqBZTJxY3nosJglzTvWrsZWWCHl/YcCWXN/Xab7u5uSYW0bmfA+upN88
	 9jHhxUTpP56GbtQkGFE2gz5NMjbgKcZfhKd+uC6d3G9Q/Q+LV0owwF0G4t1QStlq5n
	 d4gnedjnIUn6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94130E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147629359.24624.6800509497992590727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98093a62d57c1f56423483c797c341f6988efa3691e4f55ef3acba828baabfa
Date: Thu, 19 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771476293
