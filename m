Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA5F12AAEA
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715572343; cv=none; b=ZaPSD9yrMfn27Pch9tA45ZcVo7VndiVrYRq+LseGWOdFvGfrFMxn/dDOxgQ4qkRpxFuOXdSdc4v29LDINQqt0CdUF2VGkeWvRehP78frqC670OGh+CY8hPpqq5m+h4Rs7hYV0sM3DTB0ayRawbCs7feJzSTf5UZdgu/1T3W0f/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715572343; c=relaxed/simple;
	bh=0VzaRT5u2ejkUJORk9vI5cJ+e21Omlu30V1mY/6BRDc=;
	h=To:Subject:From:Message-Id:Date; b=AOQHGXDZBzF69Rdvg9Ul1yYeSauj5NO3ymbILa1dOs9BksCaN4vI+O53selXnCs34zvSBaBR2lys9ZFTEXaw8Ra3jPOXcuN4LWvoOOro93lqAJbMKL3K5JEOq7k+LPLok+AXQnXcXot03lUujsHa7Na+j3yL8v6f+vIwlwIZYsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtrqNyti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtrqNyti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0368C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715572342;
	bh=0VzaRT5u2ejkUJORk9vI5cJ+e21Omlu30V1mY/6BRDc=;
	h=To:Subject:From:Date:From;
	b=rtrqNyti5xKdOixjSDc7zKMo/TsftlqRxR+FIHzblVKXyz+I8HzLKdHr8RdGsz8+e
	 4G0ADBCxh1l1D+lHlhCs8VqbOAKGv3nSLfOxOdgvD6xYbcVeH0UNK+GCfOfNdqwE8Q
	 iwQev6pmnmgOax2xeIZEeC8L/NOk0Fma5hFwTfv5oWbGPI3qOcRjRE5alVG2rI0iSm
	 oV87qfRy6UsvmQhNfT4NwtD2TAhzVLldlwEaBIpAxBYYmsLGL4ETpLp1y+764DSIb0
	 wxg6HxuCS5mJFJM3JHiiZnI25ysjGpF8PV0Qw9szhTGa3qq1+EXu4qTHsi/gDLab13
	 fxOu2bUyssSfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE992C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557234277.5005.11824265228227306688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1f5898c6d1d6129b52981b6c0a63e2fe12dc89d1ea8d9a7a4e9307d6ba820b
Date: Mon, 13 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715572342
