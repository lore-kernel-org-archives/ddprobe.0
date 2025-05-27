Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA8248F52
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748332195; cv=none; b=Bj8Z7IoWbcvaiL425c2LsHHnvTcDEytBBgkoFTtZsHQnK/LiUez+YvtxuA0Or4PCrruFC0O4iWra9EHTmoAA9rFwkrbv8aQjXtHuNLMYyY4tSKoAFqnISApX+jT5qpdrzZqcHO2Ty2itrZog2f09KBQ488Jan9XnYdYn7XwjL44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748332195; c=relaxed/simple;
	bh=48eGmkD0MhEiVhM10Dg1Qv3IQ/XgVGcKVpKHZLHy3hg=;
	h=To:Subject:From:Message-Id:Date; b=nhVA3KDpKC7DVFoEshoRyxtglDZQ4gVGvMtAGgyIskDKvsjO9yribSFtfl9/CvUnAQu6Tt+awhKPOZHk8hrmMh7opQqKXbAix/qgr0LB7pXvLazqEqBX4vccHKmcBVNpwGmBZ/FSu0agFpRA6A21KTLxRhhJEOjq+4mDoVkOd/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRR3eFCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRR3eFCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748332193;
	bh=48eGmkD0MhEiVhM10Dg1Qv3IQ/XgVGcKVpKHZLHy3hg=;
	h=To:Subject:From:Date:From;
	b=IRR3eFCGTfpMkmDkYTTb4qqIzw7EYhlxTGFhEJ7v2LHQ3G48yYpbowbz31STMlxca
	 W0uY5RCwppEPj/iTsCk+/5TpAQ4qF631pTXpF1c4cQH7+ZFeAkbG7Q1razkdlXW13m
	 fqfZMcUm7gj0rXEHtHmaVtLIkS8kBKhkT0AhKpArEND7sm+yeS6CKXsCgMCf51YhGj
	 LajvSw+kn8EExxVMxydxrMrgJJuZQXPl1coKwMgx2K2CsBSIyRF20WIBFZbUyGXjer
	 3vqBvavOb6PaBoinM/bKgDVwhSedaD6B8ZzWuakj/Qhwc+LiTvNSrvJhO6qG9l8Hfa
	 OERoa9N3hbw7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B7C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833219358.13265.17591708385552893584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52aeada50363da6791a74889b1c161302110e107de617286d1acbea11f9937d9
Date: Tue, 27 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748332193
