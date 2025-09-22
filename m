Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12775C8F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548394; cv=none; b=t1NNqmL71dmrsPU+8FiECbm/uAEAjfdEY7Hluzf2WOQK6HCl9165H6lwIFwOwQ/pffN7X/T+b/PP16tVdWuBtIvh+xzR1g0TNvdXeLwd0T7ObEnB7wf6gUzZ+AD13cFmCc9H/bWwcXu868OR7T0PnOMHa8VxU87f77R0sQxUQt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548394; c=relaxed/simple;
	bh=56INcRp51VnzWEdUPJHozVUnY3x0X6JrCCZVuHqndxs=;
	h=To:Subject:From:Message-Id:Date; b=HTNw69dirY3nGy+G6V/dTE4cwqqeNiFTqL2NPqK3fQDD21ossak9mmsaM7w+w0fvVoEURddJoq9zVuNFNmajlRt7B8HZBXdg5+AtGlUs9AIGuejTRqmSm34kswQT+XGiPSCCuEMhiVAyJ3rMkJpAFoQxbAZSgWEbRu5RzXyrr5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRN5B6bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRN5B6bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC96C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758548393;
	bh=56INcRp51VnzWEdUPJHozVUnY3x0X6JrCCZVuHqndxs=;
	h=To:Subject:From:Date:From;
	b=bRN5B6bbiDvL4JkucA5WFzB+l7lhnsIOQ5tjZ7aMjD6ap3nsLL30Rtayk1yOI4Hdt
	 SedpaywZm/fz+DjMok9LAABiDBU27zoRqqTWTJA/eeu/xKVzljMLqGSTSogm2keGYc
	 t+V2YycfjejCFTqpHfcbea7J1pnQtyUf5wgDTjatrHhzCGF10ZbeJK6HBHknbatef8
	 wm0DfFiu7MfhNlFNpaWSQYPuACIEskK0K/3t8VlShTGsxmGwp9/jS2a21jsg164JLg
	 0GcPZEtknBvuDc03X2daCB+P1MliXjbv8fubjikOjddDmtKwNMP8MpEfOjVXTf6kkg
	 mzk9OTCv7VV/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DECAC5A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854839358.3043.13477037135955565798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f7b39091e60b15a51b729efc33f30e2c0c56bb2f55ac8ea28e6f4c8e418770
Date: Mon, 22 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758548393
