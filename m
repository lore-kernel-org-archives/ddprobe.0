Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF403815E4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783682314; cv=none; b=j0W3bzAl9yBEgxGWnOne0YIMn9eAB6dzB1ZsDw9UFw3SUmYB48Tpp1+H9oo82gR7COHTTLiB5Jp6yn20Nl2r8F0yeJewtSGdbvYmkO7eiiIrZQ5DiXOHiFu0xk1zJDzvQk+GZySu0TJbVTjf3bl2n5YKsL4viG8nR1qVywQRu9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783682314; c=relaxed/simple;
	bh=BrefZy81YX8IFBSwN3t9rQKDFzO3OLCw4Bg2e/VVIcA=;
	h=To:Subject:From:Message-Id:Date; b=XuJTsUNneSrf7720RFroTZHr09y6y6AHDtQdRSX4qaW4VysXYrMfT9XHvmC2QDnwofNm5zjEWex45/kBUaAUNECBZSfTv0e6AiFnriC93WptLW/AZFEyy0ZaQbsL7ahmOJVeLhe6LnHl88pKWr3V4gLTOSFue6g+R12eS0ZylcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkAt4hCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkAt4hCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18D5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783682313;
	bh=BrefZy81YX8IFBSwN3t9rQKDFzO3OLCw4Bg2e/VVIcA=;
	h=To:Subject:From:Date:From;
	b=RkAt4hCpM3eh3cd4jMYaxPVUijxXb6aV3Cv5FLtKOIwDK/cZm0a/77iOO7M+XfTCM
	 Vq37eIPxQUPC4vdcfaT4tFar8+GzpcWT1pCky7bM/SHEPyqx0k1014gBf7vjIxH7gX
	 /1FKIQEBepbyRger5lJ2p/dLinF89c2lZ4scs4vYJYuAZtDaihiEP4+s5StQ2IqlKe
	 zQcR8jM3NiV6SSH2aOHEjEnOnuvWy3H5CgzA5v480GlfLSXYXvyoPp5yCPWOXIiFb2
	 XCrRqDtO9HUOstLaCaTUFPxscqn3Blvb+s8H13l8oWOXlS3RLlW1H954qoe7R0KLO3
	 Rp3wPnASzDRnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA302C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368231368.31773.13613671359488860021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf1b16667ef4f8ed4ee7c692faab2bbaadc04fa9485b5b4b091d513ccdf163e
Date: Fri, 10 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783682313
