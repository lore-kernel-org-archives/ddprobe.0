Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81581A08CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761326393; cv=none; b=jTXwF6rCpl52xgx+tXmwXQUS3vOMIXIf+G4bkf9exgbiYhDABmTsOzN/BJs9VC5eg5BAEoBsmu+YK3eBlgkfcS1gL+JbfO6U30jy5eEMzWFR0Hyr+0XE4sBDSynsMIA4tClmEDJq6bysFE1jGIJuvH0y5IG0oVa4bW/XoqKu6EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761326393; c=relaxed/simple;
	bh=2df0BN4d4JG/kKkvEZ81JxG+8R+DLdjO8x3S+jlQsyU=;
	h=To:Subject:From:Message-Id:Date; b=JqDZkfUjz0e6uQkTxF7+y8tAaL2CoA4zFdd8sOELtesdQthR7khgCqbuN483hiqRXIWRRjQUsJa3XsdtQpVOhjFM6jd5lC4VcLfnGTNe4q7xadohs7XpTU2ARZk+R3a1OYekQjuISV6sZhmol7rYI1cVlSOpI7w/Pd68zUyHiZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM22GAEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM22GAEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7378C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761326393;
	bh=2df0BN4d4JG/kKkvEZ81JxG+8R+DLdjO8x3S+jlQsyU=;
	h=To:Subject:From:Date:From;
	b=ZM22GAErtpZYkpsUcZMZNNCopEgWlftE3qt8aiXVPG/S3a4KQqD0mRDgVA3L+mWF9
	 vObPSgXctKD1bGgtM3ZOJeg9ZFrALIukkKihDuOi9woicbRFfXxExvJ9+VIXVCgiWV
	 lUD17Cl5UUvJWSG4p7yasAvWvlhsnk7pbYs4v/EBe30MbkU1jOcA9nj+THjmNnMC7D
	 mZwuGrlKVGrEYfyhTXTz51eKnmp2GCXqllEkeGlu2XYgdipHjTJxttDlPrLVPiKNDZ
	 SATrH9ye7WBA3LDluyYrVyzqzo8WSzOjR5jnPJKbGD8DcoIValYgmMeyya9fs3cldN
	 FGpokV1vLiXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953CBCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132639357.12776.1765304247396929759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e25e290e101fc77bfffaf42ca4cff8aa50488ed0af79a9dd3a36fa972bb3ca
Date: Fri, 24 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761326393
