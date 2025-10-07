Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED9528F5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759853393; cv=none; b=JH+amFWTpiq2JDS5bFTcg15gsgMrSVhiEm25JZ4o6JOMN40BKZcxW6Ol8TcQckEBUKU79EcnHV7pKcnpZh1tCD6Bclcw5ef1TSfNwAaAtRV+vozdmBOQXl408+px8VknsDJ+IITc5Ywq4uD8gCSPhey4Qdfr98CHDEcFYFB/+1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759853393; c=relaxed/simple;
	bh=0Va2n2TV3u3sNUNe+FEVBEXLFftZAAeFBLTSCMT693E=;
	h=To:Subject:From:Message-Id:Date; b=eGAuJ+Jl2YVa3yXNooczWnWDeqSQAY62ROpHm9crvB71p02WGNbs8KBqH6C3/Vj0YKEEGxzeVmfRkewD5BjWjSuevbVCjDDU3jFsSdxucxsMvEwgu1Q/14P3pn01MaTsrFRaUWOQbJ/vVxbm6Eya6oBtK5k49hX68MLQkSxJYmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmfNOEPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmfNOEPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E75DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759853393;
	bh=0Va2n2TV3u3sNUNe+FEVBEXLFftZAAeFBLTSCMT693E=;
	h=To:Subject:From:Date:From;
	b=ZmfNOEPhQCyrTwOYcjPVEUWYVOQ1wrV6J/YDsPIE+BoBH3F8RZIuC40MOj7dGwOgL
	 lkLRrvXhLJQS3/b6505UlKW/OHzOMS5H8BtP/1qJKTdOZuJQfyfcZtN1qizlzRR43G
	 Xm0TE06aGtsKLVwtnZOVo1K3AsK28KZnfut0UYUBjKWjh4pS4uhRZUWSa3aGdVN16j
	 ljBjLMoG3s9sqUyR8Rr+6JGhqMY5DbF5JHe6NEb+lJ9iBvVOFRSc2dZN/iHD872oCD
	 Lvj9GALiw4BKOTHbLrnGGXS3VOTTKLP/7SPDLRAoa4t7mSZoPyStUcL99QLNQqGqaA
	 ADE9AFM8shq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0FCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985339357.17257.13064096563950728097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76a52d1f58b5bff8a78f01db00660c9f47dba09879ab3e8e4352b7637b6adac
Date: Tue, 07 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759853393
