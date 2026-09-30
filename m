Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585544D956D
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790782235; cv=none; b=p7a0b3xEzKPNeU9n/B+mZMK37xqpTmqBOu4Te22MfT0tBOTnwYKCbaoJH2ZePdfFtgz/Azh3/F4334THGITqZVSu+Sv9YVE/6rLiS2DixmUHVtELWiSGxZhCX7454tjQMambYzbjWl4RHA4gBN+dBsPNcgOtsdhE2gg+iYu/Wg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790782235; c=relaxed/simple;
	bh=VleW+EPZSLLKo57EOmZGbCZ5vYA9StDhauqIp6ARHT0=;
	h=To:Subject:From:Message-Id:Date; b=ubNsT1tjqcy/NHYtTgcXMo3CA2U/w7IkYHwJCxfvlUPBWHWLi4VuX+/TfEauaFFeAnD0qdtNug8/9kTY/SRwtD8gjxfANzkf+19Ut+Vqlt3z6yAWsLNYy5mh/zlsBLv0SHqDk/v6JjdST+soy1uCfkAMbcpfrKrtaLPdpTDdqHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAtyz6dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAtyz6dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0FEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790782233;
	bh=VleW+EPZSLLKo57EOmZGbCZ5vYA9StDhauqIp6ARHT0=;
	h=To:Subject:From:Date:From;
	b=gAtyz6dhqkRuleCtlsQV4zuICPh9992gZfsXCSFFK91xSThReNe4w9IMYYTCvQRSZ
	 uxjHBBr7WpGbVD4wawPHe/pFVPbXm7huKVt3bQFTfnRjWX3sOKqg3RBKM5W3u33J9D
	 G9FeQXo1f2o/DBCVr8qcMqNUWBoJg8Xog0XJ8lPzMfS04tAB+iHyrzDSDQtm/ybfA4
	 /KErrUIiYchcUmBXOVDLGt0VSgIFjKlxq55CYE4E5VBDxLdGCSSbMn9UQRego7iPcG
	 WqQc+4FeZPeHc/jzsB3F3N89VZjUmL2ePNvXlucOFJbzHcZCXenZSIGJzitjjyGGz2
	 l5FpHboPr+/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D6CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078223368.18025.4600988356839691737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c60d8908f8848429f2b0bb9a135c2766cbb430b5e48c1edbcafbff1b49246b
Date: Wed, 30 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790782233
