Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD491E485
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749645594; cv=none; b=eh9eq1CjfL+jtAPBQ2Xo4S2KzW67qAA1poNUoF6/YzS0dXJEEx2fSawgxQiM6w7hisW++WDPuaXXKa70c8b3dTPArxMxXh0zzw9Oh7lX5Cb4moeRbUHiPlpwjMbNIgGz119gPXMZeeQuqZlo0R54EEbJ4nF9nBzxyeW6yMx1rLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749645594; c=relaxed/simple;
	bh=fm+nvG0wmixcjC5tUL9GL0a+rp8sSTxN/X0YrX/+52Q=;
	h=To:Subject:From:Message-Id:Date; b=G184F3EpMlDBMfPdoZY+j1xJa5d/alJK+Uqfeh0MbRdUnJ9uIP5cZMJa/CRNOVbbLL1M683q+JPS4r1s9dOvgykHjZP2D3BJ3qM+WWMrEwjaUm8ePmo0Dj6O3CylmooL7ABQIkOjk/Mz7gh7gkoonHKfzjkQDTnPdQdvfIOaw2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0nvk91+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0nvk91+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02DFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749645593;
	bh=fm+nvG0wmixcjC5tUL9GL0a+rp8sSTxN/X0YrX/+52Q=;
	h=To:Subject:From:Date:From;
	b=n0nvk91+4Utb+RAjnD6G36fL6hc24SAA5rJ6A+eeQRiniOuJI94LrWfsA/XeA6xo5
	 9N1DoV9xQX7axBC8uTn1Jce+FIQT2LYv01CsSL483a0Hs4WKkrVvi9FuytPBc0nuth
	 YPUHhGAulnfQzo1duC8FRtGWaUGCRTlJS+E/Fecd2cEkxg68c4exLJYhiiijYzP2F4
	 6UYSfi5g8HIsrhZX7GZxj3TwfBF3HEEJS3EMTRqTgkHEBoGqOJeZ8l9FlK+wxBNsxx
	 5AweY+Vj8o/0dL0e4ny3u7GL8E/xdTNvMsJy7IdBNAO48bERsnfXd7tSj0hMTyGTmw
	 9odTYXBS0FUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF23C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964559358.19117.7708443716829802969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e4c39edc65ff54a0611468dd3fabb90f73e521aec064f113bc38b86e56b9ef
Date: Wed, 11 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749645593
