Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BE3176AB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720019723; cv=none; b=NogBhZp1hNgIJvG2yN2Dmfm3AAwAHDmCrneSwuSrQRg0GIZC5kkHtCgklO6N5CEJDhEPe0w5oCN1nmcVcz0BAd3DBoT3vulH7w+L5FymZAYUlqQD9fNlgF2HTIJ4GHjEWGCqhK25o/amvYujZKli3VzwFFiu0UFEYX31lT0rXaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720019723; c=relaxed/simple;
	bh=FS8X0jLYIFUmRGl2oRTSNBiZOffbsDAhIt7exJPYbr8=;
	h=To:Subject:From:Message-Id:Date; b=Qhc+4ppYf+Bke62zUs2WlbyiJrvR8hJTm7o0L2gM0t1iL433b4ll7R2xIpCCU+NOJamvuGKf2PKF6PXi544PNe1OkVIOZQ2a/aMFxCITJXfEqHa5iKgm/JzYBCMsSKCUrfdsj8y+CWeF7B26oM4DMBWPQSpch7ltojq4TBVhutY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLT2xwPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLT2xwPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4425C4AF0C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720019722;
	bh=FS8X0jLYIFUmRGl2oRTSNBiZOffbsDAhIt7exJPYbr8=;
	h=To:Subject:From:Date:From;
	b=jLT2xwPv54leqHO09Jp9bOjFzb2l8pLaTsVqyv7uRVpWRY+FCfOimXMdI4cgLkTEi
	 XlFxeCyRp7R1tjqyTVbzmex8OGbjQA1JJiG9vszJwISlW2eXsAXLyg9q5TSueBNo5J
	 m3Mu0ecUmr0F5NuDEjV+cWV8cCPrzFJYAmgeV+lekqN6KnqXS2B0tt0AqSIeMxPe/S
	 emHX7eCW8dfEFehOlytSX/Qm26zUgKBeiKzHYw9gex5hC9xUOatOTdlEufgDxhJyBF
	 XyzrnUcOG1HlDQhpZES0p8ZzdZ3N6Vjay8txIVVmKjF25K8Xb2wKKg4H/YYTZMJgTN
	 EFBBUtBrZtYzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD987C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001972276.6793.7608938931370753681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f904bae4844aa7ff62b2459d8e57c52ff583a7956f10ff80bb0dc537d5bff0a
Date: Wed, 03 Jul 2024 15:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720019722
