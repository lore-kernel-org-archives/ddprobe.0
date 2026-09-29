Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FFB20010A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790700034; cv=none; b=h6cuHBcyvbBKt5ACX0teDVtVy6YK4Ufr00Oov/IweSve/4V9Uif3j+Q7p6lgxKMqMpiGt631eRrMCp3fQ3FuSpWBaPZT4WqhemD7QaEnA0CuOio7EgsDStP21IIUjJ52I+Rlha1wG3uzOoIwO9sJATgcU0lrZtznO3uKE+0z4Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790700034; c=relaxed/simple;
	bh=pTDTz6aKyv8TW6QiHYiANcYXCoAGjg8i+3nSf2Tku3s=;
	h=To:Subject:From:Message-Id:Date; b=UhryBbq28V5iHMML7tjh8nl21petr4TbSFCaudBpmgUfOm4G43wyiTDNTavrbpQ3fb1gSU4WlxcLVOFExla0bpfiGc39q4h3HWPcRKzmHAIZSVlLYJqvzsdFWJpx6P9hfBalekhahPr+vByMHGF15FjF3j/KSeejAmJ/sl87e08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCLNaCna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCLNaCna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4E1C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790700033;
	bh=pTDTz6aKyv8TW6QiHYiANcYXCoAGjg8i+3nSf2Tku3s=;
	h=To:Subject:From:Date:From;
	b=DCLNaCnaHJ3xA2ZKdeo8wKWtQvIwQ1C7ekoc7apCHGSSM8ND+M3TMdwM7NrwWhhbn
	 EzXVIcZHxXeuty3+EZhtuEnHOMGfKZ0Svz+DEbxaYM7TH8ipNM4PYgiaJXMvnT4q41
	 f+VvgRpy/akCuaJUZhguo6fUp2UfEeY4Eeja+HTb1Sdui/qjjvF7zxKkkHRXsYGWwL
	 HdBgSqPn+EVGmCtzE32Z/GbdhDinbMEdI2C1y6OkR2lo9ouo3zbFKjZNomFrFAbpgV
	 oCF80s7g/1LgBCQaXtjOJmdy0xxzcFE+gTfQ1kV7/dgJ5iCWb7f195Kw4dBWoSl+nJ
	 pzBiZ0tAWkJwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC7CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070003368.23115.3714675571647255848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6fa8acdbf6f6c3ad3071d779a5236cf0f6515d22e9bc513cad79daba674ff3
Date: Tue, 29 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790700033
