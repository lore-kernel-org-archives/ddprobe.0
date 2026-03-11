Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE1520E702
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773243894; cv=none; b=CSU/uMjDYxK5Z5L5FDu2TunnSKZOcBx2iX71I+K6a9WnvLGNbBIiM43D3/VyDP4UQPlLv9jdKfX/PKq5j6xAHmV1ZyAWCIGgBf+gtKpQX6HuBHJkRbk1z2ZNwCU0CeR10Aox5PYIFwixzCslX/nge28eLJGdNYoPBQrzy7PLZOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773243894; c=relaxed/simple;
	bh=nQYnx1J3IWTvT6Ix4F5okjMljct//LCSbEdEGEp1FCU=;
	h=To:Subject:From:Message-Id:Date; b=aJKvTPLE6E+U2/cqzNlAJeVTvye24j8x3yty7e62Iun03HQc4qa/5fJSYBn5VWm/sUfhHYXfsLBjvIrOuWIVYRdIS1FSFFoR34MeHvdeNo2rpkjPdKqeIZjWXvICmv+sDCjyOyXaEBC2zjXuiqqNw9/39FywesR7sLP1QBU5WxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odwaLpdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odwaLpdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773243893;
	bh=nQYnx1J3IWTvT6Ix4F5okjMljct//LCSbEdEGEp1FCU=;
	h=To:Subject:From:Date:From;
	b=odwaLpdT4ugK4m4POH7rxHehwRRVCM43u66pOJV4UF922JXRWGJLmCm1270mnw1vU
	 ZF1dZTX2LL6zLhBIfpFnA3TdetdmQctZr7EnMUJHvMY5qN3mQ4hD+XAu/FIJB8NGX2
	 jjuhNjJFiu4dli5k1PC02ru3mPGzQQoWdlX9PkGa4j8Lv724yV115GGKD7cG8JJ0mu
	 qUyViJ953/q1aAcmpPoupyE83E+gscMmD1txrUBEEdLuf6GGlubwKJB/MYCJD8ScSq
	 7vW/FNiesZeYTmoB2N2b7++tz/pbG1OE1o7hpYgvDds0lAPZv59dzQUrOdJgEZYoEQ
	 k/RDMLH/3oTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170C112584E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324389358.26215.6670804618886407211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac8bcc81babd570bcac8b8bba9e2637f89cbd49cbf59884e5843f9aea3bcc7a
Date: Wed, 11 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773243893
