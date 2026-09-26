Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF4A3E1D1D
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790422834; cv=none; b=bqmyFvERcma+FLg3O94AJJjY6p/wjaI+YFcXofDj7G2wAOkMx4PCl9oNNEcUUm5hgArLg3AAQvK5noezK7isDLGZM4EL6PxbKKNXPLsrmgoPDGqgfIA/ydWpmFY2RZedAaPp4+dHix0LZBLWksoB8fFAluHFy3zDs904x8+ZF9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790422834; c=relaxed/simple;
	bh=+KknZMjuNmn1rcSlqnmmhWO9u4+UJ3et26cZaYVhAgs=;
	h=To:Subject:From:Message-Id:Date; b=IeJNfhkBgk6bCqpLxcsTZRFlj7M64KewwX0CEQiN9pNTgXZeqRwMq/kZCOk0D6e8DZ9zXwLA/btsDpknY/0sigYjK6zA41XeGFLfY/hxWHgvOe6pC4Xk2OLzQIvnyjxD/m8vFgJ/hrM2+bqIeLuppPuYlsy7P/k63Mo9wY7m2Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz0aTMa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz0aTMa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2174C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790422833;
	bh=+KknZMjuNmn1rcSlqnmmhWO9u4+UJ3et26cZaYVhAgs=;
	h=To:Subject:From:Date:From;
	b=oz0aTMa4YNd0A0/cVauJkw4HAjebPkyPihxRnifKig6Ne4lkb81oEJd9BMM//FD7q
	 2K/l1HV7QRgmVDz96G1C1vcWbfNuiQmz+FinitVeAMj1TxXSOLopCCcAubjnR29bEZ
	 7iqtWYcr1XKwTQAmC1X7ca3eIVJIaEAcZm6AsMLTZ1BifRhe0y7xWt7Op19XHhcsyJ
	 MaRTqKYITb9edVtKtHx5udJY4VQ5COuWzlWBMGM7UC5Q7y4WYIw4Kv++Ec3XcMa2n0
	 whl8zKj8MSO70mW8n2tGisGZBBGiG4yyJ7ISphkzCsqmpwYq1hOmeTVGYQk15U72vl
	 IjpixPNE58VjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF752C98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042283368.32706.5836965699359725805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612f9a52884cf0f0b1caafa5c38d26fb904a1fe60e382e0b343a34f39f78385f
Date: Sat, 26 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790422833
