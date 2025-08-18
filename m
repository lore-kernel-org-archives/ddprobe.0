Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212032185BC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755557394; cv=none; b=RH/DRSxITW3L+8DhzjWTrdxAy3P+G579lJdnXRFW5BYVv/c33fzBO02gc6r5xasoZfC/I4L5IWV6zXPnqp4hY7h9lirreuSlRUTK10mU6mgTHVhU0onTAw3TFNhVeQqi05jlzgvtQ0AvCD51p+C4MHoH8Yb4UGe8aYGyuMOyA3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755557394; c=relaxed/simple;
	bh=p30NrXoo+hYSOtaGf0DV0xb0kxKrW3MIfiGCrbL1rKA=;
	h=To:Subject:From:Message-Id:Date; b=dXOdA3Ak0/wHysgMADc18/Htv/e3XGcpphxn0zzr0I39Lj/RGBoWQVEAryMslC479mEnYKtAsJi9Ta0SnDYC2qSpzQJKrkUVYtNXGjE1d0849dv4U6vj5M4ILh52bj6taVIds+MMrj6J1686Os8HlJkT2efv9lQfFK89ccB5DQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ4maLsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ4maLsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA63C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755557393;
	bh=p30NrXoo+hYSOtaGf0DV0xb0kxKrW3MIfiGCrbL1rKA=;
	h=To:Subject:From:Date:From;
	b=fQ4maLsLP4tfJPifsOwV1JmGAN407OxqzzmC5Zo8ctRgvVLD4bSlC7nAjABDY4RNg
	 vW2XVwIeo99tW/wUAxkY8H0acZp2GxS78HUMIdLhYD3cNcpYtt4bETcF7aWT+N8oGL
	 dLx3a4gBCgC57D6c5tqySWxV86/o/cMX1Zqp6SO6VunEHYYutAPJiZyO42wSYejDmr
	 NELtjtWBNwOTdqHQXqumIfWvY2DNPQszipnN3NXFtlMErbs7k6cQYA1KYWUqisl3kh
	 HAPBQCxUSNmwfiJU715y2xe69Ydh9Jl23Jg3O79VbhWiCyU6mph/rBqj6cYobcuhpK
	 pWYsSY3eR5qAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A2CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555739357.22411.10232926499279483604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5df7cb881a952fac1e20cd922803bcee2279e4a5ef45f67f7b3ef37d9a9fcd
Date: Mon, 18 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755557393
