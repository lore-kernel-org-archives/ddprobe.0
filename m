Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F8F3E1D1B
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777469854; cv=none; b=Qlpg+g8cIYXPkecjqbGk7iTslGNaJgNpX+ZYZ7VFeS/3KjZg3kQTs/au4jld9UIXeWfXSlxqODskpkMGHnDZwM5ksQv6ONlZ8cwwv3JVp0bl966iFuuhODvwIbGlLmn56o3+Udv7dsLFSSLjQW5BbKxt/FsM5cWOCXaYsNfUnho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777469854; c=relaxed/simple;
	bh=duGEjFnfrNWUPnP86S/qni+hUbcmAqSRbOvozibob6M=;
	h=To:Subject:From:Message-Id:Date; b=XaKQ7CcIFw2JXAdTZpbjYGeyt6/72P15COp4bDjjxzVCPWvjdO/fRthoJjCgtAwuDMsmZGvmnDeM3GlEJJM+HWd3Bq9H6WNI/TZ3Q3InIQ3zrp6iiP/is0q6NZ9aKXvjUnmkj+hharQ5401I0jtq1k5oDFxVjig7s1I6oGAkI4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLpmEOUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLpmEOUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1353C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777469853;
	bh=duGEjFnfrNWUPnP86S/qni+hUbcmAqSRbOvozibob6M=;
	h=To:Subject:From:Date:From;
	b=YLpmEOUY/gb2T0vTGCbywG2jr8jOX0Nef7tDTiavG/wJxvLSFGmFx+JNKmznLMkX2
	 4X7837SRNdc2pc3T3W58WMzkdcLDdJp6njkOrshWwUgqdPt4Ia1MPQjXMlAM00cAcx
	 8GSuLicIsLOdGrTwZngoA9YQ6UXALTnlEFqRgYRp0uT3frNnAIKPuoIWCtOgR1DlZn
	 DvxZNnC6ztny7yu6xAMlnUMUP2LTWO6NI3robXmfVDAylBnVBYtC/8OFzWUNk2CbE4
	 C0jVGYL3RjRmuqI6PvnsGvVH1xghAzInVae0/trAhHyeCAr4giWz+TpqPRcXkKyrGO
	 0N2XGLYw4K5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA405CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746985368.13139.12440590505531986232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07741240ea213af174aa8cce05e2fe730ee40fb0bb9c6bbfcd84a1da33b7abee
Date: Wed, 29 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777469853
