Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3352E7361
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788273034; cv=none; b=h05MxXJO/AmKagYH8mRRwrkK+uXVEfMunSf94atGj+FHlXInJVDZIwW73ADN463G+ijvhuDVLT+9fVaUZ/nOjlgnA6S6W7iishiI8aL0+BaHu8eXuFIPPrKPXXPvAD/P5eoaYbgnhYKriiY2N1+Vep0TbcE80y7NvKUCQDCdr+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788273034; c=relaxed/simple;
	bh=h1QNDZdn+lyS7f5mucVuKy3BhGvgwG3Lv8YWte9lSgY=;
	h=To:Subject:From:Message-Id:Date; b=TPqpRUSkRw+PpmNiSO4DNJbWjVkvdT+uC/8z4k2aLXxZ5d1FhdsT5FdSkg/e1nafoOM3phlBfO8Yf3hjTc3OOw0797ohoUz21JnFBejjRO0CaedHIj0ro5H5DL6q6ElfKCzen5vDkIjQ2+n1njtCPEyYT6Uh6jVniiOP/4SwQn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeHufJpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeHufJpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97A8C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788273033;
	bh=h1QNDZdn+lyS7f5mucVuKy3BhGvgwG3Lv8YWte9lSgY=;
	h=To:Subject:From:Date:From;
	b=qeHufJpd8rRw7q2KRelqRliybs+jixAFvU0XUm0wjrtqHBl1g1ZutHLmDwebh0lFK
	 LR08DWntYLBaKBnCkM/kt/btlQPM7ntoMsA9SSVgbvsBoLGvMKzAQFiOuBu0VdIwx3
	 58Js1DK+qbbhviUUDpBCDXfP8tyU9VIZHB2vLJRFcFQr0Wj4khtcZGEeH/3t7RjMm/
	 HYNW9vV1W9qn9OzpBwINaterfcHnHegb6CE8lnscNKxVGdjIgr6jR7XVuRZcFQEzQT
	 Cte1W0OdwAY+wuEO6G9sTZIgxD37iEYE+hOqnUfMRDHry5jeW/Kb8Ek1hFL9g2xLmX
	 hSKgZsWo3kcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC60AC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827303369.29913.1465910971218099093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635a637786dc2bd1662b11dcb33a9d18454a0f741f1752c5b226ff1117b9ca5f
Date: Tue, 01 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788273033
