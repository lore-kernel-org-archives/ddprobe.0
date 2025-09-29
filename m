Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6E672614
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759174195; cv=none; b=oHy+9X3jG8f6ov6BZwLsalr7L9Mstro0V2gsbTF8VUnPv9UiYmBNAEJYsMgNUNV0viHCp4xI1OouBjyhLSWG6ZjOG0bxvhMvwlW1B5thXUl+7ZyigPQTUkjuB3q91c8C4XcFAKLytRugT/j08upjiNiuP4HRE3Uz3XDGldnIh/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759174195; c=relaxed/simple;
	bh=kcxkUfZwCXwDzEERKzM2NktDdDqPmPawxm464wtaueA=;
	h=To:Subject:From:Message-Id:Date; b=MJ/07EDJCuy0NAxOxIwtB9b0XGLHSB3x6fDzGq3VS97SXcAdp39TFtfLl/6Q3iNmzbGMV5U2QXY267LPiGVDA32ItRB4lnw8xKDXytCvFw7GCWwtBn9/SqY5A7rJdq18cSWXsR1+DgXp8QK4wzJFrFxnrxcn8J0PIO2LewSJpTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Quuwri8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Quuwri8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E5C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759174193;
	bh=kcxkUfZwCXwDzEERKzM2NktDdDqPmPawxm464wtaueA=;
	h=To:Subject:From:Date:From;
	b=Quuwri8PNqMtUrTJWD2/4HWPr3Cd9DDklnERglfFKhVIg47kl1TmA5fvRrrP9jWSq
	 +k9WxvVt+Q7UpKl/tYgyQHTR1y9nVmVnLr+qBfaMDbZX4ynLL1YRjuN/51BzXRlTrF
	 K754QiT1b8OXbTY1MfquCkCGrG+4H/iqHeEVPdqa/idwVGRjPZcvfzlCe+I/CDQ0XF
	 cek4N39OXOCiU+BkEpZkIcD5DFCcyiFVH/1pq31VMqIRnv/Ig/fVNQxSaGW1zHkQ+O
	 UV5hRrjbAnW8qrnHA89h9rcUWUbXK8Hfpgfy1dyihZJaEOHBn9BHYbZV6KsiXRJ/jP
	 legxQCzWtxtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709CCA468
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917419358.29404.3023390602634260035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259f2df80c831a847f64161b7be3212f4b16816c9bf918099a1f2b075227376d
Date: Mon, 29 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759174193
