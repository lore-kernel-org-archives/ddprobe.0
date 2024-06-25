Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECDB49629
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719276803; cv=none; b=Ugs0ZKe6FMqHcqvYMwEKcOlEduoq6tDUwZJU6TAlcsc0WtTaALYd9bWCj+JFCRiPbJW0Z0ITf4Hv/EWfQ3LNDkRBlU87960rxq4c+osShdoZG3YADauZBn2vMOr9bB3nZ7AXgNFT0bdQkVfUBPhCFYPcDStSGcddgFjNn2aSnls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719276803; c=relaxed/simple;
	bh=xQgfgvbvqFuz0N3atqwElA8xh2wkdp0U1h5Cre2AnR4=;
	h=To:Subject:From:Message-Id:Date; b=JLBF1EXTE3cXBv0r2mCxQDQpmtA4pFKKg9mVlfxlljsYOaHq2NIa+wl473PsxvLryJ3r0Ev2Oj1D2poqFTWT+OXtm6c37+wdi8SojHYGzHmywLjL3Z08Ihqnqigq1BNsO+sTrUOggmAyxs4EsD4sjHf6LzYtqEzc5x0KTsOMamA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpDVi4CM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpDVi4CM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EA0C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719276802;
	bh=xQgfgvbvqFuz0N3atqwElA8xh2wkdp0U1h5Cre2AnR4=;
	h=To:Subject:From:Date:From;
	b=jpDVi4CM0buUgGG8Ky3mlGlNhuVl9qI8bmAuSafH/sGncP/L57BzmDtb6eh+oAsmE
	 HfykGGQB3BmW1Cy7ZCQn1IIQK/b/rg/rH2SyRAHcSDoTO4hgM3IXFyQEmdfNzmiBeO
	 L0UC4krko8zk8gKh5J3UDari8VJdMW9wMvb/lxGJczFfY25Nhq8B/saA7wDgzHvK2E
	 3ll1tlCBRtVRwrGAjOofy//P75PDNGeuRYEC4QlYA1neboV3yrJ1uqeXr9RADQycx4
	 i/50V8dkn1VX1rYaG7SARjE7IOUIbhopo0LDjnTg/H/ZzC9+rpjRPF79c8w1trw5ip
	 +sLQRODFSvgRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB39C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927680277.27918.15309656086857564633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a536665d712cee3e3de0667ffa0b00c8c2f457e3fa55dd3ee3a9def7bc1dff
Date: Tue, 25 Jun 2024 00:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719276802
