Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD7A13C692
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716446603; cv=none; b=ieWX+T8L2ZYHf7tabu0gsjMmUyfoklYzLxcxkE+DkkxqQ3mQ79XJcIJmFJR4Z3k/E/9TzqLL9vgvi0SsYTJNs4uLWwyV0wXdTzQ6WByTowKG5KgikD6XpalqgyWMF423xtjPYUEsUsAef/cQ1p/p2RFM7HXBgHQFqj0XErMSwg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716446603; c=relaxed/simple;
	bh=judM2pnxsxSm/4XI2SC9eSrmsMuDrMk0fqZA98ALJig=;
	h=To:Subject:From:Message-Id:Date; b=aIs1B/gpd21V3gqbJOHzrIc+TLn9Q3iPr0QPX0ZiHoUect90lJ2wiqRvS4KFlns43OqEe5Eg9nBIDiz1lRTs6ax9LI9Ka0nzhQvadWi+jV2oc6gklHyfCm+A94bd6moR6iYfhXrzO38WQwvGkPtb3nDXn9XDsbQegzJoqYjYWAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjvqIhbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjvqIhbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00FDC3277B
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 06:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716446602;
	bh=judM2pnxsxSm/4XI2SC9eSrmsMuDrMk0fqZA98ALJig=;
	h=To:Subject:From:Date:From;
	b=FjvqIhbbK0eRUfu3acD+ruS1A90Z7hFtgtEWK0x0doUKoffniEwhLIOrC+4YxgFL1
	 +n/0EaQY9+W1wyzxJPuan9RELRxe7l6L7VN61YjRRbdFI44C+P8BisSCedDcr4qM+9
	 gPKh+eUUB/9r4lb1VWIHGRBgDmA2uhn16ccPkbqsSlzLz+lSdSvF5adP2R66ayX9R0
	 53ez4Bn9+47LhpTI3EuY4S5P/fGfSOuhMXftiDAzv/XBjyeYHQZofD7tjxXB1dvqV+
	 G49IBwPSS1Rz75iCqxKkCPqx/WNTKry8BStd668vPvEWp3FNL+SRNAJg9pA2AwueGh
	 YKnLFaRxwsKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5921C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 06:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171644660278.6402.16881303788361793634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa1eee6bd186fcb9c7f5333201b528e09558328e6b96a8ed834a37a4a39bf46
Date: Thu, 23 May 2024 06:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716446602
