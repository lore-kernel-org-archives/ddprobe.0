Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F635E956
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781298394; cv=none; b=IArIA7ID7xQpSsJkzn7pBF9u9ZwanPkZzBNaz6kC+0xLVSAL5+yFrw11CgYTFdqWj0Ri+IrM9QVzqL+B6Xzgj5HmJDUZWkgK7JOtLYy5Cx542DT8qWHUsCgKBsvOvGSVj6pwWlMS0b7noCSnL/ygIxr1xC26tAQbagTEec/MPD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781298394; c=relaxed/simple;
	bh=uKaW3Ezf7wAoikufMBJ2UqUkYLTxyKkIAEORJCoajww=;
	h=To:Subject:From:Message-Id:Date; b=VcO3f53VDf5BU39jgUh0jK7yU02q1AA4Ceast6wuVGolykJkXl057A4vGFI/NACz6Fzl1eWEStGLj3ocQIOlQzB0xzXEetSdN2dg0MJVZvNKwppaznL0h9ZGqFAIEOgMD/ootF8HiV01zk6aS0Dc43l59YcIzx8DIBuhzG50Gw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G195YeUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G195YeUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA062C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781298393;
	bh=uKaW3Ezf7wAoikufMBJ2UqUkYLTxyKkIAEORJCoajww=;
	h=To:Subject:From:Date:From;
	b=G195YeULRv+uZ/2HM8cHvV2vtTpYL8Tw6BONOofWZgMmUX/dLuXFbrCBgX9YG9j/A
	 /I0gDvwJqn7NLhBF5L//bPAYNQBcXExU00Kmv10jyo6XbqHmu9DLC+xeYYW54zzwxt
	 INFGYhO/ed5GZW4wGIXlCRc5DR9ZyXgo5vpGbp2QG3PcCVl5GUAwFqYyXZB5mp0qtP
	 oVawkgVvT19YjYw6mjBIfobqmII7itndBWOo5cj9PNchnBlElhhQFLqlzjcH/W94S9
	 ZzLj0APl+eghd+b2JUfyCEQ3pGmfkMXS3qVp4kCwPYcQzawj4fp1zxEKtmQaqElwFV
	 2/aR4Z6vpajpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4BCCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129839368.16362.12757460272696617655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a058a31fc1d4b3e0c83e56cb08b73bf432df4fe8946211c279d0cfc9472a0814
Date: Fri, 12 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781298393
