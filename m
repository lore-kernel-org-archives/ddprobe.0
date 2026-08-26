Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B42494835
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787784634; cv=none; b=nQNIFC1okuaeTVgx0Xd/KqdKz+DbMDsPKOU186BB8xBuA0AhymDQ57RmugS3k9yOUQop4VMBSJLpNY8nyPKg3b9hF7Zh+nKXDJ2KYTnn7PtibZXG7z1Tnaxn0lQMZI7J3C0cV1V+UV0xuYnQcHVoWzOF1tip6V++xcc2qv0W1PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787784634; c=relaxed/simple;
	bh=BXgMAmvRlJFBORVy2WR8kMvbVh5ZOoyqaAFkU20tddg=;
	h=To:Subject:From:Message-Id:Date; b=iSil5AhB4icIvQ2Du5Jt/wA6snK7CFkXVz7kScyqEk/waJemwrickmH6ikUDYQnCnzIBglrD/c0icR+25839UfRY2fe6jjkrTtUe6We0j34ZyZ03wclKlGK6uHVfqbm9J3ExTbT6DkO5gqIATZjbWx3sE69wvkWPQhHJ0ix+EZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUfiP24/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUfiP24/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D361CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787784633;
	bh=BXgMAmvRlJFBORVy2WR8kMvbVh5ZOoyqaAFkU20tddg=;
	h=To:Subject:From:Date:From;
	b=aUfiP24/hkQYa3lv9Q/CWnbg9EmLcmIDHQyYqPu99/u+d0UMUYzo+8mDzlNcNnPuP
	 9W8Zu6Lzrg3b2aShsiFzIsDB6ru+W5SCegLti3eSNpfNFdUdtzTLJ5jiJSyuWBaVk3
	 BcEE5lgtMH8bJ+TkOyli0jqb/eCveDdeYpR2/jydJMBBFI87I3vQ+SEMLqzzxGtG24
	 Up7/q0mYfkg//nURT2mKnWbnWKerL40YzaeFiODzjyCLVWujBYHHNBuPHTMEmCKBrR
	 ilxKUkg8l3mwDjgNDE/52L6d7Uv84waXQJtDGuz019RK3fPPy7StMpuG+KryClmJ4Y
	 ZEqrkDbfga4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D97C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778463368.6987.8878773735955348792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b33b6edf312881301433f901f5abe7e49fbff68120d44ac61730f774c7dc61
Date: Wed, 26 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787784633
