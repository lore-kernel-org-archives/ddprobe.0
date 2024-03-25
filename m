Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EA712FB20
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711361897; cv=none; b=ieGEMsyjQBow07ZvAmRrNYnRck5P4xT8HVtcAnxIoenHd8voWv6oXu5VovImnR3TTV+25DbUzHZBhfPm0kkUnVEtXqq0JobGcreznzv6Z+31oWWeWzAf1s4+zZ8uzqC5FbCDVa0GfiXxaUMc/6bu+JKZafeFTWF4HhYmt2l7aMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711361897; c=relaxed/simple;
	bh=aZXSIxpmr0FmFzmux2Bwu+F23FIX6/wD7tc2D6e41l8=;
	h=To:Subject:From:Message-Id:Date; b=phN8sH7kV+MCP0BOnXYR9nPJ1NfiwOyao04iI85sj1gs0kzUZy4Nflk7UnoDdce6TXgMIJj1lgidFPNerdQdZICjoF8lykoYt9OgAPzWzECyJF4sp/fWwfoPJJ8rEXVKGEaAILX5ego/eB4yRmwgcKgjkex2cDYya9rb3zgJ2Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1wy20mk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1wy20mk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89348C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711361896;
	bh=aZXSIxpmr0FmFzmux2Bwu+F23FIX6/wD7tc2D6e41l8=;
	h=To:Subject:From:Date:From;
	b=F1wy20mkIVz9bOswPUVovfBhXUDpjIKsv1npiCjaglKjgNHyNj6zSgibpHVBR5oUV
	 UVLmb5SbqyL96bAU4vxJCT9RNHhh5cIlpeaBqtlltV0JEuGfPSPGap7ydpTyrN4+w8
	 NDJzSQo3s3bc1wuPxGcMBQsRiUd4pP8b2sSOZazGL+m3ls2dob5OU0W4p1DrTdrBbE
	 tJMAlK7suS1igAPuE2h9H0qBCTBbOpM1MkQO5Udpc5oUeBFXZzLx+DYVi2GWi3ohdd
	 k+QLKAXx6I4rCwdj6PA0ad7lnDshvPeuwvnSopCS+y0jrnz5UI5FiNai3jsgi/E3ur
	 DqLgq5JEOmKLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71159C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136189645.11647.17834326863049573470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ede09b7ee3abc34dfda6cd3b70e6659477eeaedfd812993f6cbdcb573ae2b41
Date: Mon, 25 Mar 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711361896
