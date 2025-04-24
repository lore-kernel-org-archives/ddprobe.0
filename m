Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB38198A11
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745474994; cv=none; b=bRnpsX/G9LBG0Y7tNucXJjP+bj67NYrh8VCGxIfM1KI5uW/6wHojSl/GG/zDAOVQWuoSjxuQcxHx4xXcuygiquKj90f02S09xY6+NGaF438dEU+Pw9ZAcB975LK5eCEFIhzYvFFziW2U8SAfRR57hqGbiYA9ZKNFKD0stZCnqbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745474994; c=relaxed/simple;
	bh=zLfZJUjSstIr2s8fyRxCoSRbFEcuo47VskQyGtL5UBY=;
	h=To:Subject:From:Message-Id:Date; b=bUz6btkhyszlmDVZQAJIfPEDNcDj15mC7Kxjp65Etjjbx13pPj702eWyWULyu0+X97y8ZpFohKp1KZFhMoSauzypTsgwxmA5vqouJaZbgcmO41E6R49ar1xU7v0k/o+iiVbzIqYyf6q0i0HIXtgmAmfBcnRetGsWr4nonPLk0Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnBKTroE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnBKTroE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745474993;
	bh=zLfZJUjSstIr2s8fyRxCoSRbFEcuo47VskQyGtL5UBY=;
	h=To:Subject:From:Date:From;
	b=UnBKTroEllHfybnQL9lmLCyF9zrtoSL6TXnpq31J7hX9lil1tYM4Hq4ux1ti5a8ZD
	 kWU7OEuUvevkU4n5Vkb3ZStSFCpioQdK9fJ4sBft1638iTWanJAknaP4g2Fg07NTBc
	 aM+yE3V8Nauhujv440PlyzTd7IugRB1nL8NjZmlLqLjDHmORi49O1+AG5FCaeyx4xq
	 uZXpc0Q49KpKWSWief1R80rEJheGSL/sUV+0w/+Mq8aOfJOtHGYI346RkmYVSKHpo4
	 oh/OrZSVt3cdsDbqwQNorRjzg8+3MMkGUaP3QUyIfEiZPlBxx/OQMZVeKDX0aGMrTj
	 urqB1qTl8uCgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED80C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547499357.5454.4657039051661527277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265401d1ee2d6d2d93f07ca51ac5b6f44ee14de279a7a10768bebe2bdf6dc780
Date: Thu, 24 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745474993
