Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D16A344DA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782450454; cv=none; b=PEcetM7xY43u6UU+SwPvt8kVvHRHHEx9H7U0tY5RNZv+RpEQx7oXneqIIqUerJmgYGwKJANSJ+5QIkOWOfIYCY19f2pxw+5kzJow64EEIOc/YpUgs5UQQ6uYx1Ct7IgSJiIaTqAeZB3d50ynchQkT6spRUda9VPMoDKcf7UipgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782450454; c=relaxed/simple;
	bh=eZ69/hwxvJPDZsjRsoKTjESl6Xj1HShDvUYVrhtCSso=;
	h=To:Subject:From:Message-Id:Date; b=r8sODYbWQG8YXbwEvD53tPZJN8bh76QMbkK8RH2jjaHXYJrYEoVPBS3tXRaC6i4F3ridszjhWQlCXQ6Q3ot2b6TqLmOYC8Ak9gCj8TjclkvQ2esy7O8fQBcDKgXpFgO+I1kH/xYxNvvrbka2IEhGAY0DuSdp3N3YaaMIbMjSJuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCGsW+k1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCGsW+k1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9613C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782450453;
	bh=eZ69/hwxvJPDZsjRsoKTjESl6Xj1HShDvUYVrhtCSso=;
	h=To:Subject:From:Date:From;
	b=qCGsW+k1jUzZZ2iEz4E/iTm2ppOcC8+R0x+howepqCNvXeRG3qn4h9kgub+5alihH
	 jk774iHyQ2JncWEJdtPfdeCBYnOf4T1kTKiVNN+puLQy+N96hY+sOgktnOOPYZUr8P
	 6ulldPB4In2vXOl6FxKUy76FzL919KNJ5ExNvL3MbHXkPG/O7yXz9F2MK4/SIGtbh3
	 0QJS+98WWksJPBr7SOnKaENmfs2viZcgrCVrtnlEizy5bER0Yrvevy1bHjLk+fsR9s
	 mQS2X6TGC0iV7s3qgtmr8B9uKgAYL42Szm3KMzlTp/df6//nqNu+94ZpH/BpHTHPJ0
	 YFuCduCJQ2HcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE304CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245045369.9749.7592229057257725551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e1979f9e917427478500b2732ce87b9e0c25567c53beb339a50bce0e69a132
Date: Fri, 26 Jun 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782450453
