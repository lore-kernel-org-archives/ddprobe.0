Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7A43CDBB7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788166234; cv=none; b=J14PSqHgBc72PzKc6t1UaeNUxHPLC1tXhQgkH4NQw0bW/pYVKgTgsuxBbxgRaHPFRoduwi0wyul2gMyk5AS7xyrIqpF1mBeElWzwogihB/CJ1nnDJTo1HBEersH1mKDhFexOmZO0X7gl5/Aa+V1ZVVVdYRJGjL0P11rHXS5ju7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788166234; c=relaxed/simple;
	bh=8kmFP5v5Y364sz+KoFiRL4iRcyKqlLrsIK3Rv7JpFD8=;
	h=To:Subject:From:Message-Id:Date; b=ttUlTKmLL5WNDWCRYEjpFmYJqTMQwABXJq5DT5BPkLxvOQ9Jd7S8qFJSOVaspGWuL55ZKtabvV/gt9t5fHOW05t6xhDKfZHpRTHHgPT2WLd8jwuP8NltIFFiD9co6HwEyVOEojTH3QiNFEpBFZOlLt5sPoscijYH421IcMiy5F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj2L3ksp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj2L3ksp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18BDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788166233;
	bh=8kmFP5v5Y364sz+KoFiRL4iRcyKqlLrsIK3Rv7JpFD8=;
	h=To:Subject:From:Date:From;
	b=dj2L3kspCrRsRvTCbU0CuK9IDSyHaRR0Nr/DjhYgkEzLNIb4iHUUpyo3CxavoqdGU
	 pVEKeg/sbUzsxvuTcIqyMo6DMq6U/EcR/qqaWxlyrDJDGjCcbNs596jxxCkxZSj94A
	 WYCSXT1jx6X7yrWC94oQEUZrwddv7PEriwrutB75quGgLeOpE5Q0wlqI4FVs/Qw71Q
	 62lhXNOjkBoXYMyIyVEinpWSdmjv2X3Fc+U+hiBNYEoElniHT5vP5RoGkvsrWZs0V7
	 QjCGv/tUrlugAI5N1nKd8nIhkOF3aUPnHS5MyMSmbZDMCjJPSSOnlTmBLxcnImpx8I
	 RbxeLRAdrFRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD3BC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816623370.32140.14985733671191471016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfa9d051113e8377be795e70d640b5d003196f8d48405f93cacfd7a1b2acd71
Date: Mon, 31 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788166233
