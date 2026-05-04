Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A6B31985D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777928253; cv=none; b=IyoL/L1ShQSFaIBTh9rRaC531XB6rZOzcuTotlbSi6Vqm+FI3vTHPr4eOZvF61TmE64GPAjDGzf3mU9uVD+dCY6pI1uoAjeA3bSnCNNHcAtgOoDi6buu3HdoNKHHtCPAX35v/x46JUhlr7s1wt1xAbtocLkdeqk+gTPZrwNDQnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777928253; c=relaxed/simple;
	bh=TvICvmKlyQnYuoShXcVZGb02nNgOvU6JTsnLho/OXuY=;
	h=To:Subject:From:Message-Id:Date; b=e5uDr5yObFJBL8TeHlaGKXaPgpRowjNY8b80ddATJOUzrQQ9ysCHPiqlNwvIzr4en/JTweYMeiWohX3S6Nckg4WMr0S8Lu8vTFFWg/4Eo1lNRJENb3H8ZpScMnBMme2LFgr9bhqMOULa4KM9EJiB5vkoEBrxJC2MhvV/FB84+iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbzDhNe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbzDhNe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1BFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777928253;
	bh=TvICvmKlyQnYuoShXcVZGb02nNgOvU6JTsnLho/OXuY=;
	h=To:Subject:From:Date:From;
	b=pbzDhNe+D4UOoD+x+1X3NinEW9myftKd/KeXzGZ0y+X5pjG5n4iOkbh4Lk1trUPkj
	 Tnz41wj3cGQC+d/mEV8kudU78NbSVgWJ2J2vh+l3hKblNK1VuwwO7AlbDYyNoemRAi
	 v73AITJn9e00eHWnbfOpzW7WVd6hWlHj78RLQC7u/kB8kHntrLJHCqzSDkqcJFRRS6
	 66RICUA7OxsOy59SJLQpMdBOeHEBsLI/Ls6xvgmK5OZbhToI7Hv36qIi/EV607vD6Y
	 SySEwyYaxE0YYZ2FjQhjAqIC3ZhmeBKuOdQPu7884wtymWd1X6ROEMBTwwWXg18Fk4
	 xLvKkzOHnrBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16ACD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792825368.13020.12032708455499244964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b69bf6019d8485a37637ce9af80140158b58f4aa314e4123900ce2e41f6aca
Date: Mon, 04 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777928253
