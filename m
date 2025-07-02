Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E571420DD
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751447994; cv=none; b=A/imeUjSn2zTHe99J3E2FDXTj/Bq1GQ+JVzwMfbLWL+coyoqu9ObAcy/afxvSpCK0sMkWshLazgPsnw9AXh4IZVuvb29CTZ9aLhMI1OzBbD+pHoXuNrw/ATpMigtx2o1Nyh6TWEQveON/oSRPPjPKinEGq7wzESTBQ/wEID489E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751447994; c=relaxed/simple;
	bh=5ulPFGt23+lq+3i5+/8Wn9yfVhQjopeGH3t6u1rxTek=;
	h=To:Subject:From:Message-Id:Date; b=Y0jg/oL2eeaRI9IRwqvMitPm56aNrnU7ltetqaF3TKVJt2rnf+v9FFyjiDdyGr9eoYoO4iEXB6mLWmo4B9CYYKHcxwrHUX+jlmj9GjOsT5g22CsRGT9XPOEsNoonxaksEn/hD/DWC1WH3I1dBDpvKYvo9LDVDDCbu6WPBfIQj90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehovkHjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehovkHjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD95C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751447993;
	bh=5ulPFGt23+lq+3i5+/8Wn9yfVhQjopeGH3t6u1rxTek=;
	h=To:Subject:From:Date:From;
	b=ehovkHjIqDpRLVfB4i9xVTrTfRLOO8sCIwryWZhjJ8U9JQc+MbZ5NW3j5u6Yqc67G
	 BgJAQNPHTZ00zmJUfqb8DWCsHEZ+BlCq8c8JttCW2WH50eQRY5i7PnfIeA04E8Oqr/
	 urXVgusPKnslwbUggusRQ8UI3rZ4oJVOfn8kkYulm6SW7lfSLQnlSKwq0gU++bYSXI
	 qO76ir/BIagKv1zDVAAlDf7DxL5SDHopPrUo9qClQhzGBWpMKnJYIX5Y83JoXiPlFk
	 rMtj3+Oodx4+cBKE2ZN2wUTwvlss/Sg0e/WYNfZnFzSE+2TDJY875j8zC4J42Ertg0
	 obJQL1qP0NDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48CC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144799357.11376.7081077200073781885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb9786359c5d006a8ec7e570103ca6c7e94434f1c64689b852796a9e195a380
Date: Wed, 02 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751447993
