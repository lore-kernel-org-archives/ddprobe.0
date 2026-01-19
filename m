Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07351C5D5E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824234; cv=none; b=hpr5fQSFRJwoUKZC2gZFhc0AHVDTXRwTBimPpCQiLiVb8t+z40fpcjgu1aa5U7qoOfH8p1VQNhtNVCoOCaBPMIywsx+cW83Q/zhbUEiG1oTSF/Y9I4k56hQ3pha/G/MX3JLWdsZIjyePgRcSAg/Dc6s0eOrr8ZColoVAqClNtE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824234; c=relaxed/simple;
	bh=fTVPGiPgCLvLqOscivmGrjYIZH624eVZgJf1g2/ZnWI=;
	h=To:Subject:From:Message-Id:Date; b=ouUPKYI9QRpGMUZu3VjD0suf/f7Yx8BEoxBx2oMHt/3oRd3pKhrvSSCw/VzWZ81/Ckihj+aZp8yg7odFbNh5LRUstmSXVglUo9vk/+d8LkQueVXqgQZ9JSqRJ9+rJGHpjb5lq7erUsBRSEikA6gFFPJT62rj6kv2+rhE1E3yILE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCWb4S2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCWb4S2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E01C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768824233;
	bh=fTVPGiPgCLvLqOscivmGrjYIZH624eVZgJf1g2/ZnWI=;
	h=To:Subject:From:Date:From;
	b=PCWb4S2XcZIP/jmfq8w9R6Ii8YF3fYP3A4+G44NHzJS3FDJTynbUeiVDIreCAx3ua
	 RTYp2y919zOendjwWjOmRno96FOLlWtyTNQcsSjieXNB2QvZq04aP90vruRO1NAHrr
	 +QOpB/m3ixREdgoi9PoKS8csKVO2B+58dRfEtmP1t7Jf0CxUJ4XNi2FNSjZX7mdfBD
	 rEbyFNN0356bURUeonTPQQ3r9NCSAjK36ML/SeWJ6Csx6rHyhrWMfOIZ46TMDCEE+f
	 pVo4BJQSvOpJWy0wwLB9nLAb/9Wibouj3Ot4sBn/r0gpLP1KvlF33xbyGzy7cB+9JN
	 /s4BiKm6AqhnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9CCCF2EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882423357.22314.1949296131261798062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdde7b66d38224bfd3e65f7365e8f1ddfeaf42343d025f557c5b7fd2050ff7b
Date: Mon, 19 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768824233
