Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16432320A0B
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763014795; cv=none; b=p8j0mzKpm9LEKkZ7c6VuFXiBKw899304BXQq048mMJJsGKwpCxxWdxMTOr7XRUGErZdJulyXInJ4igytW1cKz7zjpGheTPS8EMDJmd1yHuUB0CY3BporC0Uh2ABLBsXufAT4W3sNDZumUHRVr6IAshJJXa1sc6CSJ/YofG8kuYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763014795; c=relaxed/simple;
	bh=B4uSsf+A8jERgqsjb0AxTnhnhIN71GhFLug1c6sBPc8=;
	h=To:Subject:From:Message-Id:Date; b=osynbtPlf1dxPY1opwYTYfI5tsm2bvhAgLTRCtX0YfLet/K60PT4LNHgl+oex6tmDl/YXyNFlVPXve1GDUmBJaFpY33Vmfl6dJmFkkBCEukKaDqnNT6PydEJAL3Ip09Yt0rN+h0zP0BycWHr5ZDPQI9MMm2ktH3v2vJeUos4TWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9Q8U4NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9Q8U4NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A318CC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763014793;
	bh=B4uSsf+A8jERgqsjb0AxTnhnhIN71GhFLug1c6sBPc8=;
	h=To:Subject:From:Date:From;
	b=e9Q8U4NYWzUQHv/FdarMNQsHUk8MOVfXJCme3JYodWJ5Nj1q54gSa1mwftZBzvHtL
	 T9T6KFV1BjSEQjs8AnHVC5NPWST+/h9ZZYbaqDumiW7TgMpmEq3vnK7qBr58uCSd1c
	 ktDSHfDE9sbBwPZVV8eLNid3DHAlNsuG7mQ1Di3znrE3PX1kUzackSx1VemA/SauYk
	 6CyCVYHM7EdzfkfEtBlec/UCexTg1PWpRNFN5k458k1PpFCkiArzniXqpOR8u3Z5zH
	 At90Z8pMj7S6DbqWwpYMBe3Iy/fESsrtsW+sRvKIz/CkV2R6U0Hqs4+KlyyN/XRNye
	 PKuxyVOD+p9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB8CD4F28
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301479358.30281.4481321004435027994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1102705e558b9fc6234b8d1ab4d992eed67d95b6f0fec4ce4ad6e5ed824a70
Date: Thu, 13 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763014793
