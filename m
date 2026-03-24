Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE4523B612
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774389894; cv=none; b=Y+noyikjdU2bW5BvFMc8X4vBfoZHaE2qtKrRVp8dvpLLwSxeDcAb5acdKGicyh/CQbWcRDx0LOL4OalLKraNiAuJsx6hBV7kmUxAoU471SYX3Nnz4JmiQ0il53Itk22GneJehz9h+DECweTF9dbPUGwHNqSk7tr6qfsWGdoSPyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774389894; c=relaxed/simple;
	bh=KEMgnhlra3HqECwqCc9HuXXKL0mjp2XGrndjKgJolYA=;
	h=To:Subject:From:Message-Id:Date; b=mXjaWO3fVt0Jkr+7GgIFMZ+6TUTtFzLrmfSIFvHSpc9DGJJ8LHKV0XtAPZdBNw4SNx0iPXxoQMA48Yjn69VxtJzEIRMdUwcuPCdG77f/AChNvrhNQ7s24c5LkXwlW2Ij3MATnI82EEMHXAbM5K5w4il6m1ZCKlvYM+5dDUcG3dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bto5Cb+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bto5Cb+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A810AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774389893;
	bh=KEMgnhlra3HqECwqCc9HuXXKL0mjp2XGrndjKgJolYA=;
	h=To:Subject:From:Date:From;
	b=bto5Cb+U7kK/dGVRRDwtfTPWDnDDBpDcGwqVcqLHBehhhsqn+9fB62qdDdFX3+DSN
	 TNTZMSoNqi1OWitzfswBGSNeQDMUkVlZVGMN3UbnHvd+9Slx1Km95Mza4GOJMeWmRd
	 bvBJOv+DRKwKvaEAbJDR7hqu2oqjrm9Y1XY/x7SvjkcaNkDEO89I33Bnh2k7UMOR9+
	 GUOrF0aw819Pmfl4TIIOfZvmOa8x9CyxBD8kfPL5aQObB4fJc5SezirjK8Vm1cqobT
	 hgmQJmn4aHuS3Dfm+CoVX/f5wls5WznYWPm6zKWHKemwPMRC8nFxWMPu5d8rnqH1lt
	 1nmtdVSDc+O1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93797FEC11B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438989359.22957.16173705565612190475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba97d7e7b7ebd85da87065381da6faf0084aa9fa4c29ddd325aa6fb78cbcf232
Date: Tue, 24 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774389893
