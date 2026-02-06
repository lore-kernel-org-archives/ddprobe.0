Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8927D77D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770413634; cv=none; b=c9myPg6ujJ0C/CTbvXtkwpAEHqQwAZz2zRIE1PELYAQBCYV5EbQUKo8kxudG0WGDizpyOhttdD3E98REcvRRtIMtXbU009i0kdEFjpgYwuY3jdTVmZ5/8Wq1m1eE7InNzwqiBtHtTr5D6R4y+sa87YMHTdhDNZ/2eTDV1KD+HBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770413634; c=relaxed/simple;
	bh=bezp5ixcUhDmObGzxYGt7Meue8cL1pVguViEOuXC8Gg=;
	h=To:Subject:From:Message-Id:Date; b=YFSYefg4hYwahgDVhseyIAXY8lK0T07TMubgsX7W3xM+oB4QD7ANeMRgNQ0l60Vj3mVbXKBtFdTAvfzbCxL0zJ38w3EzaLFN9+5wih4H8YOuSMUsyHm56T6bCwIgb4Jj7Ls/sEgPrG/sj+qIjq+E6fW+/l1ZPlxI4jCHIo/5q+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdhygytS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdhygytS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD774C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770413633;
	bh=bezp5ixcUhDmObGzxYGt7Meue8cL1pVguViEOuXC8Gg=;
	h=To:Subject:From:Date:From;
	b=VdhygytSM27NvhBJSQPtQpcCU0A6pX8jnzx3rS14JeUR8M7dfhDc6obqGzMKw4VZy
	 ucf8RJD94lra8blDiWbfnRxAyJ3NZmkxTlbE3WeP09KhjxbrKI1uBAxt9OcZJMFLnC
	 l3YpGlLWjaqoA5z8sA2GpBHPkq7gLZ6cpKOvpbbOlF+mH9m/ZEJLZkG/B5WI/4AYW5
	 DciSw/Tnzgt6UMc9pHm+MnXf7OXGUU31dhAaSFxthCRzEJpikXlmjGv9C5VTt3aVsK
	 /9VyVjgllBgXKNGQ+vgtd0lipty0NV1UjnT/w+LBLebGCxft2HB6LfNm0aOUdM0B8d
	 /B249iSRuv28g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D52EE6B60
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041363359.27614.7215570744139182319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a373062aa6db4afceef4095b3264ca5602196a4135fbd1be9d50bbae1d77f76
Date: Fri, 06 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770413633
