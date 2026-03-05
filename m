Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F14337F75B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772719494; cv=none; b=CSuv7CNjXKBV6qug7UGp6xIY2bP8t+9l6gmw+EGdyZiYzIZ6Ix1bBLLzrc+ZcwByaQhCG/QGUZ/1NR19LAlrSay4tWhoLLdyfAkM9E+UcCy3kbdXswVyKkM7mxwOMcNd5TcZJV55s5sHFb475PDNE6whuhAZO/xS6ZGFyyA/Ufw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772719494; c=relaxed/simple;
	bh=OlshpvNiKmATw0miHaEhPYFMP+IAGn2ql63/ZcBnLe8=;
	h=To:Subject:From:Message-Id:Date; b=Ed2O47g6CZvn+NUM0wZLMcdHJq8p/Ani4aaM9GH0Eni9WmVvpVg4sWLOsnGGHObgXLP4c6NUQvBgDfUbC56sELMTnO+vbYKRd9vCfDqVk3B7Fvh5XLh5pWSvBihncfJzS5wAOBytArLDq3ALBaPgjEagucPpOmTD/yDSVk3zBnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvHX9g0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvHX9g0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84F6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772719493;
	bh=OlshpvNiKmATw0miHaEhPYFMP+IAGn2ql63/ZcBnLe8=;
	h=To:Subject:From:Date:From;
	b=ZvHX9g0LHm2EXKIAGODngKs2br6ohCT0khVcCrhNMLr56bq1wrCDZqe+qzcYbLG5t
	 TyqyMuTX+/GYEF6H9IMOxc1wRCcgFx+KheyCEUxeYD0NFmjjImymQHpz+kPu4yo85i
	 ZgYuE4RCWaQmbb+BoxAV9yhn4tqgrhd7RG7zP25zkQ1M3RzouFfUuub03nG3fOtOk+
	 dPoVAlXXm0tJwjTHAKCuTwvnhaMqK6mVqjrUD9A5sgNDZ/XSKOnubuaxswBg4sE2KE
	 +ZmpGV2iPc1DQB5jJ5JpY7CaTek6aaTQ9TcyNm3FdRedqRghl8mKqAUVkqGt/BaPDb
	 N9X7sf1a1eBSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA5F33A6B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271949367.19308.335275105689861637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8ab2e6e0d5bd5e2fec6160ed0a045a7fb2378352abb47e40dfbae53994ba3c
Date: Thu, 05 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772719493
