Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47209F9FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728125754; cv=none; b=CakZbX2tRl9AC121PsIoFVgna2g62Xk1u/T5FWtvlsKokuknLVtgbz5cJYQLtew4Y311yofQAxA6vUJvWIyDvcmTI6SS0/6QLC4eWtgvQbPP6w+ow+w/u2jwGq4ES3N9x7L/Gr2U/KvUWWNv465hwSLip4puUXl1lh0AShoq3Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728125754; c=relaxed/simple;
	bh=74fESJWlEsWJYO+V3VuH0iqSWS795zrQiLRs3bYg+sU=;
	h=To:Subject:From:Message-Id:Date; b=Vphz7xLAsP0q9Wdveu/47gF9VUPNTDi34uGzSACYvfPzoEIefpA2lWancOLiRbZTJXOvQ9/DtRnzpDvY5DYTRuEcp2nAFgUKuL8jy7+HHoVWrWNxlLBjwhq9rMzfOjWpwPAl/rUG1lzi1Tdd+2vFVg5+q73ifPgJwu5HT/jP4Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBF9c2+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBF9c2+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DD8C4CECC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728125753;
	bh=74fESJWlEsWJYO+V3VuH0iqSWS795zrQiLRs3bYg+sU=;
	h=To:Subject:From:Date:From;
	b=eBF9c2+DUWx0UsNo/Y4eIc83Mv/cW6xt9W+IGtLyp3YRyz6oZEaClwt4PeX9wTu6S
	 FwINciwjnAmJmuyfEPmrw86AeWeN1xLXu8j70M9u9oSMSlPdhfI5jA3JOMXlXozpI8
	 tMc6HZcN4Z7UEuFsE661ZdGS3JAPsloc2lhy9eOcdZpSdZ4yAHfqKRZeV1ILmx5GUw
	 Kwcm4EhpLqpdR96NUD+le3UXBcmkv7xeaXSrxHRl89LiuTIKcqUhWnD1QD9R8GyZLc
	 iQrVw2+I2XGZUyHjHPqFs6CXIYdFwFq1cHUS1QeSnVWljukfrNkiAHPWICgKoeFmiv
	 LpBWxbgqqCodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1370CF887B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812575363.21807.3055087045074622705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2c58c82c602395d448fa86796073c12d45c5d4bd4925db9373241abb9e6982
Date: Sat, 05 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728125753
