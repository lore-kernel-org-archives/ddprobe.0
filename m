Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49E440641
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790950234; cv=none; b=pXsX1FiVnHBUMQ7KxYouiTGmvQqXsysHYgTB2J4Jqh+qYJNiGll002OXe1O2999fjm3aDaTkjmvSE8uNhAJBiAK/dCC6wR+xec+6ayvV/eDZv8l5T8QTUGo1FcZnpp90AT1FovIx/PhldQpU/B4QeUrIGmApLWxekxyP06pEwPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790950234; c=relaxed/simple;
	bh=th5mHPW6Qm5aAoXJsITv/QYlMzQxCdjdI+7NDQr4cgI=;
	h=To:Subject:From:Message-Id:Date; b=ouFGKAAd4usA0inO3O59nPBVX43VaUzTI6iFIBErP2CXMWQ/ibdXRgLIx2s7NtBYHLZxQ9Izh+Z0rKZSjPvcNaBckm8Ib595x+S39xBzR4ef2EEXW3WLOszy9uxBi0vOfKtj2jUJZbMdXRdQ9HXkWYzkb2tbAn+nxdgmT9iMFH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlXEh3FA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlXEh3FA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE9DC2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790950233;
	bh=th5mHPW6Qm5aAoXJsITv/QYlMzQxCdjdI+7NDQr4cgI=;
	h=To:Subject:From:Date:From;
	b=FlXEh3FArtETRuZNmliObORKt49IvK48M0WRbGQOS0axAfJP9JSxe2gTtX2DcQks0
	 7d+MmFw2mdEyCAiKdzC5SBvnCKuBamYmNyJmhty6zYrsplwScfLJO2zNeQIlf64vmH
	 BTOFjlIDmV299dqd9u9896KeEwGBzun+T1apAKzUBYkmAz1fCVPVYkpPZJzERvTcpk
	 TPhRgN0IoveCKKlDajISpSqXEH7Zmn2ASitBdUYdDq0HQUU2qTl3jQIbLJXAtAFP3a
	 btdA5XkmF+IyXxrC5jPx2Hh+tdT1Nm8W5Tpr28mcsd6qhgo5FDM6E+/1yvKeTcS7u0
	 4LWobhKk/absg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAA1CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095023369.32689.10711904593416904678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e927dc21d6312ff311f256396c0d30a3e8bdc912d65d35d8c61f04f87ae3a8
Date: Fri, 02 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790950233
