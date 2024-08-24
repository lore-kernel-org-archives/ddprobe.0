Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCB834545
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724466354; cv=none; b=dWWGEDrpz548rewH5wVhVhfEYU0H3QzAwHqcfK8XESAOs0nHLj+jT2WF9JIEmjwWoIsrCJsPUZ/umBS68GVTpPsEd04Dmy+SHX8VxXR56eR7ZoELwv93l3ksXf4tpvh4KiqZWI2aC6jV2lLH1j2xe5ug5hM0CmTchyyY+zY6SVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724466354; c=relaxed/simple;
	bh=BLDHnOv3DIbQGV4U6S1CXFFuwxFhi1ME+Z98BBpm44M=;
	h=To:Subject:From:Message-Id:Date; b=ZvwIBJ0q/X/GhNr7WUuNe8E9YP10AkGCrwSm/NwBVfiEEtLYNNt8w6Z5D3ipvzUxoWKNhzjHbCBX/ZVPcXWBKjk6Cr7bPQftCraImm1a+vIM0UQ4jOsaGvqn1bm5/+rgFAUtyiEzYhzE3QzA8xB3eg4iz6KZ7UkK+dVit01SyZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWxYzdbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWxYzdbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BEC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724466353;
	bh=BLDHnOv3DIbQGV4U6S1CXFFuwxFhi1ME+Z98BBpm44M=;
	h=To:Subject:From:Date:From;
	b=AWxYzdbEY2Vx9/6z9oLqS7jZ/TzHc3doJeSb3DMC+8mioaXKYZpYfiMthAXsZ8X2M
	 5JaFmWuXpCrhVXaFbLmeroui7Ps42IsChhZm3wAaKLreAF8Ig8vpz7IH1E2LJ+Qsln
	 IZKgAkZZGJfKLk1dC4AhCS/gbdho38g81XS8JC9ync0I/CU1Ehpfs1M1SU9TD/Vi3c
	 TkV1/hHlHShnanqvE7JgvZZKAcKdWb+3f8LFGNCYVSDalBXLIUsGX97+jV4JCnYcwb
	 zlgF9yBsv+m6o0f5vBYOejuWZFSuID5hOh6BJuARo7/7im/qpPE4+EkOflE76DQhSh
	 fQlwDSVXLwNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91106C5321E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446635358.25245.10579994305879227947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6875e368bf96f7d8f47e58b8b89865ace92e194599322291d183fa9aae853087
Date: Sat, 24 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724466353
