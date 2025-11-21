Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C921A267AF2
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763733113; cv=none; b=sXB+VRFq0Sklh2Q8PzDjGrYtQFXMHlhEL3I6stsouRXCgrc3v/fumCguw6wc6vxpoyzNgYh8Iuq+mg66Ukds9+vlhox48UmzmpYeNArYwBYCsvupVos4CwoV8kgpWOnaFbAxPKVXnOO1ds48T/AGfMzu7pB4S1IuxqEjJFXjadA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763733113; c=relaxed/simple;
	bh=laPmQL8m/cCe1n8KMMiBietTokZ86C4rqZYAvg4gmBI=;
	h=To:Subject:From:Message-Id:Date; b=Bj/w2KL+Lo4vVVfjnG3qFdxI76IwwsfykImpzNU/YdT0X+ibnDNddrMu/o8H427RfqMSG4TmFPxoFirPSGrZKdpB8/My6EA0SQ113riWDl3Ena8MWwpqSym31T8GHh5/mpdbcGyS5RkBxWK+8MzzsvjrnH2xWu+9Wu52FRuj9Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqlfTsRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqlfTsRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A111BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763733113;
	bh=laPmQL8m/cCe1n8KMMiBietTokZ86C4rqZYAvg4gmBI=;
	h=To:Subject:From:Date:From;
	b=hqlfTsRzC7YS4MIFxs4Xz3hL+jUFyUfCISzyhLWEKYzTp0wyxFsm2BuYOspG9W6k/
	 e5V0qWGE9rGg1xalnLMY0IdclOckG0N5opNqjvNNFmCaCYyS8vvhB6oVWyZN+boOj/
	 Uh8T721Zyuqc173ptXp0HPUzl2PsCia4DORmNgDtRTOjzqmS5ifGgE+oOIP9PGtBh2
	 v+Mzv0RMUtYqf1WpkfvK5HB8YA5nkGH9Q10kKCMY4ccPXiC0OHDjxdXmJYGig9I+8M
	 ahwJz3JfFYTPz1ns4CzCvnjx2OL5W/gnV+5lX5mF/zHnvv/lqdMz95bds3rf1QDxIe
	 TJG3IFvlscd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91579CFC27C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373311358.8193.13464838730845591795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d47dd9f15c14d92978ca39c830590f839857a3908549e551ecb722854dece37
Date: Fri, 21 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763733113
