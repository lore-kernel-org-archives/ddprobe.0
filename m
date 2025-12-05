Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E332F26FA60
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764970974; cv=none; b=BqBwdk9EPxaED2FlYusI0c5XSTHPc71lrKCkkHqsoslSQ3LIKI9xbjE7DftLUuTYxQ9z0WSoD22QtcDcCMN5KKjPBF2kt9oYXc7JSyOmnBn/d3oYWTkLmKjRuaSocVGzWcJF1ElQmp1ShTyS7ERs07PM+inYwiAgg96Eg+rSYzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764970974; c=relaxed/simple;
	bh=0s2aUGKFziFczS4L3hQAsWoaMSWWliYxSDAtThRdkdI=;
	h=To:Subject:From:Message-Id:Date; b=Fxel2bJLUZoZqwXiv0oplAy9bxNmeAyFSisghCxbG3eRQS+pMn9L3v1/auOzuYvSxAiLhUdaaT1CTApDZLDRqkniD+40BCpet5yDxjlHXJU2p2/fRAjYlQV0JETljiGyC/N9oaljkeFZdrONggjMNxnpLcbdjf9uARjq4c0RZvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQZNXD26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQZNXD26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34B4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764970973;
	bh=0s2aUGKFziFczS4L3hQAsWoaMSWWliYxSDAtThRdkdI=;
	h=To:Subject:From:Date:From;
	b=SQZNXD26DK+SPfYwMeNMfzD2hijtlGf39OeFOpb23iiyNZUZGYniCiGp/plOgVER0
	 Jl/ZCGX+mOXKqP5KrC3VoFlOUxVHtrgJoZ00+eQGbOdnlgMepDnzdr3Wgl2bB+nDLA
	 afNtUVonTPDbp+7ueaU50EDCi/7Z6YAZEZRXNFbGZrihBdDg5nSEcjt/kv2bm/Oaeg
	 sCEWsXoVVGfNEzipMohVF4I5+TRDOy3q1ROSejGXanqr/Kddr7tyMKMttAYAbJLR6G
	 900pRqrBVx0VFlPHurkHEeiL61jwmueUPq3cK5j7sOKF5fViEQ0fDoyFw+FUD09i1r
	 3+hOtRyk7w8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBFD374AB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497097367.15221.11714075231504539574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f63388c56cb57a0495153ef3fcf8f34014e61c275b922956416681c87bcc41
Date: Fri, 05 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764970973
