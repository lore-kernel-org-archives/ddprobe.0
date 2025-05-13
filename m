Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2854C6C
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747105794; cv=none; b=JJR+IN+NTX+Mr3f7QavQbLgTofS5kYJs7kbTa7HhDkBKJ1nJayzOgWRb3z2rlJNYaKejZRbLa5GkNoEtBOrHqRV07Or01RA9NQRc8Ds21Xuce0dY2rMZtVB3Y4FWwNQMO/izySGyylOa6DHd4rBfScBtUlnH7dHGpeGa4nLhReQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747105794; c=relaxed/simple;
	bh=qCTTjUl1eK7LNWPkntq9rfXQMNpcrepPK7gx/fFk7Lg=;
	h=To:Subject:From:Message-Id:Date; b=FMCxaX26MBDG4z+2LT2gFx8zKo7lfHANVgPD/5VTH2KPENHXXBMew+Q/AsC+xK1msnCWYhvWMfvhJsvxOREeOnU+OHmwJ/pEeGJDb13KuATpBxoI3dRbZmtBh5embu+RB7jXtEBkCmtUtvSamNKlbm2lu0Pl6AfYFDWQ13gMruY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haN+tzTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haN+tzTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBD0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747105793;
	bh=qCTTjUl1eK7LNWPkntq9rfXQMNpcrepPK7gx/fFk7Lg=;
	h=To:Subject:From:Date:From;
	b=haN+tzThFPxmMKpapz9yzngpHNfkrSf9q+pJP8F1VzOisK/wF6pUGyHbll3EaIVtg
	 G7TAsbuMa5iq7oZBV9yZzhiiRObHS+8ZFqFL0RpGBsoyGzBEneoeCNJaYuuN3Ie+tu
	 kIv39t/if3Q9dOgb37aEgPkvvFphGbevMC8v0yckcxor5VaCrBpzFTa/4mNNQSn3Y7
	 C5IfPCGYFQXkH2hZD7lWh4iS61CGRQT9VqRNeGDKIKVveN0rWt8gnB2oACHd1I6jvI
	 xf8zNP8ZTZNDX5cLR8fgN0hgy7u67W2rgW+wllZOPiePlNFKjwu2FQahmbWLZF5REo
	 FgbaBGt33uv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA72C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710579361.28875.1330960407593843385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a882dcb42c962ba327828c9c85274e3a4de5e8a45a3f2e49561c45439ff48655
Date: Tue, 13 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747105793
