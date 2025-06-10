Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2C25F984
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749535194; cv=none; b=Remo91LgyiTMn7hUX+1fKWnTYmU5uVLwwdMoiobtid8EiYrWCMTXrmrmezrwLV1NPMuxS7/SLVV7vg75LtIX8dp7UUxyemLjmV8Nw/FOh3V39IRa09/zM6Ys6i9Y/MaYnHPwhJEjJiXSRfTgqqprnePT2NMDJ7zgXIECUGFs5KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749535194; c=relaxed/simple;
	bh=UsmCmlLrbq16jUsFi5P+v6ki5RHnTrUgQ0ElpVnCaJ0=;
	h=To:Subject:From:Message-Id:Date; b=EXtdGvGuTzf61fJ3qPt87A2yvNlIN07oafVlEiK3vpmzTHJenDoBry+q60gd2je5C36c5eT1G/wJt2geRQti4ZpAuC29go6HkkgdtjbLI9uByju4vxMc/0nqFHCqsL9dTzb0bkR/ms1Bsb/XpraLi2drQzYyWLtNFJh50MUOWkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mByvtoez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mByvtoez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4A1C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749535193;
	bh=UsmCmlLrbq16jUsFi5P+v6ki5RHnTrUgQ0ElpVnCaJ0=;
	h=To:Subject:From:Date:From;
	b=mByvtoez402RJ6tDU0hulHL3jNk8pAeZzK4CKzfcVZIheLO+TG1uKAwj3C5xlmAl1
	 aEmY2Cg/h2Q0ViJW1I0i4B0ZZYVzThPQ2ZQ96s6FND0u7RpIJ5gdZmF/oiQGXc993I
	 ypt82k9rUI4mK3tZEOn+gWsF2yQiY3P2fEdg2rzjul7sviXr+ujw7S1qUojNeB64II
	 FMkvVLAI0WDEXlTXBS+HmPY7qowyHFKvnn20wRf9kLKcS2QWo3ad5s4INMMDSdWX9n
	 2aY87mjkbJfHYBaV1/sfbolC767ij4zzcMIHICL+RavZXGUOBkTIddesWRTmo7ZQC3
	 dslQQKUbwVbww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC1C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953519358.5034.15087466014804033058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9abe85c10221dac49f60fed01d4b147b26c6b65576d042704ba5bc2614c424
Date: Tue, 10 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749535193
