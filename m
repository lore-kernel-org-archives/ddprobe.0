Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB4A2B9B9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762609194; cv=none; b=bWO6Oo95XZXoLSeQuCbsOxoNBvuc7s4C6vTBn0aN7eFgNf1jRhTJepYRSUMu7LBnCzPXwgw6I5bezaxpQoPGiTnKDLpgQF5gtCMj6eHq5iQq8pfir0h3nUqwJEJtxkzFBpwJRqctpIf2XG+kTIT9isA7jbF/VY2UJ2VNVde9hk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762609194; c=relaxed/simple;
	bh=PWTj+qdTSC4MbFdlMR0Jkn8agA9LUDauDO0PJFXasSU=;
	h=To:Subject:From:Message-Id:Date; b=T0pOh+H0v3e6mIMqBpH4SlVQJTf9LULKpydCmBfb38/jUPc8m6gGRQUuYVWLDnF4b6uVBi4Vehxk3VltdzM0S2AU7cFS66ExwTIaPBRY9yfD03kb97hh7N8Ol9rq9Yp2ZjSL0QpG1OeEv+kzUxKcxAoJXPZEYFslWy0vK6WNC8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiMM+YFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiMM+YFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9AAC116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762609193;
	bh=PWTj+qdTSC4MbFdlMR0Jkn8agA9LUDauDO0PJFXasSU=;
	h=To:Subject:From:Date:From;
	b=EiMM+YFD76x1c9pUbgTXNDqseqCrPp9iF1XHx9cLm2w1Dqxse0R4tvI4JQstXaYcz
	 eBVcjIFDO6FUcshKGIvxHeDSNQfZycan7S+MdrDdnKBzH3uN/5F4UQ3/efIJ3J/q2x
	 SbLvi7oxGSYHwaYwLgPFE+O9yAgtSnD0GlQVoMe/VLc9u5IW+N1IDZGzY8K/68+XHk
	 nPzD26Op+IxZ9ipBMi5zz/wRGbbKkiz+Wlqw/dYxibH+dGIzynfGrSOjzeP/t9M1p5
	 NDPVyxv4VeQhQQ+2Mwg+bSWQMJW9RxMmAANX9IhB731YNivf7BAxvj9fgJ2bzE7UBm
	 iyxwvr0KGLOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92476CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260919357.30981.17369838133067691011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da58c8137bc4c591ecee6ea7e485b548f8f6bd386eacc0a02e96bdbd45308442
Date: Sat, 08 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762609193
