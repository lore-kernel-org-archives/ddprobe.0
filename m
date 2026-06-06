Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EC41AAE17
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780764274; cv=none; b=FbRW+RQN3Js/PZExrU9DNFe9NBT68dJv5zHPB5qNChNCSfMC09RNyfs0vqGNuwXVQXzb4sTYcwf9dq+9Jr0DFp2KQ8Ufm+X8Z+OTOfVqVStb3qXIviN1U/KmmDgxf4cKpZAsCmbqdJsCNnBtUCYrCWKphBVbqaRlQlarQl9pJSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780764274; c=relaxed/simple;
	bh=lJVRfOgt8pFNeJ9htGlP6VIK62pR/+hf/jhWCZKagy4=;
	h=To:Subject:From:Message-Id:Date; b=l9q35WTJIyDXUBkGcUTyVmVAKZJgEFE3aWMvYayU12BbsPorK0Vm1VDwi1ZlHkZO5BHcF1VbBpRZB5W9y2QGW8FtZoU+1t8hJICxVERjxru0qaXWTKtXU5pt29fV2+bLb6WfmnGZg4kDUqM43PFHkBYptIY3eFmFr4K0mS09AFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISTW7Ece; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISTW7Ece"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3481C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780764273;
	bh=lJVRfOgt8pFNeJ9htGlP6VIK62pR/+hf/jhWCZKagy4=;
	h=To:Subject:From:Date:From;
	b=ISTW7EcerES5cRhdax5GRd061rOSbws3NRVqUpTdxI+nbf7yStL0YPvGi6HqPXs5e
	 TiI/JoRum8H2MPO2mARxb6W4T2JTdUL6Ngl8louhUwZn4ykKK1ob5JQAfGRZ6rXvo7
	 Uq8Ln2fVQTMkgLVpi96KoSKOuAFvOT415IdNhCODDC4I5D9eID0SMzWlrRAVXSU/m6
	 OMvvOjXOVscGJiqI60zPao8qZrR9KTijXZm+aAJ0mkguLp3brssE3kZ4pdOR3EurnM
	 J+DLnTgHv9C3K9mgsAdE2GWCw7jqdbvhT3KqzNyucu8AUOwPoPImJ972gu1o63tLie
	 M2ylTDO8N044A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D0CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076427368.20826.12403768067424078175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ecd900c3156a9e6c4961f03ffada46229665465c941502fb523a0f636a3ff
Date: Sat, 06 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780764273
