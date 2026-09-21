Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691EF41A921
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790020834; cv=none; b=clKMnzYGflxnABQTTKHmkJk0Ih/lmdGBfWyn+t+1N4CdIi3VyK3q9xTu9pXZD2yQB1ht6DjTr2aUf1bxtdLW/l1q8MzQr8Lw5SRNsXINQffRoEu/Y0e7CJuWSgaA6GRojky7biI5sNntYrAb8FVXItjrQjJJBQ1kEF3m5t6jvkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790020834; c=relaxed/simple;
	bh=0EgOt5MdoHMGLRE/Suj8HDpzI+ihPFsW60j7rPhGqkQ=;
	h=To:Subject:From:Message-Id:Date; b=SPNX6hvMGs2Z2BMqMMJs0a7gELxcC/05DC1n4pi0QVu0ZJzly02dZnZWbCC6SCcOdPhAfCXf5zd3zkGheFRB3/o3feaVZqNE0kyAQmKoptT1WfdJvgUIBeEIMk6YXYRXKXwKPTvCxDEUHgNNXqeMtEWq67O4v8nnWeUkfyV5BM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkKCPkBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkKCPkBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F109BC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790020834;
	bh=0EgOt5MdoHMGLRE/Suj8HDpzI+ihPFsW60j7rPhGqkQ=;
	h=To:Subject:From:Date:From;
	b=TkKCPkBZOpxOWIMvKBBs5l16JNSGJy0aSGbpN0nITnAOR0YfGXFk97Lg3z3WS1f/0
	 htdRMUqpKuCcX5sR6ZRb5HZ2MTwONVyI97nZP5eOdpqysFgLPODzs4O+IMlX7A4D7O
	 oX1DZJNWl5214bH09vRwxxltFiVe68K5waM2s5g85cdRSEWrmVfzkI8Vm03YGaIW5/
	 pPEkndb2Hvh79e9nlU/htr5z994CCwPfpqgu/sigjZ/1hV6Qk2nP7H6bgT2R10Qn+V
	 KE0UHzIHK+PtrLJVmHcrT1kwC69rs1KZ5LGW8PRelVEKwPtzhXIWDKBw91croByCG7
	 5on3rR0b3e+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A52C982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002083379.3054.1668110627308699714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b1aefb48ae22eac56a51e292ae11e68da3ef30dba52e3a86abd9ed005f3c35
Date: Mon, 21 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790020833
