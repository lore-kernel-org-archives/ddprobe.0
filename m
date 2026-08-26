Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A4A31E847
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787718034; cv=none; b=rtgZoBGX53rG/vzfAlwXSW555Pp5VE7JWFr008BXvjhjNvl6JLOsgZUFhemlkeY9XLl5dhMNt/4SqjyegbzmC3PbXJRH3Ue4WZE1qlwuxY4Vw3QkHL21YLydqNFACWLhTYpwYfG95ZwfUK1ZPzU8f/Ad/UHA2x25cZX4xlXpvIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787718034; c=relaxed/simple;
	bh=cfcqhNvdkp9NBHIXD+86UDiIpMKMUdelpTYOAYhH53c=;
	h=To:Subject:From:Message-Id:Date; b=OXC1xSV4dxhDTAWAMlUpRMUnqG38WfaSSt8MMEl17gLqsBVUzlgK13PJhUxCGP+WHqageANA7A4zj8JDCBn7yBh1yIKai/VJgcL64njqKjzZNQKGjz9aP2b/90yq3TYYbADCg0FV5QtuxINeyh6SqJipSDBn2jg5ZFycyUqrKj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVYISij9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVYISij9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0268C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787718034;
	bh=cfcqhNvdkp9NBHIXD+86UDiIpMKMUdelpTYOAYhH53c=;
	h=To:Subject:From:Date:From;
	b=OVYISij9qqGem2UUzJuMsNwI+OR0hNwphpa2P/q4pMRuvQdXkTyAlw8JYgiEARoIj
	 GMvi40QJfBzFD7HjN9EJEKZfkQlphcWzkwWpAA8nrWsmootktiwsLFY09SwTaWQqIR
	 n0ndMY1cb/XOo/fCKwvQbI+PIjFasVowOqDdUmuqaKFZTuZhIPlIml7I/O7TCkkGJD
	 WZLhgK6sPdCjLyrqGUa9JQ9A7+ttP3WbUJxPuLWtAe2rAC8Hmo9pD4e48T635Woa5I
	 R9SDVRiRjfxqNuy9xteQ4oZ/83QGmv4sE9Tyxli7A96BhEdqZjpb5CtDveN0Cntvkj
	 Hn1K7IgeOQc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C00C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771803373.20196.3884393366317436566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d35be7d7c3de48ae02c9a60025f489a3b045a59d57ab20be753ef3b004ae47
Date: Wed, 26 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787718033
