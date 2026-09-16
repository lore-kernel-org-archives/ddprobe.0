Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02743939C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789594236; cv=none; b=F3IGBMVyovHk9vXEq4fi4MJUe1bneKWY2Lm6Qoyv2JJnD4JcWp0R71pS1vylqbGEGS/T7o+1Oq0GUf0VFqfajxkQpFk4P2yQhZzmtndsTbxaZ4Fbv2JXhZVjxGFnmmhdGYWG0VKAHqbqke1Am2G6JqhSWEoWlpz8eIbY21VyfVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789594236; c=relaxed/simple;
	bh=UlEFfEv/cwAxHbabqrTMpKHCbBrK9xsNYE0qgmDZfCg=;
	h=To:Subject:From:Message-Id:Date; b=ogWE9RwTNAFU5ah7O244ALJa/RfLBnOU0/ZKrjoW4N2LUp8T+Q8S+49B5RzsGMJ5YPpTFvE5/ZVeX0cKly0OXaBI3nzJg8A9YdpZ6D6d9j5ODVwWaAOpRF/LT9E6vVzcTgqszTBoj3nNiNEZmK0z8jCkwvPSfIcqNJ/9onEt8Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M88YMXI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M88YMXI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D0DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789594233;
	bh=UlEFfEv/cwAxHbabqrTMpKHCbBrK9xsNYE0qgmDZfCg=;
	h=To:Subject:From:Date:From;
	b=M88YMXI3YoknMGYN3nefvqmTDUNAyD6qye4ecrClGxfHeyIheP+eEe3xAEXNNNAiC
	 OLi2gSm0RjGd6U+BB1XQnGmifdIOVuIE2Mld6g6IlFsf7lbiE1mc/nDFh7qSVTGZoq
	 Wmj6AodllULEnw8Do8Off3d3r277YZhGVv8+D6xrAdM5Hl5et4G/NYr6p9H0BtWDNv
	 R/1VdmpUSK85LWaa0+5XFPFT1IWjxnyGNmhdhgcq9//eOwDUZvdWcnGaaWLmBi9xhc
	 BrwMyaN2htSKpomQ3ZG6X1eXPPYaayHV3/Y7Oo5TzGMvu/0E2kL11jZUjzF3ftoJcm
	 iSVi95vPphNxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A0C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959423369.4694.11483239119951211648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36054ba9833b3252adb1f73042e59ece3cdeb4d749aea7614287a9f0e8a15aff
Date: Wed, 16 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789594233
