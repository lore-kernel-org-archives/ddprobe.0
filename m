Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D14E2FFFAD
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505994; cv=none; b=fDhYNG41ultlKfolJDTi071gM1Bv/YTrbOUG5Sgv/PY+9JxeIbH9QtAqb4IYzV6pgERsYAUVHL6/qtI2TCVbsUt620g66FRqe8LWARUvJX+qOIrGG80zdFKKAkGikJzYvFr6sdL5S189Yike1Jwyt1y24TJ3SA68ip0+LHimhes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505994; c=relaxed/simple;
	bh=1lWR+eP+RO3mxW2Xn6nxFVXsheI6cEq2ubCJQwXWcdE=;
	h=To:Subject:From:Message-Id:Date; b=gFZshxr2mkqMzEPfuSNvTq1PoL7d+gxzhOOqZreByFWUGTvkUPsksRkxoEIa4X9fa4gYmGyUhw53S+PitHaE/1gyL2TeMeMu5Dt2/IGzqniz+EKKJ+fj2rLolybF5PvYyLJSN8HW8OgocFKpWbnQFdWEweWmHZ93rnZAt6YYCbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLHdqAYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLHdqAYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E386C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762505993;
	bh=1lWR+eP+RO3mxW2Xn6nxFVXsheI6cEq2ubCJQwXWcdE=;
	h=To:Subject:From:Date:From;
	b=pLHdqAYtIPqTKpUNkUeBpwc5zI1vNVx385CRi7Xj00G6QKPHkikSFQJwgCOuFblmV
	 yfHL4bBDnRg90X2nnb1KnbZgEf7/8rzHJXWkNo9Xs19Uo54ZrYCCY2+aTb6ZyhQbKg
	 zYTp4kyn3pTzEj4cMWw8zt34Gh78cZl4wvlXS0Vf14ob2YhtVrXyqZF20f8xk0iUBp
	 hOAnjAyMyUEnCLj2BQT5ZUjho8x0/WKVlgs+bGVj7VNbC5k6BXud+oyYPEOgiiF8dN
	 IgEk3Hv1FNp3cq815p9MaG6JTyDN7MxQjfAtnUR0Or4HD7WIncNqWqX6Fi3JJaihyz
	 6uLFkXxFyNM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD65CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250599358.25034.2313793895377254756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cac8f2b78ebda52d641dba2661995b049ac61ad20bb9b841dea17c4299dc829
Date: Fri, 07 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762505993
