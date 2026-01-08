Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7E7244661
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767887633; cv=none; b=sQd6eHL8E9t8OzthSG9lYI8+ZXbyosyLjslW4M4ClwnrVn4/5mINdnYulF+6CqQCjQVaNWDcpOf3bNyZdCfxORTT7JXs1BrK9Jlk2dC4POTaSAtCvxH/iBtQUBkvAeZ56AYzDcxXGKbkXGzyhg35xEO3LtaNhmfB8GNAmS6WYyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767887633; c=relaxed/simple;
	bh=WvatwLvkiECks6OgmEsBPV9SsfumpS8Rhg5b4l9aDjg=;
	h=To:Subject:From:Message-Id:Date; b=NOQDhWT38gZnM4BM+71REaYbL+sDVf5yse7X5ycYlnZ5Es3khG4vN/n1Kpu1HzIplXb3/s3Y4kYJ8yeR+y2fV2vc6itB4rimp9G6Ja8O6Mswbllz9bfJylUuabBNYnJHAN1vG7eZqB2boIRafJmPtd+3Zz1HjhFPlP62GRMJEJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/ko9/Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/ko9/Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E032C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767887633;
	bh=WvatwLvkiECks6OgmEsBPV9SsfumpS8Rhg5b4l9aDjg=;
	h=To:Subject:From:Date:From;
	b=l/ko9/HfwtGrdl6YaL8GUkLKbO4hS57ac8QuvV4iQw170VvXjGoTeZXp096uuw/S2
	 l+o3mhRRuuc85MxJX/b06j0eMEDXic1qsuyDTlNgevTHE5cEZQBIzwHe818cYAsZkO
	 eTICPWV+4mAxcI+F03WX3uTd6YNyXop9fan2WezwmFyXapae9BleN3hxHnVWY72oTK
	 iC6URcc9f4XDcVEBenQ1V/p2dkeiKk/xu8taam0qOTRnWk++ypuxpvH6zbpvF0pmA/
	 H3lQQXF8clqkWD1xb0E7DuSeTtiffNsitaBff3g1iuuxptVz4RAK4auT+oHcm8Zb4g
	 LGlnlmQCzGeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F217D1D47D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788763357.18657.3768647206715510643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51b388720662d064d165317833553798748e53414e675340ac475d6a8e500f1
Date: Thu, 08 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767887633
