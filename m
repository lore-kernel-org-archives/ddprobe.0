Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB0129CE5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727627754; cv=none; b=gr3FatrEKqos2rKFi9YiUCvyio/3Mp+T4bm4hgnjc7f6vRh5YK18Ym4ZqbL7TFtcdxFAbU9UobRX8/bcQwpRhfmAD2MLESAoURDG/Zc17NzjALaqgaGZ3+d4J5y5tuAiUXB+oV5xqRSv645z6cfPC9HFNIhwd8bovHLvHd/Yj6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727627754; c=relaxed/simple;
	bh=TeXxD438IKXpMyaOuC1UvzQaz1zQbxol8ptxvuIJNE8=;
	h=To:Subject:From:Message-Id:Date; b=B23grw02VgWz0Z2LkFDIPInqDyVrXFzIWU53sWiepUocQ50WtWcUmfmDTctBLPphitRWFdg7a2nX8zK8y+F25DfMsCpdLUqERUdRkJjAEhwMVFy8djZwx9/cSICeDhxrJfipk2sURBDJeQ5STFgIsYD7FhU8PUK+KyabCEpIBzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlB2U8AF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlB2U8AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC236C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727627753;
	bh=TeXxD438IKXpMyaOuC1UvzQaz1zQbxol8ptxvuIJNE8=;
	h=To:Subject:From:Date:From;
	b=rlB2U8AF3AgQn7OEth60F/zKc1jR9fSPv28mGGoDNnYsH/CfPLz0xWmrmUF+saEi3
	 uALHHGeAYmc1bTl8MEQiZ8077AiWzPLN+52F9ZnPKC55g8jSzWR0563MBRnO0cKp++
	 sckSOD56oZCiBqbuIe9VuCCrsWE4s3BLHF083KJia027Fng7nl4usOauxB1CRzWGbP
	 DwT09ID2LbFjFrfwtYSW9ms0CUwvt4wiBBI1Jc8YKSfP/sgnsvYMFGQKFn7R+yV73p
	 aDFva/+9h13AWvV514AT8T4wpFTxJxJZl8EfCEMBw/9f+Y6wZr4eKCYu2jGYjugpdr
	 DO46P+kVd/Stg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C26CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762775358.20270.7604250668971744881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f814ce4ee5f5c299729b990c94b3a41c07ae3220f842e3624cf6e00353cafc19
Date: Sun, 29 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727627753
