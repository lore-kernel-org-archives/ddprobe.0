Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1C72777E4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751873994; cv=none; b=VUvmjaWQFv4OfCZ9NzOurovN9vCx0mVqA/82ooO2X//FINRxaHpzXgrphpRXgCJhDcMCMiaPRagjXyJP/9tTti79FY8mMT+3O52G1uqwpJenFRt4KSjdZxZva8EV43abEc0oWclYHa8PSlq1lCy+U7LgHwDrvLIG8P9SDsfFkH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751873994; c=relaxed/simple;
	bh=ZIdUVXhqGAnYBOhlhZKcCfM0Vfuec465wnMN+RJh5SI=;
	h=To:Subject:From:Message-Id:Date; b=JBaYaJOHLWk/NinrHszl/jkJ50JzIXIUdo0VrWwcDOu4DontxUkoHDV1afsJukXnfwb7l2SK871SBYcNjjQz++P4Axwe1eUMaPa8tLOsJGeiUN8uCtjGiaRrKsdqwgfh/5yGKeLwzFlg8Ih+zp+Zc1x+wKMHGVWOVFaHjx5FP24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1XppLJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1XppLJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2228C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751873993;
	bh=ZIdUVXhqGAnYBOhlhZKcCfM0Vfuec465wnMN+RJh5SI=;
	h=To:Subject:From:Date:From;
	b=j1XppLJU5+bPvnWLmXFZ/2Zm5dG4MpJ4t2yrjVkICU0yjHsdkb/MRFV4J+10vxbdi
	 54s/SvD9IcssisS9HgCzv1A3WZPU5eTfhUZHpJU5xTKRO3LkrNoR0V0VGt+62hNKkA
	 iE3stg3ofS5JZ1Xz2qy0k9k4X8vlGAxkjNpqhDcQIOD+n4Yl4IhNRdWSw3pcMndPgB
	 dG/FPbUFw/QWrZHKxIJHtRxeoY6Sltu4+AXQLamPHGU1VvaWQjJ2ODi7/8tt7GhaqR
	 a/DAB3NZoXKLXwm+P25l/6j+0BfhmwwZtqbINN7Y0IhD96WeeBlixx6nZZ9zjyO8sH
	 vdx/vskAGxCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85FC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187399357.1071.2267211633800297211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8c68063ea8b2e482b72659b71b7594a8162176c2775c131729359614fd6a77
Date: Mon, 07 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751873993
