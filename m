Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3267C31E84B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791009634; cv=none; b=EzkzySWTYaTbiJp2+AXGwKpVT+IT/jtmoGWsk7jWz3nAsMuW7phR0ZccnjySW6LNnrIReMMOe1/TEArk6+7WG/Xj+ypNaPHSM5Y1DU9YKfWevyQuB2MNEF9LK7dT82ibp6DttsTqGzp9w3vxYQHOghJoLGLBkkLPOtmbO6OxKVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791009634; c=relaxed/simple;
	bh=BS0QprI4VCZ6gC6bnOvNMz7Gis/eaUA/c1Nf3nRHGRg=;
	h=To:Subject:From:Message-Id:Date; b=sJHGtZld0bNCdH2e0mj4macs/DGzileG3zuMNqy/10ttnW35PcsDDKbciQspPLaLAOskwLK8DSRJ7k3oEHrLJbB0ZRug1izSSmEDfGWGATrVIX4rpqM1VH7Ed4zwj6gHZ5KKW4nCBFjmDzLO1Plmm325WvlsLgKhscOH109zHdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkwzwssI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkwzwssI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD343C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791009633;
	bh=BS0QprI4VCZ6gC6bnOvNMz7Gis/eaUA/c1Nf3nRHGRg=;
	h=To:Subject:From:Date:From;
	b=HkwzwssIqRSvcFYCEftItmMhelXrcqkjOZVITiB5yD+SKy6lLE1pyklFxBCuzzlG7
	 D6SQ2sxpUoKUrBDJrI8UI+hANMbczWOnM4vFqOqVNjPrqxhj+aTlmkURukw3dIuqfq
	 FoUVGGQK+J9W3fgZmidVMRqoWla8GwN9ibOfHzFKE1acRFC6xKvELLAcj6h3Wk98xa
	 DSN3JkU5tZDK3bd8EBINyrtgIUzST8Q0iGZSHOTNNTFK1FirJR9ZVKS1iI9KztbOZB
	 YP5c7yqUQDhsUp4qO5xEQNsXaDsMT3tRzs0Dyj3DhfTqS7PYLVbcFlpCoqLuECPi3D
	 QZ9nN6x1YjGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B7CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100963368.32495.2707885680701631768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6662b5035acf2be10eef2c4599032933b774dc0a091214a57b775c74069b8de
Date: Sat, 03 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791009633
