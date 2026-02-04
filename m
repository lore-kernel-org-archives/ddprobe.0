Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D98423170
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770222234; cv=none; b=HNxIBZF0DTZPxAc6zpR3bOJhelegclM86jHtdElvt8pysWLFZyYiePNvEjZT5wjvPCASwgUb8+ahBEi77gj7HsYyiuoqc4/x802z3wcSRcXoL6druBS5mfplMZLgPVqvkfi8dl1K3Nw2rkgTi08YJmutZXbXmkoc8fON6w4nzCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770222234; c=relaxed/simple;
	bh=Yzm7u/1eLaqbQVd7ax2K5jMY6twd/pnQkWhcdFqqsY4=;
	h=To:Subject:From:Message-Id:Date; b=pqox+ELrSjWEQKtDbVgukmLeqPeEauWTZTrM6WmEbcGRbE6wpb954EtI0SYXSct/QUTGSGBp6V35ETRCKu0hJtoqXvXoRU0KifWzO6odKqsj2Ow9cRY6NiPWm0fj3vID+jSCq0yBWNwhFbPvpCUAn6IBZnmEWToY9H/vloX+3FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEtbCx7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEtbCx7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E61C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770222233;
	bh=Yzm7u/1eLaqbQVd7ax2K5jMY6twd/pnQkWhcdFqqsY4=;
	h=To:Subject:From:Date:From;
	b=VEtbCx7ag/nyx2uxTiVGGAlIQVcjDs18zx9YU+c3YxNHn3U0wE2qFK0pcZepvo2pt
	 vrNfH5TGtH1NAHWJeSLjDYnPpG8Zd8i+XGtFmzMs3OZvo6+uk5xcKcsIaScAb+iaX2
	 +RMNJlqLb0ZNrLDcEtSASvthedAj0y00ZfcVEVM66AuunhcJa6r+Zmj9A5JPhTBosm
	 At9rlSVNT+NuMZrH/WzjRkN33m7xA/p/QI1TrSuTsNWiSeEZBeY78kCZITwJNNyDfe
	 c/+VhZNxkBdwF9JJqEudFNFiihhIRL0TGwcKYG/CmHnKH59uoy92gQEBNfLMx6Orz/
	 sn5vW593Kqpiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B312FE9D408
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022223372.2266.13386723083492088876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59ed29a1773b78eddf97805dbb022901c545c5fb832e349f78800b1bdba8343
Date: Wed, 04 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770222233
