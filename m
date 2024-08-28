Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D8F15853A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724831754; cv=none; b=lVGideA7+R87dv1n3UNfxecQ7w84uNoB8FjOpcV9XLTZO+RKoeLk7inYuEPIBogGtuUsc/WYX4oRRzfaqwYKhESs5fFXilFzoieTk5Kz+OQ5AUNeB2qkR2TYpt63QmD1iAc2Vl21SZlgqEwLHxfYb1JxKYUjfc0GaiBGp9w16oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724831754; c=relaxed/simple;
	bh=ArNc5TWZt8JnaypAXS/gqrJfYUKzgnpz3zlrSVbkW34=;
	h=To:Subject:From:Message-Id:Date; b=NW4idpslluXnWolILRA4IGNNbWfJzpcxWRoXjwP2NasMJ6SVfVNFrbj9nrxAcZiy6fbl/lZPXLCjzdJHElQI40WpqVWPbg0cZAJhk/WDWxKHes+UvvdUOHGhwx4ilX91UQaLecLtBYrsuLcu9pDx68dfVd1mGZrp2sfn3UGU9E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV5lYulj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV5lYulj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7025C56778
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724831753;
	bh=ArNc5TWZt8JnaypAXS/gqrJfYUKzgnpz3zlrSVbkW34=;
	h=To:Subject:From:Date:From;
	b=DV5lYuljVgIWVTx0Xs+8OF4kCz6aZRjR5qfpbEwEx8+aR3qJPDy0W9kKALUZpAEqS
	 cqFN9cw3MB37ZxC9aYsGuu44c3oPQAi9JZ1yH7dR487vsk1JtcpnA7i7dnz9KREfBO
	 1y8nJk3M2AH+JHV3DPUipvSAkMov9LjT/qBGnIBBHw02+rXpR+dA/K68umcV1tRu49
	 8yWfVOBqRwl7tM18f3GcMzcjyf9BdCidtCu+QKmlsxuYEdKb6pAG7hwEm7138WpGqX
	 GZHxYTP0b/q8Zzjyd19JDDZM+9BZpe1bdjEXK+z/x2poARwvGsXP0Tncb1YrBmWx7F
	 yF37cV9dH7EEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC8C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483175359.17787.5475232886319933119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f08c6e1016d1a9967d5cce6bff6a0cbc54511577a6132f51ef0ac351a884e2
Date: Wed, 28 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724831753
