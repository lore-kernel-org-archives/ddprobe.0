Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131921A58D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773360294; cv=none; b=n4/OEOyCTphVio/NV1pW67uOg4zVkqQRtiUflteTlUkDIEuV68mTNFtNs/6WA7oYA0A3AwmHayZOEQBawGIFgvQEvWjfvDmRLTE9Fd6nCigrruHPgjxn6d8jisqLhv4ny6v9ptTe61ZVMEeisqXQl42XAIN3/fe++cKgoFaaydU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773360294; c=relaxed/simple;
	bh=LNnHSKrW8yRtBBCyz1lR8pojNVGKZYBAQRGm4Mu9THs=;
	h=To:Subject:From:Message-Id:Date; b=mfIuoJmmWhfpNNO7hjII3cqY7p3nyEcspRKUm3ANp0Fgxj/4Xu/mTibnteTreKJOVlzqT/Yt91PpUt7p02mM19lDMlplvSOAVJH443qEl2CjDzMHOAvjhJFY5YjHW5tti4KQX9nFTpJiMD/QiuHT8y+7CIuM0bsxMrWwJ2/3JWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUI7cE7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUI7cE7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2ADC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773360293;
	bh=LNnHSKrW8yRtBBCyz1lR8pojNVGKZYBAQRGm4Mu9THs=;
	h=To:Subject:From:Date:From;
	b=tUI7cE7ynG1ovmRe1FjeexPBM7oYmpUft45VJ+XLjBdJE01aAXmUKkhvr3MCPfBD1
	 +yOmIN76TLXWP5U2a2R3OqY5XIR7SRc2zD42u+I+W7BfUDAs+mMY3/iyDgbcEuo/Sc
	 9mxY0VpbpzhIaIlkF42/TUX7W9r51x0t1B36H9pAfKBUgk0+SdgiF9Z/Oulvv998zA
	 k73pvnku7fRdosbJzcjH+qqaZABHv4tiFLQ1CQFppf7hzHvVAdNsW92gR/oI6NOZNp
	 pAFL5CkNrb5wpiJyCgeTHxhcLm0NEgVumZBLuGEoY347r8R9NC20eLo/14DN/rMKwX
	 MXOoTfpP7lhbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C7A106ACFE
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336029359.27112.13839909299787316610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2f1eeaf34c70367107bb6562160e5c6187145b9178081f5cddaf97340e141d
Date: Fri, 13 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773360293
