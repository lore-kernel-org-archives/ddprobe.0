Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4582E156F3C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744191595; cv=none; b=CM9AIuH37DeY0FDvjclxciynYMuCKolS2QNOV2yO1BUJqGyLVyS5ihHlapGmRsuSU+2P7xqyiAJUxscdj7kfdh50SZQ9qlVmSkD2ypItf8e1wLare16y85dPtlUh8Aru96QqkQ5TffgjK+5lxuXeUJLgfoUXWF1CgSGoQ+Z3MAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744191595; c=relaxed/simple;
	bh=6wSohCmvDrMFwYFuJuF4PWDt+jUXQnD2Ltfk9Lh9oBk=;
	h=To:Subject:From:Message-Id:Date; b=iCSrx9FBOiB3WPGf2Zo9d5OHk6U8GllZ44J9YiaIqjHBTiT3pHZVutt63ZT4kUeiO8JkwK3gEivfWH8CuGgAY0xqsWFUZ2Er0SXNg5YuAldwu0MHNNJJVOrpbtPL2EJwcuvOGAs5aS7EyBGR675QaVaVQg/UYCxXHldcU9d3w1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPzsfsU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPzsfsU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC07C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744191593;
	bh=6wSohCmvDrMFwYFuJuF4PWDt+jUXQnD2Ltfk9Lh9oBk=;
	h=To:Subject:From:Date:From;
	b=OPzsfsU/As5IVV5vap1mfr7zpIlAm1etmQpydbQ20GeiplYRYpTjsnLbh26cTShEe
	 O0wtWJ3zoi5KRca2ndKppcqr2lwrN7BEOH0BK+c+RPAiL6+Da2gidVTfLELAFO9eRR
	 r1q6cc0yeGwGkyZPfTDUZnarBGXUvwukkmnvhw9knvEMeiKtWy8mPCli/hweYGhaL3
	 mWNstvqZYwOgaiJ1pHYHWj0LimOkdzWtGVensJNjZtUvhIz9IJfQaqycmxY0g0J62T
	 6QPwl2vL9yB2RiJVLVXbGKm9Yd5YI6SxmNRpdCIAb2oI6JOO7oz//glo7WHfGTNHYz
	 Bwn9ziJjY6npg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568CC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419159360.4864.5794706300861819100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21caebecb4f8fa3669c4f4f84f841b482b9b587d819e8f13842f8b37df1207b
Date: Wed, 09 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744191593
