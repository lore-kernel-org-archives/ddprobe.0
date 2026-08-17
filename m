Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB51360EE5
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786989034; cv=none; b=A48FTGL6NDGRv+6IWVHgkuvTFZXGk+maUs8ErA/TlwcNSxVDV2ZTeczVmo9HECVvSsUerBBIZWFE517t6/T0Shlo7Dk1CIc5DNHwTwkPRPolsoj1CLO2pUyPeIrXJbGLjsZq434vCd9Wp0HHjQiAYFRtFQ80blHLQQ95s+M5rfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786989034; c=relaxed/simple;
	bh=xi0CMau5yyl4dTIHWfsGPKTr1pY3Rwtn9hITZev4CJI=;
	h=To:Subject:From:Message-Id:Date; b=FSN6N7r9GzsjbvqCApRNmjuBpJu0kPptrsB2KDEN5cfJEp0VbNnW6RO8GHWuRGxZAt2gIvRmIV1llx5NUQ+twnCCLX5rqXL0pahnlltRXZLYaT0z294JvP3hI0Vz330Ig+Iw3QYNefxVLsfRlfN9lOQUXcE7wddvZlp5uEfLinI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jp2VCaog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jp2VCaog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB57EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786989033;
	bh=xi0CMau5yyl4dTIHWfsGPKTr1pY3Rwtn9hITZev4CJI=;
	h=To:Subject:From:Date:From;
	b=jp2VCaogQ4AUpmckCx2ZT0kTdBw5vzq4AtA2aCzHxBPqTmsm1lKAedyRtriA/dQsd
	 zRyy3yh2xwQGO+KpFT4dIZAe12yCa1KgkhbIvjIEYt/B4K1PtBj1z102j/8dPh4Nnc
	 88hSElnSf/S6SvNbpFxWe8pV446bEOKWmeoeZQvdAgLSDlby9G9A2YfxX/mgIlJ4tn
	 Om8ix1x8lXHC7rsMidOe6RWS8/vrh6WzcWm251KDFfI+ECUHWmTV/4h0VYBCi/+adN
	 aEFTYwwFADAc7zcmHMxGDIzAxbrKYyN7iuvorR3+oRh/gHbbBbK9GwTGhY5IysDOr4
	 WcYJi8pE1AlLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB1EC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698903368.27372.11825648043205331473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e71345fa439bace4108c40cacdb15ac6f3936bf50bea26f1a4c1a6bc0584819
Date: Mon, 17 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786989033
