Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1C62E7370
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780763674; cv=none; b=E5kZmdoYq4hEB3zjgxMccC9xLeMZuFA230vwYRLHz/Cc2NVadFxyEIhpd/F/We6MNMlKYwPQA5R7CLar5MPFLsGzCtk0lwSHeTyLTl3hiWPFMc+8Pm1gnm9pcKgH/qZDwJU4KFIq9MgfotME7wvbq5ZQ1PY52qWe2eAnV5jAFfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780763674; c=relaxed/simple;
	bh=n6QskjhrP/U7ZlKzcZ3mkVUjUCd0/iHwdU0C57N2jqU=;
	h=To:Subject:From:Message-Id:Date; b=oz0JT2Hk8Z7y6oQ/T3tE9ft4Fi61JySziGaGk25hwUJQHM8ta+X6cfAfbMEVbPySjPci2cBol0uwWlaEVi1oeV57xulQ+rAqjxWPpyc2AiGvzXX50v/OUQbakeo4C1V2G9QlI7RM7za0i8B1acZrfv8he8y7FTJ/YsjSG2RhdcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrPbyXkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrPbyXkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFACC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780763673;
	bh=n6QskjhrP/U7ZlKzcZ3mkVUjUCd0/iHwdU0C57N2jqU=;
	h=To:Subject:From:Date:From;
	b=HrPbyXkk23+Z1uN0yJIcjVjkovOISk5co4iiR4Iv9m4OzoiZIJRZmbVHh2eY2M2M/
	 hH1EI8PVQlhBpWYiNerTKQ/PRVXGYa7SJ2Hs/oc+0+nPjPQgQp81dKsHQmbc9qUlnn
	 tpdYhNSXFCV0zqSy8pl/2AOIsstbdlcEJ5QqreBjGBxsZ+yd1qpCcPv5yDy9Ee5Eau
	 FM4fog4i6jmfa701r4vT5nKVNsdkF74H8qULBnwQE0cobpLkisBEbMzCpXLg6HImzv
	 iCX5kT5hsew7quE5YwM5NdD1M4mNTy6QopFoT2eol/R52uYWmpacyDzCOfUH/m6nqk
	 fMviMk5uXPlQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEEBCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076367368.22913.15502814669908081369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5024fd8dc34b145e1bda9e23bdb84c270993534b6dd1db1c5c3e67c8765fbd
Date: Sat, 06 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780763673
