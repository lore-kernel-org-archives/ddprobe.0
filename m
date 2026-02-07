Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F82EA147
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770507834; cv=none; b=RN3A5pB1NRMp3wtV3CG8RZnss6CJIIBlaWbF5WUs0f9KIFWF0rzP++fft4d+XXqhSH9kgZfb5Mu59S4wegw9vyM6Vurax4CI2xm7xqE0ftwTQNEVTNil+tvNmyt/NMdOxUWrkCmnlvvfdpcm26+8DUKSqLCSbeNDwXGVPVa3pRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770507834; c=relaxed/simple;
	bh=X0MNTHsyrAPbms1QIzhVC9vh52+i1lkrLN5DVTfUZA0=;
	h=To:Subject:From:Message-Id:Date; b=mHVxrXGO+arrcjj9ZgEZIpHTJlo4g40hmjQ8bLav4S0bThEdPtFv0qwLY9UUxKmyaQP6mC01YfRGegxJbvjQUlIMeAZW1uljUhDFjlb406AJBPQcdXyHnxHTOiT0lAGcwp1Aois1htLZFA/fJtJynDYNIvlehMHBwNuNlHeYdCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2Yy/045; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2Yy/045"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE120C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770507833;
	bh=X0MNTHsyrAPbms1QIzhVC9vh52+i1lkrLN5DVTfUZA0=;
	h=To:Subject:From:Date:From;
	b=V2Yy/045TVM1Y/2r26YgKeh5XMndRkpQVUM6+BsdJ+QvJENs/RLMj7G5gD1cBqDse
	 sRGNzelXzUynlVAyomM/Fs1/y9XSppPPQu19zFxFLVXYmXDfCxnYzYgFfRH19kdMDn
	 2uOvejOzRvvecRpvschfsvwoDCN/OF8QV68+aRoqApWNbLWh1iKXwAHla4zG0nc1CF
	 01xevgJ4NMT2z8OoTpxaC9RKlKSrNvYELuPbSKPu88Gjffw4u0gl2l7AbfChrlfDIB
	 GaiwDymQp0KsolrC1WlCAm7xejabffWLY8C7xa5I4h5E1nU6Uv/M0vv5prUOjfpBmr
	 yJXPbYWSYvZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE8DEE0AEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050783360.28748.6232819659529057912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4012286e06acc4647fb472075e0ed99087ee7514d8247c6d9f69f68382be5d
Date: Sat, 07 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770507833
