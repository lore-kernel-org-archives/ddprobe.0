Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298502868AD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764166974; cv=none; b=dzNZUX2gxfYsy/ZUuStEEON+6LYNa8SQXQvqYedyoBQJ3ocrU+qv23oVmvqzHp//Z3YP3XPLXB2s0cns/VLRnZ7JQu6+0UajI5/SfYDw2tfDupkWVQFsxb3nvLmijlsgEqP/jJPiEJlp40l2hT0C8yYkqz5N2Ddo1SqvF/mv1/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764166974; c=relaxed/simple;
	bh=JowRnvHll0rORYLKQExLLgcyvPAwvOojuVaIcu+ZjQ8=;
	h=To:Subject:From:Message-Id:Date; b=YkrKkE1itLTk1rTiYfjYmE+nAMv7i4unpUaAURkFQOGn7IHcfJckIoA5fWcNXnBew+ohngG3UgnMrGpK5jtPPFVceV3qrH1uIn6w9Uc/A2SMcJv0MA6xqNzwHpsaE7juCAZi+9bntXW78LhYknq09m8z8cTLYhJnf8Rrr2cwhHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbUhkWVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbUhkWVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A388FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764166973;
	bh=JowRnvHll0rORYLKQExLLgcyvPAwvOojuVaIcu+ZjQ8=;
	h=To:Subject:From:Date:From;
	b=AbUhkWVwTKB4sP44ce9Uvf1nflGck/e02gga8ZQ8oVcqyhu6Bju2mOyylqNW1Kc1h
	 5muYO++xzerhyQjk9IevkAnILDCYwEN8z30CioTu6vEFU4/ozYEqI+Ga+Z98s/QKyF
	 WhzBC5364z+AIgKXdCXzU2nt5iCypEGl6nh8AHdiMVpQm3ckz0EC5B2rcgSiH3JLfo
	 v7vxr0bGzR1tmlvDdF5ZCvMKS9dlgT9Awh8NP1u20R4Yar+e2WFcXtYLn7vuWL82QL
	 lFBibtb0//zuvMQNfHblOEhiLpAuXHhglc1o0eqRawkfjDEmSNmDaitbuXmK/WC7DY
	 9SYlyUFJeDI2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADBD10F5A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416697359.19977.10124583998706724088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ec131baf909637dbd177307e9d36fa6285bef7049a5f5948966669984fcddf
Date: Wed, 26 Nov 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764166973
