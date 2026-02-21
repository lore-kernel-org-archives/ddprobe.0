Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C5922425B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771696494; cv=none; b=TKKHh5uq26znBFSB91xMO0rvED69iTKW3n3jB+Hw1TpTKXCPZrE/9EvzL1jHXLr+D3bDr6MuUzRS5/wjaAkemTOcq7z1+C0231JShEHtorqdOT4AQfyGniisVskV8bPB4F8h1PZ/ns16z3nJxgwasj06xCBqB8VdUl8onY8jFwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771696494; c=relaxed/simple;
	bh=Q2pUUASo9mqbFdcQBbkWYoiyHUsO7nfJupGMm1JPJu4=;
	h=To:Subject:From:Message-Id:Date; b=WQtEe8dNZg5Kaz4S3KN1Z0xed/Qe+7e8eg1cj8tz6HiHCU64zqaF5V1rHi5N6/vus0klCTlfHq+yY4/Dss7WvGzRjZh4f/vTe0YUIlY5CUwl7ByBO6nnEQaRYRc/bMH8mLM20Se5g56fGHwRxoi26XCn5/RHJ7VlpT5aiQnwN2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHi+BpZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHi+BpZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FCDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771696493;
	bh=Q2pUUASo9mqbFdcQBbkWYoiyHUsO7nfJupGMm1JPJu4=;
	h=To:Subject:From:Date:From;
	b=UHi+BpZBsQ+zWMGyb5DSXja72Fv9me0zTSn6Aav8z2V9YPI1O7NaAH4woQrwvudGe
	 L9qoO2SjRrF0K04dY9YVJpvhXVw4clMENhhFJRrAtm8tYERHwtCgmKWBOf6dGkLCyj
	 jeq0eF0d757tQV4R7163V1zSs7YzKRt0sWHMcxoJI5lB9T3Iesz4kszlKTKxgtNuYA
	 FNUGq7H+yjf//2sTdl0TTZBmJfYZ8fU4vXfHJY8M8HZ04X7QUJsm6NNUa2NjbsBrrG
	 Y18Opv330JenA90UF+YbEvRQvApQ5GA6ZX49bAf4DORImJE6XOsxaA6KhdCJY3uEgV
	 0EJcsu7Lv03sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0414C61DFC
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169649360.13325.9108384685788296544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c0de4112791c15e6cfd623c83162f913c4aa1068f2955f9603e5b1c1ff6141
Date: Sat, 21 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771696493
