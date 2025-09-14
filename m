Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C7E2DCF62
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757867995; cv=none; b=aXYJ5PrcDTAkYjSavAAxSdISoaXYnasREX5jKsajwOPGvbNlm+27RypUu1x3drB28+myBXvFRfJ6+pgmiZ7Xoegcpfszx3QmqrHI5KAfdI1zAUx5aJ/DkNDqbLTgdEI4TePn0AjxnmoJyHhQvdyv9uFDrfZMg09LZnCIdTmuv6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757867995; c=relaxed/simple;
	bh=DvA2apha5KsivJL4vx5Dv5KKZ0H2+yHlYdeAFeEslvQ=;
	h=To:Subject:From:Message-Id:Date; b=oF2gED4+YWtT6Dd2d6VSa0fo71xHoMkESUb04McR7K6z8KVyqGaKPAAyNyZbAnVi+X7x+6twSc0bBmtm4JpzGnuW11xsGSrEpMwFmBsbwX120SrZmoo2zP5rnSvbPlo2d9mRy4zSgvYxcaam8UfgjGw5pd82HpHVJPWqdjbyzTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqNzk4ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqNzk4ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757867993;
	bh=DvA2apha5KsivJL4vx5Dv5KKZ0H2+yHlYdeAFeEslvQ=;
	h=To:Subject:From:Date:From;
	b=XqNzk4lnr4yh7TzUT7G0juIhWxCEge2hoIxv5t524AjN9kWhvGzD7pSlfrBBhO1kS
	 uiJNmPoCZFqgO6iaO8DGsXiulQUCvXfCbDG2xN1spmcMY4n1flOl7j8Xz3+usF/pEw
	 8FL8zv8qUrrAgl/jNRwD+FobYhyn3vrP9/jZ0KIJ9z8+q2vg8yKP82KMwCx/11LltU
	 vrOXaNQPr+Hni0pNyDBNnumAVtLow7s8IdTMa7MJX18y9Yv4auGdXl8fBEobEe5wHi
	 zrVVmFgjb769NI4q8MOfoJOPBkMTc/YQhUSNjEks/aN/8Iv3fEB9DDG4RA2cQF/fK8
	 d5hDnWpKaKgHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73ECA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786799357.7949.18314965860511657015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afe563143a9d831cfb7d250aaf760d7b11444e2b197c57da34a8ae5e1162831
Date: Sun, 14 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757867993
