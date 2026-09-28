Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AF71E7660
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790598034; cv=none; b=cGjxrbawJbN6GaFkmzhj6EY4zGlFb++VhXIW8LpFfhJPhJhNSjEtEoGLTp2OxuWF9nM2Gn6RNxjNwsjLGA06Zt6u/HdGZZZ4P7Q7d37aIIf9S4MccDAVIWDo3O9bx7IQD+arK9LlixPW4MycXrOIl7170rwL62GPOxAmsXHNJN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790598034; c=relaxed/simple;
	bh=OWCmZpMlLxk7HscEPmROednXCtFMWvEnBaYU8g266tg=;
	h=To:Subject:From:Message-Id:Date; b=NbP5ZWb5OH/5t8TX6IhQftb7pRMCXy2ADTg5nlx63bAVH/FlfDCVU2NPf+vG5kFf3sfN31nfo5Cnw3L2bNbFyS/tyRXoMuFQAg+YHvEOYy2Yj2+BCvofz+HlBrFDOsVENHAr3E2+ZaNgcCV9POOCX8elrR1hsYT4Udm3mByZJ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRhRpqnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRhRpqnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EA2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790598033;
	bh=OWCmZpMlLxk7HscEPmROednXCtFMWvEnBaYU8g266tg=;
	h=To:Subject:From:Date:From;
	b=aRhRpqnHflMLk23g8CWMzPeP1obU2Lr32nImARZh7fAxZqdtM9R+1JQX6qIDBVtUr
	 QOPyUFp9xMVDWj8d42PF/2HoyGSNcA2Z6JE2vkObnc9Dk5JyHxaP51Vb18Tpge427T
	 WxqkbcCEIDfCJVgVUNCDg3Dav80tVdJKM9Swmh0h6JPammNiLPrIaQomBO5ACo/CRJ
	 kDrWfjULUSOhfTyecwFYu3JjgpE81pshFHZ8+XAbnHcPcLtpcxwOeQkOngnJYsSRso
	 r41FPZ3AyWxu0FzmTMzixO6xmWrPQnjN+y8rn63JaIvX0KL3eVdEZQBp37QfCwy/36
	 ZC7PyyWecqsmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BACC9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059803372.29249.5996553821705385623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff271105e3396df2125a68450dc46c1f27b28ecc81e3e233cc29f23b3fb7055
Date: Mon, 28 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790598033
