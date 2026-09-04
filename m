Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637D142640D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788561634; cv=none; b=AIVefVrC7JdiUWOvhPUvuWTVGwzsn1sQ8+mejJ4Tz0PZCJtKn47jGTgkXtalnO5jfokUyIDZv/WacTcn62p818zzPEAgtBSHRwJY5CIaJUHjKx6oTXWkI0jZlVv7TOWgOaL9n/3e+xLD/9XbeZw1OmMNzupDbUN84iC1eJkmBLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788561634; c=relaxed/simple;
	bh=t1RFJdxtuV4epasAPNBDZaVjXLxJuc7l03qkDlGwU8I=;
	h=To:Subject:From:Message-Id:Date; b=tQyXO9cqOK56TjL2QXASnK7lLvC4ku6CkGWlJLjgZma7onSVGBRedgtb8IEixQncDKEsj93bfMpYU954nMWDO2o5np8xEtIuebDqqU9JG0mNi2DdXVg9R+k7RJER9bOxC0qG4eQe2jGZndyev1EG5Zz8UmmWF8EfSkNhA6qwGyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR1s8d/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR1s8d/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F49C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788561633;
	bh=t1RFJdxtuV4epasAPNBDZaVjXLxJuc7l03qkDlGwU8I=;
	h=To:Subject:From:Date:From;
	b=eR1s8d/lfjzvpcVp74nmXHok/xkMR4ftVAwyMOTNrcCSR3h+euZ++XbVbaS55lTLx
	 87TyR/Tgni6ZFI6jBNoYCLZPwh3v0YyG6HQH8u1nPyzvc82VYllA43r6i7QEqW8Viu
	 QP9KE4z0KVpsYc/S2xC4nj03BMd/C79JZzOHYdkADIqU1dzQG1xp7gjERMYw3D+Jde
	 01/zAlGnT8Roh6re1yTxck8ik0VDmJYcJY2rY/18DygyeDc1Mkt7O5MiVHjCywAIpv
	 OmqdKMVDDQaOse8JxCBdBYdnVTPxisxwAaF5amMoOtfOU61WGYqTs1AuNXYIbfF70a
	 S6kju5g758Hcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE9C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856163370.28187.11639080462321687248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6e8c97aca481705068c950d087fb30de0e05935f87673735218145f50bfca7
Date: Fri, 04 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788561633
