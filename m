Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407CC272803
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765430574; cv=none; b=byRApHurZYTht5oJ+701nK3ke8s/QkC189/5RA/QaeoqzRG6CNQFhAn9NZ2pc962tnm9O8kSRgoZf1i3q2pYxzlr47SRJrrLIT5t3eofqeooaOp17PqL4YjpLlTToh5bZvd+6S/ku2lNmiw1cxDv4DYOajukUTr1hOAmY9600eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765430574; c=relaxed/simple;
	bh=oMNipoBRTkd1hmLXJgUx2H76aKgc9KrO4c8WP5Qx2QQ=;
	h=To:Subject:From:Message-Id:Date; b=o571Cf18QF3vXFVoHsf30TNfEGsd8UD4na16JZyGrj86rHU7yfOWGVLc2z4kmx0h30lj8DhPNNlI4kMMGFWsOnpGULmTnU3Ly0kdC41jDzXhBOcN5QJ8v4tC2CDoIACfr1VtVPemngDSGzyW9Pq220yqFqtAiGEY3tmFUmPNHgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7sQ4AOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7sQ4AOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E52C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765430573;
	bh=oMNipoBRTkd1hmLXJgUx2H76aKgc9KrO4c8WP5Qx2QQ=;
	h=To:Subject:From:Date:From;
	b=N7sQ4AOkggVo/7lr8IcRlx1OkcEOsvIsrif6yGx29nvh5+Fsigxg3+trZvZ6YWdY3
	 zShD85D1hKsq3Pjjyr41AlAk3hsWiIKyPCLoaSzDP9jmexaQZcLWJayT3jTcL7U+wf
	 x6GiwSIINUHDlvnSPmqrmupyzO6sRXYVE4VxfHXN5grkaS/MUwtlFl4Aow/gngPIlU
	 9z1v3/TjW6wkPdBXGEEmKH5LOeoh+r7vVcKzjvDkc9UrgvqDY9Aw3UpS2pz9VlmcVH
	 IBPeTz5btVh6H4eBlk8iuouFCLtjmIsLh7MA3Qx5OmpRENbO7ZEogpiCupK07g5wL+
	 2tDcjEQ4V7puw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EA8D3E78F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543057371.27248.7502463354029391813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28330b88d824e1fd991dc7cbe3491a37f58e123a1b1a161e3990012ad463588
Date: Thu, 11 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765430573
