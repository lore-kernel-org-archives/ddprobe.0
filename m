Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F6155322
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766323434; cv=none; b=GNOqjdoUsMj8T6emjUiT2KWOetSL+jZEyNebYlUSpfCUAKxdOJ7rxiJ0L5McEQW3qzeQxEtwI7Qt0ul7WRz1WhA0vV2mpWrNMhZeE82uqnIi9ql+Szk4Gtvrw0QsmUFe07amB0iVUzCkEexXb+jJmOTc/neUBhvZQZezpjc94Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766323434; c=relaxed/simple;
	bh=nDWzAwbEhZ+IRszgyT1cGIQBf28l9R91w7K5xPECAOQ=;
	h=To:Subject:From:Message-Id:Date; b=Eny/tCVlBLjBp9fm7WVZsaOUR4s6gTG/9qmcRZpGn46ayLTD0N40lP5On6fL5fT5eIuQZRWyucMy7A0hXXACRb21jnurXJKnUnvGgD4KO3Phat5DNVJckYTSf5DP8Z7tOQfO9wVXBu0dDCFIrXzKdjw5fJbqmwSxdEdsQD2ZXAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN2ayBOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN2ayBOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A8FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766323433;
	bh=nDWzAwbEhZ+IRszgyT1cGIQBf28l9R91w7K5xPECAOQ=;
	h=To:Subject:From:Date:From;
	b=DN2ayBOgtdXWUSuM4ORILNVfacIbr4RG3Z5shjv2YC6tanpzg/52xFwoMuG+xzsE7
	 24o7DMhEkzaMZZu2uz1ZD75R/Ea51/MAt8uO7fLUzThXMRRAmPZJJZ4cP5IS3mPKFQ
	 xfqlVdxTkuoH+JgKHZxyedeh6pfcrF649mSbkBzx9Mu1CFzbymcZF6hqLG8yipomIQ
	 s2UukObeEQdbCoHwfc1/4qmMJzXsVUZQycQY5WonQ3dnwCAO+wHpBRoYK9dW+QDz0t
	 Fpz5JTjSNRVt8depHYekuKBCbhjr39JhGwqx39MqGfb2UE9yyZtx1JPV6jqbSjxdGx
	 VqQaHIqbACbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF5E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632343358.8494.17408053575220349749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3abded2921bac05d20956d1c253aed874faa20bcfb7296621afbb72bc64580
Date: Sun, 21 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766323433
