Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167FF2E337E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755687594; cv=none; b=YUIy4VBwZrRW7+RFGyCN2FHGheaNgY4oKvyoeZTxxUgDLTrLRxuKaEdCA9f7beAVTd0FErttEDaJVTxEDN05/UAdrt+g/6woXicM+3ny0AKZrBFkxTxtk29x47qcjp9SA/8sIpGWy1iAQnyxneWqMK6XiFe6dbJqevwyPcq5CkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755687594; c=relaxed/simple;
	bh=hSUhGUi5V81AS0+PZSxkG8Oz/hfep34M4YkCKveTfR0=;
	h=To:Subject:From:Message-Id:Date; b=kSAd44acAYyCs9qBuh244+slfkxWpavoW3AK5ArrmFuWHuJWjRo+ZJlx61gWY9M/5sqsZQVjnl0rF5TIF+W4XIzAc5gUTfLvH+lonw8BgzoJJguK/c4zOO84jtRKGeHldDxzfE1/fqURCw+CdEn/kW1ZRDmLXHbJKzolkvA7yL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL1i0J4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL1i0J4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDC5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755687593;
	bh=hSUhGUi5V81AS0+PZSxkG8Oz/hfep34M4YkCKveTfR0=;
	h=To:Subject:From:Date:From;
	b=nL1i0J4hvmnnKNNCoqzxoQ8PrKKmu8mwDsmIPpbli+Q99ZqZlKMipK6tPrz0fOid+
	 Usnfm3DngVJMK7ZZ4pkVOAn/m64/Krxb1Za3rVwwWtQ1dBaLspy6mwjR5NYvCn6p+x
	 US7ySAIxWf7eizI84RRowv3p2wbUG+TvAoHOZeROiqQGyd4bkFMKZMgqr2X/nIEg+2
	 Xp1BeRU6q+5acSCRVH5SfoWDaqyoJLGro+qZlHwp/mo0AjfY/oH9USCqThUiW8vavn
	 4olGSP9pdmMTaz96JM8XjkNp0UznJGdn7MzjbTTbNTu7wsaYUpS2ZJLSa9wrlmZ4Fe
	 qklwGS3yH0E2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1ECA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568759357.10968.8296129171418231715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424a3fa08be8b8637e7a6e262b6f70f8b77a355bbb5aeb6d34c5b968ba06be28
Date: Wed, 20 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755687593
