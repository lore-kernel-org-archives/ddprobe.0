Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBAD32B10D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784006914; cv=none; b=hDtlWS4Ed7cYy3MwA4hBLRt8X1d6mdF3KfFBkfjBxYcXkxHrhZAo4e5el/N1CLIS5cstTwGc9zil490eA5EyafYLnjQr5oNTPUd6tiftwcKHwixtLHmZxE43eyqAt/jBklnWngCFixlIkWqu5/IitRZyuGznwO7epw3cY2x6qA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784006914; c=relaxed/simple;
	bh=0Sch6Ci3RQR49WGjsQKb0a/byTYP7TieANjYTxiFMj8=;
	h=To:Subject:From:Message-Id:Date; b=VP3o0TMJtGuUY25F0iIJ6mdQCP6dLkR+7Sx8xILZjfXU9jaIRw9ri3YwaWhvKJFwFGIXVwNXnuBH5A9NeM5YY+21ItHujjupf9voyclZqAKBF1Dhz3kn68ob+9dR3aK74fqEmBYRcOMtlIQBI9Ju+z5ArAs+KeZmQiJrlptnkaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shEs0L1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shEs0L1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA11EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784006913;
	bh=0Sch6Ci3RQR49WGjsQKb0a/byTYP7TieANjYTxiFMj8=;
	h=To:Subject:From:Date:From;
	b=shEs0L1r8rqrfT8gL2SXw5oWVV/7+KVM5B7u7p42PP7NrghrZe6+AN7+pGjT9miJR
	 Plm8emIqEgxPi/eH9RWeiMkXrMshYSzW8US1oDBTKujb6J7SLQhGSe485ewTqcpSNx
	 J17uWtpX+qL7pLGFLhz2/sv7hjEABaznISrHwKdhJTwRg8AO8fubP42T+3ZaLsAH8U
	 qTXWzOvhpsiXzvovxqFywFVLjS5CUQqheUZuLP3kwRjnsjo2oWRX6lXnotEb9MpRnA
	 1DC/3/SP029scqyOhyaVnO/IyrsqJ+bq0VjcUCWfMzr8z9BBZ/YpBf16+FybFY3qCg
	 r/ba0m5it1v7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BCCC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400691368.25177.3595064549718028198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0b999b95fc19f15368c1d2242d8c5e680df5ba71ab33600d0b1a90408267ba
Date: Tue, 14 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784006913
