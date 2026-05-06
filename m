Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1F13ED5D8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778073454; cv=none; b=LKEetsyn80NQvu7N4ASILFBGqrw064/Bw5VXkAyrmRTiMiB1vLPc9QigXrEzIWQJFFz/kkoFxs0e1eFC0EbWf6426NwhycSmwvnvr5Rne6zNd27MNPZKUN/lnGPAaPGMbAt1MfP1TziMURWP2SrgT+Tfc3kK1VCGmEmYqhEfflo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778073454; c=relaxed/simple;
	bh=6Ki+cJ1kjlGYlGfPTp5u3cmDxCB1tHDbm4/aFemwQrA=;
	h=To:Subject:From:Message-Id:Date; b=fgQFWtCCvdM6jevETcpAn5uj2RjmfN0E7Ta3mo+hEEPvErk+RzT+NWm5C7RBzTZSs1quXbRuMF6BZ+1SNLuyQ/GnuRQBRmaG9HrXU9YuLs18JJqDIfX+bBhf3XUwHB9JiRthFDIPI39sBlbvaqRkET9S6Hmga7SUJ2sk9jkl99g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld0TIgaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld0TIgaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9491C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778073453;
	bh=6Ki+cJ1kjlGYlGfPTp5u3cmDxCB1tHDbm4/aFemwQrA=;
	h=To:Subject:From:Date:From;
	b=ld0TIgazTxnbuWHTRvQNZLGwFaX01g4guZuFi42jFgbj91OzxYehQmX0s+xO71H+x
	 r8lIz90SKH9XQ4vG0QFBASrMnuTZN6oCIbR7kkWm/Ks+ceAA/f2PGON1DoWlbjj2di
	 X7mfD4oPHcxlFL40WijWK7tx5xA0NXQK7G+CIAEJ1TIkZAXMXn2mS6OpckWzzo07Xx
	 zgnt0K1sMJjD6nj2B30jzVNI/1+4tn9qM/UvEwxyXoK42ybf5BbVF0Ns13lFWq8ekx
	 XR3IRTapiU3mATUcxb7tS+kwXNqfV8hW9bJwxA4ZyyyYNP8ns2iKsZFz32okcIFfKq
	 4leY0y6da2Y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB29CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807345368.26999.14698706861981871806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff94403f659d93072c33e3557c2dc9792ea75792dcec4a7549d6cb51175daddb
Date: Wed, 06 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778073453
