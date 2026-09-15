Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6C81F4634
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789431634; cv=none; b=C/LxFlgle2rQjlg+11vTKgNvoFg3HcjANs8tFDitU4oORYX7nkxj+nblE9wR4rPYq9MngVV6WyvxiyqL6jYoNyI+HnG19uoSUIu1DCm9QFtYD0NUYI6vTO0teHH7CfoIXaFdnb8b0Y/RUkP+nv/vKDF8SxmcqwlggxD3Ld22g6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789431634; c=relaxed/simple;
	bh=WX4GByOCv0UPAWM8tgu0d/zy7mt3pZfrFekApoVTKH0=;
	h=To:Subject:From:Message-Id:Date; b=RFM19b1xTxlXD6lqqHQRyopdSNycwOj0Abf67JeDVkxgvD9tGoK8HqPmLMrB0W2CG7SfEmd5GqLVg0CJkfJp8mqwvYL7fdYdYws/L+sBteC7tMYGSdxdtFEiDJz7bD0jtZcsCehXCWIMMOiGXWuAIGSbvHUF7Aj9lX9cc6j+yZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9NHT3DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9NHT3DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C3EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789431633;
	bh=WX4GByOCv0UPAWM8tgu0d/zy7mt3pZfrFekApoVTKH0=;
	h=To:Subject:From:Date:From;
	b=U9NHT3DT2ecpqV9PdHGkPmwkQYSFnKTiG6hc1X5d3eV+RpSGskJq2pRIXZCGf6fwD
	 jBHUqbyFmkgGbMdWJkdS68FG3FU38DNJeN2ySYnHQUajV/O5ig9Oex0/MBA7VoJX2b
	 J7gUGEbDt8IFjm0mwA65Az+k2PFCNHfwghGbr/PSmB2l0u92hki6pOYPd0tGr/eL+3
	 pLveTxSwHkFteNmeJq6Z4cBKVi7HZE9oqX7HmK1blfE7hxK6vkkYq48SwN70kL+Y1J
	 Ox/0sp/3xQhP0d2Ma5CLyRWw/bLBzvV9z41VTbFkohvx926nMF5AcjFhrDKX3c7Kog
	 V5pSuTT/+FZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5642C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943163373.5496.10727642492107892896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c8d18923ff36e886ac56aa46288ee0623c52bcbdb982f9edeb2d1f1e7d2871
Date: Tue, 15 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789431633
