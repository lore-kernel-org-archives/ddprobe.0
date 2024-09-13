Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A904F20E
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726247154; cv=none; b=kQ47eunonQ8/XcoJWssCaa5BU2BInmX9NFvRFBO+MPBTPOfAx55wJmrrCRAhYkz8C3ueYm7ReEzB8T84XBZ3ai7F1sRaK7KCNi2w0BcfgbBcMxOUOISmrx5zDB3UoQJGBNiLLJSezDRBphvAzrdvvsn+BXbnHoBtWLgTJSxrkQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726247154; c=relaxed/simple;
	bh=yDUofyyQPku6wL6gxw241cZKMp5OlNkqqenyX/z5byA=;
	h=To:Subject:From:Message-Id:Date; b=HzTwfkKEwd8y08aUGmReskEu8Up5cMVPfNYrKkRA9K/15F/5/SZd10vlu8QdcFm8kWH/frtilVEnRk/siOFJOgHwR9PPLXCnas/bpVq/b5oWWQ2fAlHudeB+/G++veWw/h8OO9vVGXXvmLtUcx8UuvBvlfdUnnaGFNGz6aNezzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAypdJag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAypdJag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB670C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726247153;
	bh=yDUofyyQPku6wL6gxw241cZKMp5OlNkqqenyX/z5byA=;
	h=To:Subject:From:Date:From;
	b=FAypdJagX79bWBbYCIaQOzvM8ltr09Soosp+6k0kcguzHQYPLVjcwQz1usirbLTo7
	 cosIUCuq7S+01+yQxE4g59kt3SSUBqm4Q5yvQbmjoGYFp6+nS8LXdbyNFti21R3Sh6
	 05gdU+L5AkBTbVn4V406BbPuSaULNBQyxHO3Gy1dlZGr9Uu7RSPP3JcWMYb0URvmUq
	 TL99B4p+bcapnnDdzoylIXmuaVTrLsjV7083bgeR2S3O03woY/r8xuBOEHsa3GHXMS
	 o5Oi0nIXRFCc77ZmFgZDc8DZJFYGXp5/HN2NeSmc6GBO2ZCHeKm6n0cVFIfwYyGd+Z
	 TITLPbj2C4/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99243FC6168
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624715361.32523.17555269414585653794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0485f5c96058c4c129b369415d0b69feb9c154b11ef658e06b9c0d6f80208395
Date: Fri, 13 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726247153
