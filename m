Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AECA43F4BA
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790426434; cv=none; b=rvqsUQ56HnHooIBKRNqj5Ycs/6ZfP/JN5NWQEJdnmz9P2756q+g9qMKYwsBz1YF3HHFv1dVtPGSFFDw1H1HdXIiPb72+vvmOyVTam7Szet0SLj6CCcGFZ3KeQ/HzNeVzF5jkLPJO9HI3EJKyAAx1odPVjth78u8ydjWhDlPY41Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790426434; c=relaxed/simple;
	bh=Yvn5W9da2jmTXMdvgfyhZqMy2zT/DG3I8tGV0PIZFBk=;
	h=To:Subject:From:Message-Id:Date; b=bGBpI6mpukBPgcfMLQUbnRJqfv7raIngtpZQitf24O3LuSqBWb+TMkmL2hD9WExQi3MBUhDzm+KN638UOIKxdQE101MtfOrWkEC6SLSWho7DEtKuAh1Vz8FwIpqnimWLZh8wOAzLMu+klLInXsYh6Mzh0uoa1d3Pt6SIfFjxIc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6XKuqPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6XKuqPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BA3C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790426433;
	bh=Yvn5W9da2jmTXMdvgfyhZqMy2zT/DG3I8tGV0PIZFBk=;
	h=To:Subject:From:Date:From;
	b=Q6XKuqPjF8OJCWia30qB+Kqr8NXNORozAgHqj9rymbk5nxW+3/jXo2a2vtOPlLtaR
	 WRKOk/E2t3tQJYkgBKzi8Q33uSSC0t73qj4DbYiUAiO+JcLaCyBJLsfFbQgyIAL1wH
	 YKztIDG74jE5mGXgyfU2kdmRG1hzWluY3NtoL2TEtPyHiZR/a12OFR0ulw6qoEr/cV
	 16NTy1lyL5oqUX7D4v6RG6/uhNRJTtGm5LRZc4GZGD3PELbeP3DoKE2ctZEcKXUyzz
	 st4OQksUGSf6FL/EdEKDzxkYUBfsyN3FtzVmrs8i+lXbqZgI0dtstunIOQfyFCLumT
	 /4OpU4OIawN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B713DC9833A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042643371.11009.1495870603575402991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae477c0ccae8660b861708ed9b9962b0e17825d073105383c8fef548dd43110c
Date: Sat, 26 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790426433
