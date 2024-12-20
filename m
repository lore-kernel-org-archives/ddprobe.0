Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE6653AC
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734655554; cv=none; b=YO8TyAtbJm1F53X2ZKdUw9clzSoxH4OI6bxZBu5rknvdwBZUe59mhDMR1uYm5Sr+QYF84Sk69ggk4P3lfKRthIot9Ybym2FhSXkfu3Ci50gd6VIZRCCYi2zgsjtiKwmhuY6veCWz1+6LZDOpMLcXMQmy68ANkVOStOALE0jYepI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734655554; c=relaxed/simple;
	bh=smOoBE1D4pBYFJGGlHj7tNvdTNtpt0pP7AZfegUL+IE=;
	h=To:Subject:From:Message-Id:Date; b=MwaywMLi6P/s38fK6wGHwl4vRhWrBHz6Zt49D3JJJ/M1MgTwJDoYdBbW0+7IJJ3LX6YND5egvEzzwSQAX8MYTJWwmSLJ6NPIDU0bM6jRiNwT2VSq8DhXublo91JwLVInfeUdOl3C6QnMg7IjW1Z5a4+4ML06VO4EfDK2Z1tRsWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpbiIL7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpbiIL7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE9CC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734655553;
	bh=smOoBE1D4pBYFJGGlHj7tNvdTNtpt0pP7AZfegUL+IE=;
	h=To:Subject:From:Date:From;
	b=XpbiIL7mwsyoOjyO6C09dtRvM2F2BNahU06V+cliqyGlGiGhiSoGSgzAWdZl9eIm7
	 UTDN+8WPYB4Oj5iF9XrTa5ELuC6O1MIXWozEAxt6Ky78fev6pxE/gmnY3fBR0Xv+yU
	 Dk7ZnLL9UZFWtrmwoqz55+HQUYYp460EVcXBnm/5gVi7pe6Gaa9iRycDIv9S+2hCHV
	 NELpd28WaW15+NCzCpk4tFjIgKHMVPxlRxK3P1yQ5e8Y31cltfAuUINfgclACBoicp
	 EbSVMQEjJFtZAU/WXEfePMedTSsv6JBn3fdzwg4ogfVZq1anTm1s4mR3KpOKvgvixu
	 mTJWsFipNeJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A384FE7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465555365.23742.15812426906226087765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a3abde79cb5437b94a1966a8df9ebe7fde4e59acc921b3aadff88d979967ee
Date: Fri, 20 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734655553
