Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B073BAD97
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773317694; cv=none; b=nIqeDfltjX0Vvcw1bAkK4ZdshMUsYYoxNVvVKMjmloRvXh1Wjgan+x71F9OGHHHqkd02RxZP02XmfXUOHiwqWPp97DYvRok9oFt+oQ0hK/eaa1Xf8ByzivKQ0QlYRoU1G2WewQES0GSmwrGTER3VbUMsedKvRadu6FqFJS+OisQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773317694; c=relaxed/simple;
	bh=Eum6TBJMj+mRonahODUDgzwNSUD/1wKeGEmKp+oFCMc=;
	h=To:Subject:From:Message-Id:Date; b=o6lIRWJ6GH1cQylo98O+Gtnbszj92BYliUsVK1Wx/oqq2Nrwrh809A6tp19DM9Ep6enAp2Pj1Uf033T1xg3tzChHIMsEfAb3iV/pU2sXkeYMtiJsOrmkjAbspks92K2fGBLoynKlRo94Py1LP7VCorE9B/+wfnSB/0c54A4Hyjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+cx4LDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+cx4LDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FCC19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773317693;
	bh=Eum6TBJMj+mRonahODUDgzwNSUD/1wKeGEmKp+oFCMc=;
	h=To:Subject:From:Date:From;
	b=A+cx4LDnftiqcejZSA1YfiZA5roGlSHUUIU2iRbj/bt81YOKmSqhl1IlahOaTJxNw
	 ThIjVrupgUrmtE+AfHPhTFe1Sxw9BCtXq0n4q6SjtJdQ1y3n5lXMN7VrCelCMrutqP
	 yuc2PzbY3P4r/GkyfQzlEiYf89UwYWTWrzwTnG2v8j0LP6JiMMzyZR2oCWrhz75u7W
	 DR40GYDPNTT0VxarVCvDfrLUqvWdGcnFnezloMSukjVxDvKUJCS9pb5jyEVtuivhL/
	 GjeP3zlcTwCLZ9Rgv3RWwmX2I7lvcSyU1MlQFu23cShC8htlrQCQCSwp6JGcxlAFVD
	 PEXZ1drBcYNZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94206105A593
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331769359.12816.17343325711326319385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2beef5c24957a2494d87ac3af26f1efa448cad07d436860550f380cc41c20ffb
Date: Thu, 12 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773317693
