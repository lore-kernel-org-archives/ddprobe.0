Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C34430C14C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785161434; cv=none; b=HBMZ0i1mBUzHtdZ4KUlpUMbTAE3PRtgM23RthMRjdH04zS9EHdGXPl+s37wByj263cwE2VYAcHdRdeVg1oywc9Bt6XpcAa3vxnn7zH5et+F7x5dPrRl8HwaVAs8bAeTXXuISygxQSHSeHOyZ8MDj6x0qDKgvuuIWd+YIFtCId9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785161434; c=relaxed/simple;
	bh=fB2OF92ruegVhrttwjwnNksLZqkyevrMNuLumdUkU5I=;
	h=To:Subject:From:Message-Id:Date; b=RJY6SghoMj5delwaATI0O2ISSpQKJmQmda6j0YbaRPryz84DRwLFZXHM9XcUupZB9EXsBwf6SEpxIRnBwPBJeMUrcl5oh83BjQjqee5i074lWYkHkOBhKqXJDlAwX5we3DfJjiA3R4PzcaB2rXBRlNyOyAOP0ZfTTQOUGvPouAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaWSw4r1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaWSw4r1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB36C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785161433;
	bh=fB2OF92ruegVhrttwjwnNksLZqkyevrMNuLumdUkU5I=;
	h=To:Subject:From:Date:From;
	b=qaWSw4r1/A+ZdbDSFJOW1bAmYp35/hhY1BBA++A++5ngHdqJB/ZZabIHR6VaX+dp0
	 uxBMCcu7XYDjIQO039vcLavQjXJufpuJZFaecjZC35Af7ERM9rRiY7tnXxLVzTwMpU
	 azE8DhktK3ZbzYGsvHVs5j6jS1+XGaSUUn3HPf7TObkQaI8bOctAYAT1kPXHLfI/uJ
	 WWlyGZeoy+Ga4Y5Xn/suRNFbJMI1uQNc/R5OaSgSBSL8vg6dcqbvnvYDGrEKIuSb+q
	 EXBIo0cwAkp8Zy+FEutjUK+02ril06L0R7zqZB0j2YuR5sAYmmey87jyfsxxAiI/AU
	 /CSoyQxMU01BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC695C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516143369.4295.16093541255904820114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a358adcce23d2822c620d84985d457b6cd55323e248c593a1298c562fa5fefd
Date: Mon, 27 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785161433
