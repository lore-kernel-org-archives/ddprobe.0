Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549DC19A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737590754; cv=none; b=RJM86mBoqFGLJh/9PjNVKNaH2/E+I1QQkA7hFhr2eDqc/+o3Ql+lrZExj5CVvSX0SzMdbxvg5SAMTkmyCnkSvl0yIjPAAaP6P1Sj39sZw9khp5nFrHYadmQcOuLZBXUrp3HUc2mI7DCADw4+GkCfKxmcNREqBSwL3Istb3t8kbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737590754; c=relaxed/simple;
	bh=gs28kGFWJ4xU4Ugzb+zC9d/0PQOce/YDURXIqi+uKmA=;
	h=To:Subject:From:Message-Id:Date; b=jCQaykULfIjNvq4TCZkmN//vfRvyob2Rv28MhvSc6mTF15y3+1MOycnCcVOoxbjuRcUlL1n+uIXvisCqH2VcUzLEgxICc/ceq3X1sG7mNcJDGYIP+7+s5dNftLIqrtDPn/ahBvmdFipD/ameUobHZwmtFzat9JRyDboDjGTArz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8wsE3A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8wsE3A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78C5C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737590753;
	bh=gs28kGFWJ4xU4Ugzb+zC9d/0PQOce/YDURXIqi+uKmA=;
	h=To:Subject:From:Date:From;
	b=L8wsE3A7f+mY0GfnWpZ6enxouQJkoIukNKKQKPkF1Bp4gNuL1lc+qffmwRXVJam/I
	 0ZbK3HEAVcu8ppDU7s5c6mHS16TrRxlf8mjMvXLZVXe44BKvL91Ujo7pw9DjzWJIcG
	 6G/MFRXY2Qo/fVkR6HbrB8NbRrb72i7wrJ7hV32JCNICrPoNRe79LpBOwGofJNdjBR
	 u3kxewosXlkS6CLV3gpltCjJIzXtWkQ2/pBYuvmoA88SpspmrVl6zJmjo5AsEHqpf7
	 nvO4irRLY5wU0YaWerOnUSZigNeNx1uDTGhnlQnoYSrPig2E3GTOaj/TTI4rg6Y2bM
	 7gbNr2e+jvRKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA9DC02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759075359.27601.5890362039908968057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00c4d8ec911153b297673c2014a0008cffa8b4d4c4bb541d344c8de786248ac
Date: Thu, 23 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737590753
