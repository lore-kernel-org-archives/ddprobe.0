Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0722F74A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780301674; cv=none; b=BfggTYbapVWSvmxCh9Keaq6M96iVTNyUE8h+1fPpm5I+KVm9QMvT+fI+BpVrxH5nbMPNI7mxXRQhriA2bC8ngDgPT0whB5CUb+52SP7BhqguwfDFfRXY88HXq0DuFF3Gu9T1NGablzDqOcAluAxraJcQmLk512Sy3VhdM1XiM6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780301674; c=relaxed/simple;
	bh=wij8mILaefnjZseOsAetA1QtyF79WTzwayqE8cHOJ0I=;
	h=To:Subject:From:Message-Id:Date; b=ludRQP1KYoZPNkRoragBnLMssIxLPrvP4trb1uZnx38Q7U/J7miLjTJF/XvBIqvmK1r2mbFDIdFYahRstfdnM5X4ocxT6ZZddtn9agV470qbOx+6ktvmpZ1xyIywUTjmoNGDspc7CNXsNdFCFfWm3gEmMCWygcxf5T0k4ZGG67c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asnWVhFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asnWVhFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C6AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780301673;
	bh=wij8mILaefnjZseOsAetA1QtyF79WTzwayqE8cHOJ0I=;
	h=To:Subject:From:Date:From;
	b=asnWVhFci8zS9R389APMw25rJzltap+hqrchWtYrsqUK9hGjAkAy3vkzbwE4TseJG
	 G/e5E24cuIegfhD/8K/5mwaRT44KToiBFaiLctA5G+jAKXFn6K6q0UABXSgcl2uybc
	 S5VX5srPixEJ5NtiOP5Xu+8GhMUMAOakLzAaMeWKY0jf+1oIl1nU6aHDCae0Lc6Bj7
	 A4x4RpRgFjdiJSS0MCHITOYHbX/G/NTRg6yiOxU2Wa7/J8JxWS7owF6clEXp9pzzN9
	 WfxzUOoz6Pdrfipw3wb8uWyPBrO4/5/6lPwi9ZU7NiUXhVzgHTwd/jKHn+yLKo1p+k
	 p8leM54yq6hmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24ACD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030167369.8752.10486175956142976548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6184e7203d130e73ecd26882891ac34470b48f57f21363eaad764ed408aaab93
Date: Mon, 01 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780301673
