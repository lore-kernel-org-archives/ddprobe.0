Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C02F691D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779253834; cv=none; b=NpUGDevdKTmHYrunbuYewl9BRaADUfy6zBjOztZWE0HlkQ6GN37f8LMHDlxuOb0HHG/sYLej5iAuztv2Tdho1D75xsdS7PF1N6MxzllDTCB4KgkMarPNUVeq8CbBylfKRSFx8Tyvutzm8/HCpmkqQg1ICMsYJ1n8FhrbBsqd9KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779253834; c=relaxed/simple;
	bh=iJm7wsHVFzXcXSq9QMO144O1dq4n0ovIL+DeFRdmOe0=;
	h=To:Subject:From:Message-Id:Date; b=lECbhOcepk4cLzcBbDrrHURy/OlFkqSwoypdi7EkahO5f/lb/1ahPzJ2ulZ2wJZ2nqfeX6+YUF5gwJhn8xHPQYcxvdFhgkSU4GHSbR9E+WJtawYJPxPsRwe1oKlCvEUw/kNTnyAFQS1Ue0i88n+s5pZMx1hu2E/en5qhbIR03yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEA1o0N0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEA1o0N0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4844C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779253833;
	bh=iJm7wsHVFzXcXSq9QMO144O1dq4n0ovIL+DeFRdmOe0=;
	h=To:Subject:From:Date:From;
	b=mEA1o0N0rmTtjdtUxQfjkSGGo8Y4OSwhcKdU5H3+AAi1lXS5uMT6bI3W46VGJ3h41
	 lpkQlMKHM6ooxnIc3v+7clGgOpFCN9ZtdZV0K5F2oOiUt0IAJE3zwtTMeY3mhl1SdM
	 nqh9HXbnhy1PQ2KVhaMs3PoNzqXbrUkw5zD3Q+2JlI0DAB1t6SvWqi580wQ7MatzWB
	 dJNx68uZFWJFbK9gAEIFAWoO7NAXv1mZJjg4vfTvittekrexF5yxEyjjbjVitvT4+G
	 0K5/hDXpkmXx71EALO5DjPi6W5bywIPHJxQT3H3rsxaUfm5z3O3u8Pd17Oj4NNvqkS
	 gyOYRnPWHhMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E00CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925383368.18513.4757137788388625562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be7920c682eb2fce085447abef472c2165041c89223e75d50205f26d7b3bac4
Date: Wed, 20 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779253833
