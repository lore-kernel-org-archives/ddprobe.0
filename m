Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D923168E6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784061514; cv=none; b=oScZ+soWDxpmJPlgQf/P+z9ibcvDKdYiCpCZHqlGIMd0+0VWU7xinrpKDMI6CfPvhiMd9+E0pjHjIWc98uUlFNcdXbnsZ0BCmeKGlPd9tEJpKJmnANVQun2LQhFLFwZbUSWK7DyWRl/QykGkaDAogOSpc88BeHdQ5ODMnSsq+lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784061514; c=relaxed/simple;
	bh=OWDOVakJQVsMyhI+aGWk5xE+fZ5IqicPM41mXi5vGsA=;
	h=To:Subject:From:Message-Id:Date; b=smcxuqjhuABkLgydWAW6JPciNJgpQZ4n/EkwdaZV4RZyhxPCu8Hqs0rrd9ncrbXiq17mbZPAcD3iFfBKDl+Fmx2ieIPAWbQcnp36+qNtUVbsEf5D/RE11ECFFsMrkQVCqzmeltDXgkfwp9Or7NgmGAQk9J3HmprGs4wT5xntJNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngb7OP/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngb7OP/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC1BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784061513;
	bh=OWDOVakJQVsMyhI+aGWk5xE+fZ5IqicPM41mXi5vGsA=;
	h=To:Subject:From:Date:From;
	b=ngb7OP/U1EbZNIIncVsKoriwrAuNjQ6C4VYLjwpxoCWQYZ/Y45TgKQNdNr1QOhlz2
	 IByMDE/6GvLP0aeGbVZw5td59ffurzBmosIk3EKDDCsLojvcRA4hEOH8pEOuEqzBC3
	 KWsM58H90yJfxg/0AnY/sh9C14RsHa8BJk6LU3OpCVT5awhA38r7wWcYn9+orSNF4N
	 HK3Ej0krT9AwmRYPwMF9ZW2TXrfgbD0TrUvzaES40JUp/AE2/FnMAa7Hi5UaLJkFDn
	 EpCWL4JKjeA2MklHzMCiYs/hqxiDx6JNzRoTrCsnCygwRb+/OtHP/4s5lc7qF/IAsS
	 FmJQcTaffGLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52EC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406151369.14446.18199011779500964747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a15ceef22efaefc17638b173b8821907d1f6058914077224566e515edcfb50
Date: Tue, 14 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784061513
