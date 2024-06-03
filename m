Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790282D8E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717426523; cv=none; b=as8Sk/ASfFKKVcowppVQlMV3vsdCoJ/7EsDW1c3h7RSJgYu4+UFAx+1n9dadpcEukIDtg6S3Nbc++j4r4lzN+8clFXm8Dn0cIcxEzQimBfnRmchgbyZSFwxWSc1g7Ug65F9cPI4f3YpdQLFmmvWeeL0HC7BtjbXjiXXrN6TYNTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717426523; c=relaxed/simple;
	bh=TtoDOG5y6BpZc/pBYP2hGQRwCyRc2lKm1gPAE/7ysPU=;
	h=To:Subject:From:Message-Id:Date; b=FHhlKRVRawiqWsEhjeb1csLvzOQLv53Z7k36N/UD5x2QbA93lIqcCXSmbsjiDS8C6V7j0BTLMeM8aT+SFw0Ou1TpU3y4IO6QTCMWja4mGR8+SzwlEC6amo1/3HYtArySP61Ye70i5e4zou5Sd5C5peIpzhIgdtkwpvzsDpf3uOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gITjb5YW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gITjb5YW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C08C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717426522;
	bh=TtoDOG5y6BpZc/pBYP2hGQRwCyRc2lKm1gPAE/7ysPU=;
	h=To:Subject:From:Date:From;
	b=gITjb5YWemTMKdKLLzziAB0ENl9W3VvsTUPEt08QL/gNMTRgfGyOnEOJydOQZ+6Uh
	 7otoSNhL/HsIug6f2DtrtrsFQY7RbpV2IoBz4g68IJVI0bFklS3odl7NSWcVlV+5s1
	 ehkZQcVP9K3iwnwuhYc3BtSoxeEF1owfLWYKD6zL00VX/DV/obF22GGUtHxH400+Ze
	 t6kjJ/NODc3W+/BgZyna9Mhhg3KZ34zn1VJrzqAu14VWyr7sCogSGC+F5zBu85NC3c
	 lXMD5bNSNcvUfNDV/7Qi8d49n2MWB4Vo1ZNwPHEMMoHSS1FDhYZn4s/7mQ43mWFuDh
	 u1/Tt2S3MnBpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36AAC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742652279.11839.7789580913354433615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5825df8b434fa95051a46e11648d226902c70a70edd91396d662b0f5d5172d
Date: Mon, 03 Jun 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717426522
