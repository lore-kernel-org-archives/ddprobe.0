Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E0BC142
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719384803; cv=none; b=qV8zB7DcDsKX3/dQ7r+xbS6c4aVP9/sXx6Z6arvbNK+gnZOFwNJgSHJgKddLedQO+7OUl7WQNjnQuWMgOA7oepBKqbq3hVkJ0Luhd20+CWkNgzzVJVyjRpjbgxRs/xXdN148SM8hZcjq0zLLJowPXTrEQdvuy5bCsY3+5tzbqBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719384803; c=relaxed/simple;
	bh=dZsTQ/scKNAl23eyEGBE87HjuLaysI5MbgW0QzLEfpI=;
	h=To:Subject:From:Message-Id:Date; b=tK/A1yYSM7NbsULH6/XXwDnwscpT5hzhq8IvIxVesQMmRLEZppEPoZFiBKKmkGYr55XdGiF5LAefLAnMRaUD9c66GZSmQKTOYRcXJufhfWR/NF0Lj8GREI5WR5l4RHzPENw2M3j69w1RlEZobvi1AFkEBu8XyjeM4bflu/0OLYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOSpp+kD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOSpp+kD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E3DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719384802;
	bh=dZsTQ/scKNAl23eyEGBE87HjuLaysI5MbgW0QzLEfpI=;
	h=To:Subject:From:Date:From;
	b=SOSpp+kDoM+iPbYqDqjrciTTj8b0MkTuR22SeDoC7Ms423ZoqW2PP8ABSQDAGg2Rk
	 YUoB6LfVGPSDECeC8BsE2FYweI6RfNb8Y3wtypshjkcIN5TgcgmSzXXCJI6AzE1dEd
	 Ef5JxuxtDVa6VvikbicEyrEVgIhiiwyCHlnMdA1bskNqCiMc0biCDHWrx3ogxHh+l8
	 XRXAnyCQO35+A8C72rpz96zmrKZwhmy2Y+jujOAvnfk4y6PCelM64eB8fF2xTQA6KH
	 ldekIAWxGdBQVisERudE6KYTD/cH3Y23FmZ6zFHyHZkYKXM8bPh2tB/kCyeJuBo/wq
	 2rH7PV7zv2faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E80C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938480277.32000.10444213829459029262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e296f8fd055ce2208ad8ba45bff5c9b2362c0ae52af7f0bf26f498c153fe1e
Date: Wed, 26 Jun 2024 06:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719384802
