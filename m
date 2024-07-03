Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EE3142649
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720007723; cv=none; b=ba8AnJonRAeihWS2ea82KlQen7nlFDlAPu2yJin1JMspWL/sRS7R7LsfTAHKXPpj+V3eR6nGs+yX6zMvJAQsVwz9CT7UmKu7QjoznGeLhfLK5h4/G/Sl5f+8RjROU7ZjjxlHUMcIEjIyfu4L8uGrqMCi6wvGBja7ECe0K1u6yoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720007723; c=relaxed/simple;
	bh=2K4ANNfbQXpgSeb01hbrlcHNbBgKC+hMlaSh6tI0b64=;
	h=To:Subject:From:Message-Id:Date; b=nwE79DYZarngX+tJrIuDfjIizsERrh1rx2Zp1wA+qUlDyfojULqQQOpNkmjHWhvt0YiodRhrUTur++p2hramCSXqgkDAWBUZmkpLVO+FrxbTLlmPcTPki0wIBhnLsuc42nPskSRy8HmGRTQ9EotKGIDvD5I+lBr+rOx7zP7vtwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwmMTaxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwmMTaxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D987FC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720007722;
	bh=2K4ANNfbQXpgSeb01hbrlcHNbBgKC+hMlaSh6tI0b64=;
	h=To:Subject:From:Date:From;
	b=uwmMTaxJDZXapiI/eLeCfCyBVKQyhqEzPBbOPVgDjtqDFikMznRHZnJw7QDh3u3ef
	 u2DYHZAeeCatuKl1oL+vHT0GtFtZm4R3TqnDRe4ToxpYCcgXFkJo3nMHOkVyM7Pok4
	 /YSo+Da55VSp+FN13PUYUtThaceXvSkfwNnabhVnoq2NQnfHMk8HnjRytoU1vxK/bh
	 tmvDeadXahtNUbEysRHxV/5hP6hrrlgQHGxAr8L75P9TlLlwLD8kcvUU/qnAy1rN4w
	 fWVVAgFyxll+qnNW1LDkdX7Lr5Mrn+gIOzrNFdSzqKWLVKFaZD+puRb1+SpdP+qc3v
	 zEaKkCYh9wqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C94C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000772278.9069.12687100863629183030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876142a8bc0f78e5dc914058af2b549749de92a9be8cdde9cd39bedba2ff1b5e
Date: Wed, 03 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720007722
