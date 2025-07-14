Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2742F35942
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752463794; cv=none; b=UMqv1ANf3WoF+1KI/seqk9J7YA0nJE5B2mBvSMenvDt8PM7l29pIWOi5tJgA+HyhsnW+zG03GE/6oq/+I20lfal+VXgB2W76ciVpGU5Mz5MojxJm98qb+0xJIMNLs9eOQOXcKyr2X+6p7DaZHn8YcSg3L4ouLG20i/+oEv1LHds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752463794; c=relaxed/simple;
	bh=1UN6j9Qz2K561WAPWpijWoypTLuOsiqKL5Ke1iwX+7I=;
	h=To:Subject:From:Message-Id:Date; b=EzeL0cjXN+w8mKGnRmWBqOz5PgxJwXqefGpgFzy6pe8toJu56KHsvlozl4OfhxSR0ez72KPtUudd7ifGwPQPXrPr7ViDvFf//OgvgVqBfc3MKjUlgUVwVlNN6LJFzU3ApsAExGNS/5//rao6u5Wz7Wiy3ArKyhC+KKzPtMuB5wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1D84cKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1D84cKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A9BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752463793;
	bh=1UN6j9Qz2K561WAPWpijWoypTLuOsiqKL5Ke1iwX+7I=;
	h=To:Subject:From:Date:From;
	b=o1D84cKMHpssDSBj5wMF7TLiQwkJsgNmsYIrM3yP7bNx8up2ZtZd7y6MGQvwFBnys
	 w/0zm2FVC4UwZTJmbcDxXypDRkJgSlhtVCSCfvcSSIvk2L7pPrhdm+Dze1/7dGLhbC
	 vVpMWuPNEsUrhG0oke/seabTa2dNAulQIc6qZOzhGWzS1lNcOHx84EDFrjS0Nj+5O3
	 guBwy/ht14nDGajieWTCbjmNRvJgRKehde9Lo4kjeNCOss8h1y8U8qSZnsD8Y+sjpA
	 PweiVVOmiDNLON9aiyvmzS/XpIZNr3XtelqdgYVN5pBYodECqfWXsdM5xEQTyngGWj
	 vAtb6djBmUGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F708C83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246379358.22876.12412138157584816697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f88865a96b511a850b2fe714487b0cd1fb881e84a2b1e6640f6e139879aad80
Date: Mon, 14 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752463793
