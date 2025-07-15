Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1666725D55D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752568194; cv=none; b=SSGLUiDOMZvnvnvZL9awyzjRvKwUMyApH4+J+tZ1iE4dLi0A3Fu7+8UaQ6YMEQTjlzD+HB9OE0HukkyCXX35dupnbKTDQTJWIHbP6kD7B9+rcoj6w6UxngovmR9L3RjwNBEJM4mI5YWsF138RQ+WPXltQv+TO/dfsLv/Dfyf3Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752568194; c=relaxed/simple;
	bh=krTj5PFxYiD6uuZf52pXHIRMBj3QcrRE5KDq14aMnyc=;
	h=To:Subject:From:Message-Id:Date; b=p56q7Dfmv6ns/31ONP00Lx9nm18DAJsrN6SXdKWZEabJDoK3Cf74Lm896EMEXxxnR3qp8FmeLnRpfiwmiVc/owBLApxEWRh1CTJzoBPk5NQntOgn2b2pV52clXBU1RfnAFdBj7mNCFHqxWM+aSy734D3ahJ3owbjrZSHtI5G3TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ+k7fx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ+k7fx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1123C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752568193;
	bh=krTj5PFxYiD6uuZf52pXHIRMBj3QcrRE5KDq14aMnyc=;
	h=To:Subject:From:Date:From;
	b=hJ+k7fx7F4DxVWzvDfI3Jj8ZyNEY/uMjLXMsuH8wDY3w7K+yY8XHVr34R+ThCGltr
	 GSfGUaSccncBj1TfQHTES/EBVMxVTCTPY0mbf5Drw9xQdT5qRbj3LfDcyyTTz/ajzS
	 0CSsUwqx996vY5z1DehFj0dnbJglsnNQXafYfXZ+R9kfbNEzQT2V//7oaXjOHtkDXa
	 fAc1Byg+OdJzJDwI803qQzU8iouJhwV9KNXYxVZmpve66hsRv8G/MACPbEFLEnqyNP
	 brwcLi5wSl53lyrW5qZRrStgMNfmxBowPiXWK+Nhryb75+b/Z0Qape0Y53rXlwsv1/
	 suQDYnwhjS0hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F818C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256819357.9452.9303973629559551647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1b74448d5e61d428458f4e61ccf5bdfb3dba6912cbaf0549050e3af8c2c881
Date: Tue, 15 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752568193
