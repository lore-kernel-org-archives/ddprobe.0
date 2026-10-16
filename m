Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EE147F3B3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792156234; cv=none; b=ERj/PU4YI6XvvxBc3ENGUSlKfKLLSAMQZfTOvrtBlOYx2007MmbC1/O2POMp8HOpoMjHKKjlj7cYd2WzVN22+dceEskdKBZX4kYtjcrI/Y7pJu7T12EPDgsTH53QTxcgAlbWg2u8RBT8CllOYRruVIExRvTQP++DUdQl3UfP1KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792156234; c=relaxed/simple;
	bh=u7NFR/FmBMhj1ZxUSwL/pYHGbwnuI5aHsE0EQzWkawU=;
	h=To:Subject:From:Message-Id:Date; b=K/pj2+eD0xeTAnVRTIKLvc5ycEdYVGCVskAJqSXaqiWd2OSOHNSBOGgH4wTuk0+Xu55dinbVCC5HJpFoTcpmSW/iOS1IuG3eK20zE9TjS8UnA8D2SQFpqVjwyiWFW2QIF+gz5bP1kiYlM81DN17kBY7TvGbvyfiuvQTd95DLd4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8F3lvEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8F3lvEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D290CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792156233;
	bh=u7NFR/FmBMhj1ZxUSwL/pYHGbwnuI5aHsE0EQzWkawU=;
	h=To:Subject:From:Date:From;
	b=h8F3lvEQP/bY18hD2A9M4lbe+Lwyc8P43tV1ITQ2YWdGl2aZoabk806hV4cVSCwEI
	 /M6TF0up0uoU+uGgd0jPGVpDTSjyPptcDzamjGB11WFaOCHw142BJe0ewDUs76m9HE
	 ldoydKws4Q8FzKv1axUTLlmdl/2kXPxMFnAz+5FaR44aa54DoNTQLdNARZNXwc8eDr
	 TnhVURVgLCpVNX8z9jkGZKrtz3DZ45KcF3dgDdiXIEcqx3+PPOLMUyl6IC2ZGuO1sP
	 i/ClFf2VVjt7tU2cAfwoo52yn8R1au1OG7/AvwawbYTnAWjM2a5fWW5erEJNK5DTbi
	 KBWOcvM6tHN7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3E0CCF2C2
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215623369.6870.6456559379967250604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6ec53f5d1349039a611a1715212c8c10fe3d93aa8f42724b1cf59a937c5406
Date: Fri, 16 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792156233
