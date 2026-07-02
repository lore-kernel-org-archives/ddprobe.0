Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C23433E67
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783004314; cv=none; b=U+kP0SjDoe8dRJ+Pt4hvBP7X+Jht+EHB1OgM+ZqqspdjHG1cS6aNAENgj70nxXUobTtLh+hJZ1kPgEXcDqROWjmc0MXIxbn1acE7A8FsT2LaMVdPYVZvWFH5GO1wNN9n/fFDVneyUOxt7utJa7HIrUq9/KQ+DLZkqzZP7Kb9sew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783004314; c=relaxed/simple;
	bh=Rxt8zeTn6LOtdD9VXQ6K5jZNY8hOyciNGPAD60U0HpA=;
	h=To:Subject:From:Message-Id:Date; b=mYnN7fSJvJs3/uA+YpJiSSJGd7+Zo2p4KzD75pWzAhPINZdApY8UJ3n7vh7H4W6ClEFG8EbHhJW7Pxhxk1oOrxIINw6lQFA9cdRMUzqrpHdMNjcWyTMNuSZHLDHUKRLFKvob58GkHBC0BflnV1I+1q9l+5KYWzLkF6ORPujK0Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfBPrDUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfBPrDUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC884C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783004313;
	bh=Rxt8zeTn6LOtdD9VXQ6K5jZNY8hOyciNGPAD60U0HpA=;
	h=To:Subject:From:Date:From;
	b=XfBPrDUepgjlhObaH+MURNzpWpFuXgyiBbdSKzr7DxX5Ex27FlaZJCY0O569xDGGT
	 7Zy5qt1hu4DoZR8iJ7sNFGIBMQhuExgK5bzI0PEZUB1qAiKRPf861dOIJXMvfr/+f/
	 VdQFKCOOPNU/dZRabiUtgAqUI4RTQF06PWA8utSlAeQqCH0HDiNdKvw3ySl3rQxxcH
	 FfuPtSrySUKNUPvzLqAPZpPFhcLSkKnIbzMEmEOAtpRCRXcV8IhhKRIlnmqz44cqST
	 EaPgzc8NYmCf/RyQ3VKUoOJxL00T7Hau+0bD6MhinLg0abVL0EcnPAplskn8+EITOD
	 R1mwdKaGqU4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC0C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300431368.5831.8086080028062184836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad869c729f8b7f846852288fd09529de8ced6dd7cd3e88c6cfd74e0d4efcbe8
Date: Thu, 02 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783004313
