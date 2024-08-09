Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496C8192B89
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723202154; cv=none; b=FT/rCPgE6jkAW9HtaVBUs17KTVnBs5mSJHFKaN7ZbfnDAOmYRu/BR/lwBzswXi4DwzSIAmYxsgVpeqhDeP/UJMlpE3Lm7/H3agFJ20EcSe1+sFrkkc/SxddzpQk7qMhtsQmQYyEqeQ+4FnEoJdK1tGmK1lnaV+j2nSgLSx+gDfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723202154; c=relaxed/simple;
	bh=UIRN5H4Xa5PF9GvS+BFXhzQB8KXyPYSqAW3tT4jvjXE=;
	h=To:Subject:From:Message-Id:Date; b=k68YbpTy9DllQATzXsiOWkXy+3NKVw6h65U1c06uL+xwtmiYrhwEENbPIV92FAtJXTF+3/b/FdrTvKQZ3ilcpHiCd4LRh9jfMA0wzYmA7NKTUU66HhcWqxfTRrXzfwsP1+0XQc7PJ+HEBucFI28Q23HY0XRu2GBuE3fteSZ5N5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjjChFMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjjChFMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC5C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723202153;
	bh=UIRN5H4Xa5PF9GvS+BFXhzQB8KXyPYSqAW3tT4jvjXE=;
	h=To:Subject:From:Date:From;
	b=AjjChFMFy5SlFT/R/2rjVMKqrSuGfgjh9iLV3guF7LBl8cqInQvaMrZGWXUvFTBsW
	 C4QRznfGrPFKU0q/HyeTTH/TDEnnVN8IoE7ze9TYtJbt2HEnF1t1orVhddheiD5s09
	 1ckCY9Ii/fmxJq/Q4e2Nf2e6Gvx+l9Lnz3w/5gCYSJAdH3kxFj22x4mSPQOi1946my
	 bfbjzLhFnkxjPNyuVqX5KGRHo851zKQZyWP4UN2rAQyc1IX8yWY9xRAaj0aH/5+zFv
	 QcXVhXrcKdL4I9uglBPgqgZxfpmVMZb3+bFZWe1cWR97c6g98BqMF0gb2E5s7plarI
	 BYIT00KphSbaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B65C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320215360.14109.9339801340113827816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0c4c583a8641b0f2500e3b2b6e89f0dcb31ee535d5aa9dc36c4497d9e4a96f
Date: Fri, 09 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723202153
