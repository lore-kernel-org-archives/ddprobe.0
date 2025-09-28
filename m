Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3043619F40B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759085394; cv=none; b=tTMrLDMUZl1ZQUUEciKSWuAFgQZ9CcHk8v44mCnuzECbV0QtI+kDnvfmPbwV1lp+GO1SHm0T9XA49tCeNpXML2aBTBT4IIHQW+0TJoZ+KvXTj11I8UA6hFhVUW7zERpJrUp52kUCGslF3Ebk8boautt4SABYr27Hh403rCrmnO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759085394; c=relaxed/simple;
	bh=e67oXa+oxDD5Mok5Z2aSHja4tOtolGZvGJjcbRo3Bkc=;
	h=To:Subject:From:Message-Id:Date; b=Ob5WDyN8S2skFs8rF4zsEuj20BkBGciq3//zbvo+P4qQBPiO6mNXgN+G9XnPH5y7MlF7XvIqr4ZA6kASXEiUpO8RRxxs0ZlB18WYB00MuCT/hSSERQQPYEfnL0kjh9gnofOer3V67pa5qOvbtVjOZ8UBHUdqYBXi7zz7kOUBQAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz8TwYFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz8TwYFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A4C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759085393;
	bh=e67oXa+oxDD5Mok5Z2aSHja4tOtolGZvGJjcbRo3Bkc=;
	h=To:Subject:From:Date:From;
	b=Zz8TwYFGu/eAbUvhfSumJYRSh6K1ovTrC7JLTGcUjpi17HoTt/qWx28q8GfbWxGbO
	 Ej2u+U9qXPQy0imR0op1t7MOQl2gqKUOQOXjp97P6/CabJ4W9LzL8KXOSxENqagJgx
	 n70e7UZOgiBe4cCZzfTXaFu/60em20GWb8gZYPWYpE8ViQtP71iGm2uyG4tRhLdfJe
	 7zyvtPEmw5bULf103mt2nVb5RqH79ent4uYfgV0MOb5oPrwGDdlZ7ipPYqjjv5AQKv
	 ADeDkKGa6uKC2ynz9JBMSVeMGSShfZGdp6J4ph3sDYBF/uaWZ2MHJbAK/GVzlQ+qXD
	 PGBAerFbJmaHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F2CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908539357.20434.6133952451234025067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1cb387df4a52c14ef15d340fe7c7deb06ff1bdc1c067065d6943ee0e5bbff4
Date: Sun, 28 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759085393
