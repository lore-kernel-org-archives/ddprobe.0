Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C50157A48
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734725154; cv=none; b=tROwHvjAAAJteofR4aS2JU4tojPQ3cqE5rbWND7IvJi2WnAWlOb0x5eAsKPYKDHa1p9CaVHIokuYd17zACqdX3LyAHrR1q2t2QT9ahrKuQUt3wVf2IEzyPSySAuQuB8o+sVVJ+ruM9beLLISeyK70jJTnGUVNUEqkQ9i4ufUoes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734725154; c=relaxed/simple;
	bh=dF6WK69Z2NXjEFayfjiPOM/YfMkEmHlnIiEzlVrDCGE=;
	h=To:Subject:From:Message-Id:Date; b=o8PfHf1ujzs2S+f88vdpRZHCcz3Jxt6G7db4kgZunAlHhFfrC22gWjjbqbJ9LWvwk5TMvc42Bb8jNOiCa2xb/uj0ogaqysd5JjRwOPN8tJ3VE/0lLRcLXde29qqDBZMgceGI+lJzIJSb3h6G7Jn7/PP3hYGlijoDMlmAZ/KTV5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTZ+uaR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTZ+uaR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA565C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734725153;
	bh=dF6WK69Z2NXjEFayfjiPOM/YfMkEmHlnIiEzlVrDCGE=;
	h=To:Subject:From:Date:From;
	b=cTZ+uaR/Azm1ygaacij3oLvqYyScp7jAgncwN4yicmuiJ3gbhDwRfIOb3CFm0p63n
	 eG8PyLKUOTpfhM/DpDeFEVATh13csx/p+YqC2iDFDt8DywrH7sFukr1QMEcU1hfnMg
	 CWK+9oQWJ9pFmXDiwDi3FWDds1tHaGFCbm5/PCbRYqrSaM1s9ONxsdRh022KhaxAuk
	 mbKzD3yoWI2fjq8B7bILKXnm0sx1PDMbcFa+wZIw57/4PHphGcHoXLhzCUWfunFRd7
	 ivC91Vq+h4zQOn+gXKq8ib1Kxy4BGTphyX/83HEcTWLQnVQ62NsmEjAjy0ky9kIWTG
	 BvdpqYEejsZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C7E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472515360.15402.10122811500743728202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a66c6a4f45af813fbc391c0d773c5afd069f1c9b481da264eac0ac1d091c6a0
Date: Fri, 20 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734725153
