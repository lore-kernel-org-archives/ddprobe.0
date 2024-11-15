Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8661D5145
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731689754; cv=none; b=T+3X/D+UAoaj1takQiGeOXXPd1EpXLbmtF8qaYWhHiAm3vmPUHX3c5tuSctT2Uuat6726LCbfEnwihAKyvxJDQkjbtP07n5RSogQ6pEqciQfvFw2mUoa1rt+mW4d0Mo+l/fsm1wELd6WrbVkQh/qg9IqjxevkI2x1V+c+wcmXg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731689754; c=relaxed/simple;
	bh=sKeK8IicGnq6oDZERFM7AP0sLgREqY2+885fstydo5Y=;
	h=To:Subject:From:Message-Id:Date; b=ELs6YkovSXIofyJaUyzETFuvvu37ravWtA9UAz9H96PQFnW2OfRpTpZRt1A1EsLQu1hKw+jz99YmkFU/Iwq/vhc8I8UxhBkaZ9k42oyK0QVM+D6EAUvvNShmvzhF3wieh9kOU8ATD42lfBJp5tm/jWX8znPrZ+Gxu5pQaEyvGrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE6F9ZYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE6F9ZYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8704C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731689753;
	bh=sKeK8IicGnq6oDZERFM7AP0sLgREqY2+885fstydo5Y=;
	h=To:Subject:From:Date:From;
	b=TE6F9ZYTrQQknh5B3Fo29/Cc3P9kFnSXVIfFIPiZN43kPfjieoL47YJChVWgntd/z
	 oXD+uW+dw3ppB+BoWbvsrI1bcEYDeIASDPWIg4/WIIMhUTs1hQs24zuKZJXbMYMY2k
	 cuM1++jGVdPlsTV1aveD6NA5HlffK9KN0LciI+SOongjPkOBXof/xqfk1iIfMtqjEr
	 J9bhGlflV8/JayogDJ5jO7DSH+xecdZNOtItSD74m3gY1KIJGPnPDxSYBuuWGxYUVW
	 r2eOYufXeG4xxkeC0Mv0QtKWPcLdS7sjxWrZpA7NB8oeKHViggwI5r3Pu66gcQjnUy
	 No16dnTdlgwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978BED68BCD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173168975361.6044.9878806436024877155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76272075b036f9014bcfcf2181ea1afbdd077ae7a219b77383710df2a94c3dca
Date: Fri, 15 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731689753
