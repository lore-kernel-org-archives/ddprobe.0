Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1DB230D14
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751579995; cv=none; b=Wk3lSmgat+TAYZCVeSbvbHXpbD/vYFLXWVLcTXbR8MOykDwdm0xDH++CPDSY30L8Ro4Lnw+mSQU8B7VcDd2e6YWprlnxgNZpa05PWmYqutAhCRRkHSJsI1cVOVKtSFGZBCW2mVcat3lmlOyRjym6CePePYR0PdDcg1wsuOylyfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751579995; c=relaxed/simple;
	bh=UV+oXZfuNLfjQ/M9SHiHH4ehjwn074YbO297RCoc04M=;
	h=To:Subject:From:Message-Id:Date; b=ZUM40jrr9xlikrq/loTT9Qkv9sDlPAgXrhRnChBSg67xVihuqn2f/Os03v0abN+54orq+VpLCjdL5kxTR+FaSKbAj5cJ0VlZvY/dnLZ/rbKE26AMAfSgOuV36nNV4tjz4dCC897gZY29cWdssUnRuEQ8jxhLbsvKRCQqMmxGYUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7Is1bEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7Is1bEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1621C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751579993;
	bh=UV+oXZfuNLfjQ/M9SHiHH4ehjwn074YbO297RCoc04M=;
	h=To:Subject:From:Date:From;
	b=N7Is1bEOUVVUe/XAJwIMW47nLgLyxmyKXFIQmEA7tJ4DBw9Na4UNzA7ITagw2Ms50
	 BHZu2/5IVsnVuQCs8+4E+k8+doNYpnu+aDg7OG5n5ACxzQKjOWkaBRvFoYQAS4dci7
	 if9API/JUOe9/mN0IXQhdfnv7ONUgZlrVZHU3ELdQonQ1vqovfnK2DU0Fqu4hytvW7
	 Y4LnBZLSONtcvhKJHrMd/guJPivOTO3W19i5XcMBvQ6CUF3e1gAfGO9Q25HCVwyTEd
	 88PpR5e+KOOnFNio2RBI170ZX6CpPCiPeinfKYKFD0YQ71guIAJOgpdnrlxzBsZonY
	 NQDU8JED/tHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E951C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157999357.27238.14289986841012892941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f7265a81407d53e9858bb17e47e9c1dab9ebbc405908261166ca89cde950d2
Date: Thu, 03 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751579993
