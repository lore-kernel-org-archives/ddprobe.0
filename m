Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531752FB2
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743826795; cv=none; b=Ovtk7KLCSAiisIZAobkMy6b9V+FP58M1PMApVUFF9hIqAgx9c4C8Gp+a6LjZqT7uvbBJ4/lZOcwY9sEpre0qwVbXwMFcEJfDvgd7gRadFAOpqB75XP+oXle5ing6u1IZ1odXF5lmjZq1K+B1ux6yu3Lzx0Xy2z3dVJqp8qneyVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743826795; c=relaxed/simple;
	bh=A0H4McggM44lDNURiu5hg0tg4+T+PVKNjdI90gAsld4=;
	h=To:Subject:From:Message-Id:Date; b=AwFspboK1ZDOEX61FTuun+UUqq0djexPUflY2tvlJRa8PmxWQFLOaKhGD4S+9q636jsbKB1+3zaeKAShjSNrXLPQlHlZ3rqNSel8JbmA06V+SIjQDUjzuVgvJLOyXfYDa9+/C2zR20AIPYwWdr59UV8QF9fvzP6qEmzK87u0n1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXystA8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXystA8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B18C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743826793;
	bh=A0H4McggM44lDNURiu5hg0tg4+T+PVKNjdI90gAsld4=;
	h=To:Subject:From:Date:From;
	b=fXystA8jaxnHc6rDZztMklcj+jpV9b35goT5SoauNj6kEZAXhCjN8ms+NZVp9SSkj
	 C0LVcCY5A0K6Lxd0MR8Hr6xZS7B2qU160LVLNe7xJby5bglkLkaPHvvhnqT2Js+xdu
	 O2ZP9txZJpQ0sDWioBeodVHtOAh5n9v7rQwAoTVFT8Hf4DWQnLLj5SFU0yQ6HGe4vC
	 AT0X9GUM6+/8rCLhQMJGR8Ue/nZo1aOQyCJk00UdHmLNi6OjUgQb5drkTz3RABINCP
	 qeZNm0aNyi9OjPoo77UTsili8zsvbf17Pw7qtga1J3hCLFLgR3PCg9dcReBDgkCvdp
	 55e76G9yl9S9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D01FC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382679359.9896.9243398120460948432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940064dbc3f7e5a4699e8345e8b30c71721d757994806f70509155c8f10230c4
Date: Sat, 05 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743826793
