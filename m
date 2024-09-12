Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358832837B
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726104954; cv=none; b=lkQdx+3wLzV8jTiWzhfZ5ItW6uJrlpSWZ/dzTpUPfxtMhpfBos4qz2bSUJO1fH1M6KYqGNRhLXrw/egLw5JbF6QFFkyxC+nxBV3p1EwauIFr5a38EExWpKVhRXF1ZhxXjWqiaARULKm8ADF5IiHVE65KMitd+8r/cad+3d3v5VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726104954; c=relaxed/simple;
	bh=YIUl2l9rFanhULucqMn4G4wZDC2iI+6XeUAFwVhDAsY=;
	h=To:Subject:From:Message-Id:Date; b=G6/AmMRDcL3nP9k5z0ut/B3DHhy1f/lntsUQ5iU10LGmSfFF8etn2yQx+cTElI/LWw9c+xlM4YTD6CyQN4lsSgJUoP1zIIcwtrad1iEEE0Z1mD4zMjksx1nf6NtYRMdQBBdgSsQLzshzmItUEo3EhQTbt1VOrhrX1Hiymj5EByA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckmny5/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckmny5/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE728C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726104953;
	bh=YIUl2l9rFanhULucqMn4G4wZDC2iI+6XeUAFwVhDAsY=;
	h=To:Subject:From:Date:From;
	b=ckmny5/N968C3BqU5/HEL28pGQhnYqH0bAPyTymxXLZadlFWCI6rjda1gMinonaBS
	 iCZdORj+ZO+nNkdESYo9h5f14+qIGSS3JLSY0HRPYtbJcr+3huMYdBVBHio+nNRMOo
	 nIs6xBH3AHesOZ5Uud1+G2BcYlKey8cAqd/FMMsPQCHYSuz9t4gWJDedZT8LLmQwPz
	 7js7ATbSZtr9wywM/K6w7wv3c93C4x0Z+ail1BvXdnfzgxIjkr+N7vXsHdlbPI3jG/
	 u10Ier7WScf8QhU/SL/iDMmnH9WICUFss9lh6uIVev8gIaSl5pZmIVllpZ8pJJNle9
	 dd+TEwZfKNBcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E0EE57FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610495361.18960.9774291847778701137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e928a0df6eb52a0664fa0947949fad2afb4d89b590c48d961521b363bc0e94c
Date: Thu, 12 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726104953
