Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB69033B6ED
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770072833; cv=none; b=hxHm1gOJ1JSQ+1vcKkgzKfXLXOMUIX2DBn/cIxGBV9ykimPRZdU3jEpKTO1Xsev3fjDWWxi8YI66y9OoPaUHzWZJUPD6xInv9cnUZ3fZGMpNgQkDApBBWcQBjpzqWEI2PhEJAAJQKC4e2Lco51n5o7hzqtcheIlaGzYVPY9OwvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770072833; c=relaxed/simple;
	bh=zxyj3+L6N8FMrLDS4bG/gwA2XHiB/ECcis5mWjBS+t8=;
	h=To:Subject:From:Message-Id:Date; b=HaZUjhQOdEPhliU6uS7VwN6nseOUlMQkbidDFWGIX05vsDUaxntq1iPFQCrYi9GQrWfiFn4oLeMdat7w+oswnj+8sfrSd3KT4kKJH+EKS2jcpBd6QaGI1RwAuQ7RsxOcO0DfvXCRIPMJhB7HUlp0uDEh1+PzcD2AZ57iln551bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0h/lHxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0h/lHxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553CC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770072833;
	bh=zxyj3+L6N8FMrLDS4bG/gwA2XHiB/ECcis5mWjBS+t8=;
	h=To:Subject:From:Date:From;
	b=j0h/lHxFWOIm0NnXapxVKZObDuMSqh/8aoks6cscj7tARrh00ELii9UtL0i2YE8N/
	 fm/pr8T65P+MFNTzi6bfsg69Bjz91xU54S9TXp0u+CUrMeZve0GPep43yyNhkWoNyz
	 B9B8qXRA87jhKzC9mOTjFDSZ9S5w6R8ZVmfFZnJjf9IxLb6/CnLebKKDz6kWJxmhvm
	 yUWh/OK9AnC0e/mFsmj40pjQO2/u2uV1j/JxFSZyBTTCqHSOtEnIps+ca/Uos1zM1d
	 WAl6lqS00kI+HevsuFqYR8GPBc59wjUtXQTcVGrRnYUVVabZjn9iK9/10yms4bH+Zh
	 YhS+4JXY9ZaLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308AE7FDF3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007283359.23385.8908963687943082990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1937be9521db917eacd22430ef58db9778b6ff190e1dae7fd5c395fcc0a0a93
Date: Mon, 02 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770072833
