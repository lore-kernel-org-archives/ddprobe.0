Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204072AF1D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327794; cv=none; b=ogWE762CVATJtlY56w8o58QCCCojxfJ3sckeb8g4fv4ljJMehChrnzDRiPHaWzAlwTXOnz6XMbLc+CCxViK2oEB+QODQ1yKP4lAfK6WswMaubtLwSYiztdxWHopxrEVPg2Jt6IKCnuHXbP0Dg/4DHMziC10qeDiwU/xHDuFrDqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327794; c=relaxed/simple;
	bh=3iI3izRhUWF3UZCjQkLhpMJwhhqGf9Vv4a85Tm2RzUQ=;
	h=To:Subject:From:Message-Id:Date; b=LqCUltlYIZXua9ETd2AHx0y0HOicWE1fNDmEPAF9UG+orKQtr9tccFPDW4uTPmD/fqlMWQnIZfxWLxQ+MU8llpgmcwIVRGzWeL++ti4D4AomNCxNTQSlmTLBlWdxwjFRPheY/NHrtF7+1payVvllA9QjVbUfqEbOrrY8x3h0yr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYNklx3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYNklx3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE0BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762327793;
	bh=3iI3izRhUWF3UZCjQkLhpMJwhhqGf9Vv4a85Tm2RzUQ=;
	h=To:Subject:From:Date:From;
	b=OYNklx3R/yW1U8J2nJ7e+JcLNgQBhMYcp6Q7h7TuZjZd9eKFNHl1OtHg83RAuXzGi
	 cN+SOczaB17I3a918UMt44BijKuA7pYDlCClpxQDknxxg7CTHmAXqyUbnGky1Tewmu
	 4M3KRvDbu8oBox0fRZPOTKW53AQ6fK3T/cCqpbzSKj/Irq34AwpjEVb/ODprOyoLep
	 7pmmBiOgU+7ylAcVPQusLxYQ/fqUlBX2/paGDXc/koh8LY+5D9DWMzj47JXHTvSfhd
	 TX1HO4apwO4Quc881m7oPyhFaTZE/i+PU8jguSGWkK9UBGckWaq7X14R9P3D7ZiOMk
	 8Jmi+KE4oAwLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F658CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232779358.6156.16399874929495642451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1119655c5eac926b27980d35e9f96b07bac4cd517c038a73620dba7de4ec8880
Date: Wed, 05 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762327793
