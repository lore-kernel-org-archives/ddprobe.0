Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4948313D285
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722488754; cv=none; b=AtLIkCak/e3jNjQEclHV8PqzZxT3K/d+PZZCcTOe6typDi4CDM6BmQXCnU2vruAm/TKrlwxa0DO0eT9uLgWBCxoBzor9D1lxwyfDavy8F0CMaYYyCeSfdAm67HUPM9cQeRYLdjoO/MA/fDD41n8D4caaQ9fDhEk0pogKpyJ84lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722488754; c=relaxed/simple;
	bh=hFKkUkVkjZYWgmwGhoZBiRDdMxR8X2ZZhsAeUdG9mDM=;
	h=To:Subject:From:Message-Id:Date; b=FUADS/1u8NoX/F6W5CU9emd5kTUXrwPc6r1Kv9mFkkOaf8Ja4suA9ME30nPABGncTRA6WSwKv9Zz98XSaCeOTiE4U6lDF24FBqDgaL2mVujrOX8HmOo9m4fWYQmslQUWebMiVGyqONJqAFlGYb5fmGToZRLY+8zzWnM4USGpPOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdHz8gYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdHz8gYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A6CC4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722488753;
	bh=hFKkUkVkjZYWgmwGhoZBiRDdMxR8X2ZZhsAeUdG9mDM=;
	h=To:Subject:From:Date:From;
	b=mdHz8gYKEvJVVSs2IOH6ooJp/NsLPrxLcF1sdc0MYZ4sg9GhHJau5/YuxK2TSNuT8
	 7RZzxt8g0gmfum8RSwK/e3k4Rvt8lOlsdpMncrCLJVd6TTX/XgJnyd5I3fZq1pEX/y
	 IAAf2nTCj8v0BIVYdIzDpRHLRqC80a+MYmqrU7KqOBrRune9mb6tPDcbHiLhhEFld4
	 Ivc9IPdx5cnDkOY8wqPxUvAnrAU3L+i7TNHrKZF0diLPpTLaD2v5r1KPgqskW7jzQ+
	 SIlQi6n+hf6heVUUlP57aMQl/1Llt9/wZACo6ZB+fqddVrOQTpukuDggOhIwSp4TD5
	 9XnapMJNU+PWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98619C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172248875359.19126.17544231231859295024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1e2e8d2fe2922da82cb7eeb0803dfe98ded5541714194ef9dcb077ae21c8fb
Date: Thu, 01 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722488753
