Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5FDDA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746145194; cv=none; b=QEUXFE6aaad7wKKcGEucOEr2GDjtkeLM3ZpiOHKHXoTlWtZ7giDlFDGoTxO28DIGJCfiRxYJJ0VxEyhoq2wBtGrk27Anohp7Lsw2jN9gFSLj2lNJhzormjhGxepQFQwfLl5XDplOeufqE6cyPvTSqRcASoo+r5ImRz7xID1P2sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746145194; c=relaxed/simple;
	bh=dRxJfDdP2rss8/5dGlNqmXQIK4jjmvqg4DV8pT181+k=;
	h=To:Subject:From:Message-Id:Date; b=SzjLs/HbgJe/vsNCVFwSzSAIaA1eHfVS5lQxHddDAvWUsAmV1urXay92ZENLBVGHG5DgdxihbPWd1dhTmJHtgP+OA4zHKXUdlj3yT4BZVzR4CK/5uZhamVkwKENJ9ra4TWe6L4Mq0Q2wBctXBHTFCUVFAJlUAtRkWs1fvLs6XYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRZsBGP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRZsBGP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E48FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746145193;
	bh=dRxJfDdP2rss8/5dGlNqmXQIK4jjmvqg4DV8pT181+k=;
	h=To:Subject:From:Date:From;
	b=hRZsBGP4sZ5rN/2vzQLmi9bYm+2lmykXZGRAw1m4AQg8qj3XfjDjENBVfawHn+j66
	 21XOQ+8jHfE/9kjWgwPrDIy+zJQeMNRmW91EiSEtNYoeFPkJUdmC9YuB7cdhBrB7XI
	 /Kf8kQ9UAdlZ5shOcum3r+RsXxRe55F+bR3XJpr1CQsd6JzTMLRsguwrvEIhjzJmA4
	 WyJkVqbWvmKjhIelPGXHQ/un5DNn2TyHjevxe38oZxmJ0fRHJYCm8V0mvY/V8oKSlX
	 JSp8W2aCpzhbuHhfGPHMS0j/oawJ5rE2Qie5O4KhKG8b0Ty92LQ2Vwdu/t3G5Z5o2o
	 OoujscwlB/7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB25C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614519357.8303.12188574756072564309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cf1f93813e5e7b9191447339706b2426f38fc41d7effe17c137a2368404089
Date: Fri, 02 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746145193
