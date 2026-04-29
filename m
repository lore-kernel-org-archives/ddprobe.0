Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8FD25A642
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777475253; cv=none; b=rb/RbzC/6pYkKMjXbbwZTxySGluoZBvcvbgrIyHBL2mUoKAzAsQAY7/xPrROElU/QJZU0+kmqvj6dszxVqor0wbKvFYgFCKp2JL6P1vQI1lC0qz5azVocujBIasPClm6/iCrcVu1r8QhorwKa2HUe/ZY/b3+YsVvXD7mcopfAwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777475253; c=relaxed/simple;
	bh=2kPIB9KvH58F7ExK+Xm4tkAK1d2uKdAwsGW3z2MXRY8=;
	h=To:Subject:From:Message-Id:Date; b=Ss8lEj0LQU01nUcH/qEdggpYddbrFko8MgD2zZzQTVc5M5jctNukVZ6tOMgkw0N/NI4rp647WHnwX0iqRl28vv5Jt+TP6yuGkzeDQFKeQ6dDIZX+c0rBwsgvuM2s8q0XElUqwUqOS6rkkuHcbjZPa2u3b0nSreAUSQFjhKtCbz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlBb5rkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlBb5rkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2F2C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777475253;
	bh=2kPIB9KvH58F7ExK+Xm4tkAK1d2uKdAwsGW3z2MXRY8=;
	h=To:Subject:From:Date:From;
	b=HlBb5rkbfBo1kQwKgkQuu5+wtNeyJul4rrHiYmCVRKBRtwW43p9h3f7dI4mIdngnr
	 GGoPCctqr0wsPNNYY/7tKOU0CdGpzRpgR3PX9qO0RmzAbaffYFsLWzOMdgOsEE4D/0
	 rrDTOw7gtIgzqYaDDBqx7bVD6hB5izLj/XRYwUQwLgPDfoHckS/a7R/H8IGe4B2wJX
	 8viPh8eX3eAcQNZpIOhja31ED4BwUgjQp0uaZUilYtiPolJOVL8gQEXyDq0mjcRdZI
	 DMjXoK9HgNRKYfu3/8lkLCMaVTZjjcYkTZ15fBs7R7qwPJI9Eq7KeYSSzhz0AFq5hu
	 098gsSDaYaLVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA70CFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747525369.25336.153895747094965345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798b473d6f265a6a3587bda5f87c4c6e4554f193010d1d5c8a5c546b1d09b14f
Date: Wed, 29 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777475253
