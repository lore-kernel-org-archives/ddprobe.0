Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B9D19644B
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743979795; cv=none; b=Ri+8ZzpUkjiRY0fGbCMBQldhlnrz9gVtMl7M+TJ3Uhe6DHuNvoXTx4GaXYHvJeQOJBvLhA9hiFWI3UdZ6cpDgy61kFo6O3763JmsgCAV/pcO7yz7nITd2vMVRYPTmYwH3DjSApADI3BKjIQ/9+LVVgRZAKsA5guKsWktYQa8kHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743979795; c=relaxed/simple;
	bh=DWKGPkdtOVT9P2OpPr4b9S/b0eolc3oMB/8y8xWwi1s=;
	h=To:Subject:From:Message-Id:Date; b=DVPQvMAeS0DO3TnUGs2ylp1VKykQdccK1ox6rZ7CF8bPq1UyKhAi2gjNnT/bAzpBZYrTBdW6LJz3oUkEtZb2YmuEp0QyO2Pm/CcK3pmzegiD0ZX5rBbsl8cNW9puJvQzO8oao9fcqQCAaJQJGmc2imfDh5vt99sVOz1RHiL77kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIskdRVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIskdRVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E93C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743979793;
	bh=DWKGPkdtOVT9P2OpPr4b9S/b0eolc3oMB/8y8xWwi1s=;
	h=To:Subject:From:Date:From;
	b=bIskdRVIHHUOMS6E03Cedmssw5ipdPpf68E9ptnseOOnvcT/rniF1oqA+AKA/zh4A
	 COShGwjMhgNFApwcZSkuaQJON4JhpUEmrwQ9t5vMkMLp9RUFB+Fu8cLVm0MM4H4Zi9
	 fH93CjKSSj2gOVX3nae1zzc5qwDObmwo/6ARlS0p+cncMKUvvFToLtr3TmzFkI6MTN
	 j+OnmQxVDJ/M7eBtiPY60N33M8CHyYD0ddHQwEhhnTH1dzeW3QKeortOBJPQPHmHc7
	 wuOywW9HHTKVxhitWclR6BfeqPcedonHDN+3ujvF7A2K+OEpDb0BJ2aXGi0+cubpS/
	 C9856hR85Xo+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FDC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397979360.3299.1876027501059441665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8eb4bb46e6fa5d354a3abf8ef6e919e417a10b69edb35b97e1239069f31d986
Date: Sun, 06 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743979793
