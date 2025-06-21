Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A3711CA0
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750467594; cv=none; b=OgMZ9/9ACBzzArZlUvWAXSYL9pAb6S9Gjyq0EXzMeY3Kuc5pxEiAUs9CPTesvqdxhUnwFQh+YH+823/yLp05EUt/yRNMgVwfQT0f9hk6H8skWxuJs2ygjF5ISq0eGuIdYzaFaOiRSrsdt78/V/zSgB4mfIXEO7Ed0rRBd1QHtmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750467594; c=relaxed/simple;
	bh=vZa8VwI8y6rogZpQOLy0KQUAIMsKDCsF4czcX37r/Qo=;
	h=To:Subject:From:Message-Id:Date; b=e52kaAMAkwQF9WkUe72dPPFD7uMJMiO9yqRTO01jOJ4oe3kwgRfK+A/EtgfeCdnrk0vVMbn40QTEBLr3gyWUtZG78jryRHRM/QLwkGuffmpSDJY9cofSUQAkhtRGtVfzYrMs2TblSqam53fu25ljefl8c6V6ea3tn6Pqt2LAUnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+rkOtEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+rkOtEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A419FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750467593;
	bh=vZa8VwI8y6rogZpQOLy0KQUAIMsKDCsF4czcX37r/Qo=;
	h=To:Subject:From:Date:From;
	b=C+rkOtEIH2b6nbFYla0PrIiV5/A0d7+kZ4Xwgub5bpIq/oQP7R9GREo7QCY/CcT8x
	 KykKAEOvUFdJLZ1I1gX/Gvoncmu/1DLnN5yjegitiKBRa1QOF3lzCyGCtsMVGJjJ+g
	 a/ZFKJkDslBtJyd0U5L3dzytU5WU4qyXam+CC9IduComdwiojafqelGUhfLqp6pd1B
	 0Axy3rTg3LHinH8nBWyK6DgWJQPhVX/5oQ8WOpa3/+LLXrols/wmrMkBxW7xANd6CZ
	 A4dTpR6ce/U3SOz/BZT4VUTEaAcku1qgvW4Z2hRVobKYbWMmrVdxqWjsDGpHyyOHpR
	 a87ZVfoTElk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310CC7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046759357.20823.15117395407842267354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bff51adaaad2ee624d913a80779b454895369300765851fa159c575329d0df
Date: Sat, 21 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750467593
