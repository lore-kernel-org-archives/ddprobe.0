Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8517FBAC
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743468594; cv=none; b=adNBgSMaBOIaa3yaHYLiIxys7DTbdW1YSb2A8Zj8mY6qhKezq22ZThW+dDbmGXcnzlemQMOwuXFMVqbau7ku4dCyh0MEESX3AcVhILxQLCV04dTShyQngDX9Xsu6T87iXeH85NaDoWr80fOFp5vH1u+hKq2qDw3HC4KaVWQyKf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743468594; c=relaxed/simple;
	bh=X5wg6xuqXhkhaDmExm3GhSOOBP6NFkUVByF9XgE2aKg=;
	h=To:Subject:From:Message-Id:Date; b=a62TMX/oswEZOgmHCdI5WXVI4GQx4CzT5xUgdgeR2Lq0grqCCQvxjgqOoH7Tp0MEP3ZZWYAmqeUiopBKf+3oXL3uru028SJQvG7+06yZhsyL/L93Hb2Z2HXd9FHB3DvqeXZjC89iNUDun5t1rhtQ8XUyfoUImLV1FSMnZfMs5KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGCScMC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGCScMC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E86EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743468593;
	bh=X5wg6xuqXhkhaDmExm3GhSOOBP6NFkUVByF9XgE2aKg=;
	h=To:Subject:From:Date:From;
	b=PGCScMC7idxkLBpFFxdM4IXN9L/dxo4BcwFcIFkL7OCkbVuHxxTsAG9gbcGuFk1Z9
	 DwRpd3nrAUXpQRbjekP11+jK24sO0uBKaQJCeOYXJRivigdJ3SCK5P8OxgpKyTjBAz
	 7qDihuuHl2T1FyFb5eQu+nvpKPPk2KEZzgJajLKewSDICcg7xLlOJoo1L+dctqPh8/
	 QaOz3NpkFcnQMFxksZAKQX/QTptKpqGxLOg4/vV0JlmlhmD7VWPmAwBB9+NCR2i6EC
	 JKv0cIvaEbHtNipxzqEESxJmu8YmvVyZPkpx7MLQBHvM2e0r7eHptYoOjqdKBdRls1
	 H6oQBZjuOuPjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECCC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346859357.423.15180329647362247068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687eeab3b95b61389901dd1a2a01ec909f0a9f94386686d490b792e7a5f21ec2
Date: Tue, 01 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743468593
