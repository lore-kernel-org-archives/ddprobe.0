Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF882AF1D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791556234; cv=none; b=qi7OgQa6cy1mE12fAd8XKL/g1n5Sm3SJ+9/LnKYhh2hN0sbSLCEMA7AKmfAs8HGww53RlFyOX0n9WWweKoVTPC0aXkgB/oEYeRGKBwN7wSEtIT9vxC5UNv88KZgP9ebE+jnhk3vSKtEls3TMjaaqC1ZnCgN0dbPnXs3HvkMHMM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791556234; c=relaxed/simple;
	bh=7+vZlVO6pm+KR77cv2nJpbB9Uy1im8ZC5PnhWcEIm7E=;
	h=To:Subject:From:Message-Id:Date; b=pX3+8Sm6X8KPaJSxdMcq/W/vmT19785k5xKZfw8y3ZERjIEK4ayjyNmJXV/gDtNrkLbHaRT1sHrN9j9kuKsETQ3oT59YUtqi1ZCXDmA2a9d66+wsRMH44Rcw8ZeVCOU9ruTf1s3f4mqQN104txNYM4JCEw7kihKQiv0rmdtqijE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsYZ9Hvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsYZ9Hvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCC6C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791556233;
	bh=7+vZlVO6pm+KR77cv2nJpbB9Uy1im8ZC5PnhWcEIm7E=;
	h=To:Subject:From:Date:From;
	b=lsYZ9Hvn7upgH0pfTRXz9tq1if7KB1bm/3EK5oGkIZMIGXhDGjlp+JwUsn4v0ilCu
	 L+3dZfZYRPeCN5J8sXfEcIp+fPsP3DHINOSp6SI5WqcBbTWb026ng4eSGUlDdBo4Ym
	 gJIvLSU0YUAOD+oXe7LK42gBwBqVdyrLjKJdUMbsOUBtStan1+eUkwJavZElnQaJ2/
	 Ux9Atly6q3OPakBwuEfgzuDqUkihYWPHKT1N7qYYhfkxGk26lebQZ9nhiilnY21YKl
	 k3nIPhtayg1GM2QG4mryBKgYny6OEChx8hacCdWhfgQ2zE6nZUJT7xRi/vknkvs24D
	 KqLEKg/NhtBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA303CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155623368.16137.16364799471345623054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479146473e379b4a7793dc0a3b665a89f8ea85bcfe688602e28619b9f28def2f
Date: Fri, 09 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791556233
