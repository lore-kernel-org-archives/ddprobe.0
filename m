Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FD249627
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717586183; cv=none; b=JYTUuKKugNj9eC5k9SarD52ez2ICnYYU55NrDiITDz56apDgxh9ZgPgWJS4p2ZuC8thfROVIuoFEww4p29h1LAGZ+ayZApO4gCXXn8xpBP2MCDDbh7ps3rvPzo725BIid27E1OW/cC0R5P+rF/TR56c4tS/P5tYCL9UsvVxBzmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717586183; c=relaxed/simple;
	bh=p2LeQgIzCLoPuPLLgcaUerI36ws+UOVKDtfLfRLZC9Q=;
	h=To:Subject:From:Message-Id:Date; b=l6qty6FQz5pTp2yAkrUcjyKTmszQ1dcamrx2dspLCrCfb1UT+Sko0bobwFMS+XHjcfw1hbVxWey5t1MXKm9ni1xQ3CunAQgqi9BZS6zUlgfSNrmhlze1L4LbW9Ju6xlXjO5bSzRJcdMvBc7iSId2/U4Xm1KZuGSwT0OVo2PNAFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbYvO0/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbYvO0/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9256C32786
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717586182;
	bh=p2LeQgIzCLoPuPLLgcaUerI36ws+UOVKDtfLfRLZC9Q=;
	h=To:Subject:From:Date:From;
	b=XbYvO0/z1oDKVDfinuIHLFsmACSqE7n5MkhmZ8XMwQtebBDKTpqEXof7mbLx3J7Ri
	 qsHZVojOmUllitgFHKqiUi//yTK0jemvmfgs5mZIVC+1sSySteEK+N5JJfnFpirMn/
	 uKBY06/riM1WMLqHcn6lyJr3TUI2IsxI843EM3w+erMMyyB46aKwZA1H0OucSq2lGg
	 55aOJdpD+fC0yxZXDKoXLp0AtVJYsWbnaqwmo+cIAf5+K3SnKF7rtK0/M+nxyMVJSk
	 BTBvtN30+2lWsO+tYJ23KIWxtPdbtHSExh3YAx9aqi/HQWZwP19wZ8npkRe8OzjZGV
	 y6RtqxMBc4f+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3298C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758618278.29107.13992333853891492977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f29773f44bb59baccababdaf915c7e3fb5845b39254ffd31a7cc71c2c8ddf4c
Date: Wed, 05 Jun 2024 11:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717586182
