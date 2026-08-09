Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3E81F8755
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786303234; cv=none; b=gZqzrWOhqrZ5eDxNrT06FTgNFgrIEhNRmfuF3ao7cRhfwBHmq3HBp8qpG0zVi/RBwlFJhNXvUbRDw9I3NWBwzWXU9hAX3RJNmrIgr/pcPIBpMETx9oLcm8tyH8grRQPXqowRIMYaKLkirZ6tfelY4VuVr20S9VPbUSRT12fsAQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786303234; c=relaxed/simple;
	bh=PriOuEXTX2RYD38yv0Pc/POR0HjWcsMMjCEUcBITUt0=;
	h=To:Subject:From:Message-Id:Date; b=CYMYvY0MYeW4Q4Is5xTXocv5dpLfS936GropnBB0NjBxEi5J6bpiduCmFJGIL5rgn6xFeE0n3KeG0bl2sXmJ63yyD7aALm0HUqzC2Ts3gyY4Qd82hw+3YyBeOuaJs/6eV/wT77UzUB+jS7N2fJCGwu/avPtxPvqUpV6LoJakgFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWD8h2OT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWD8h2OT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DB1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786303233;
	bh=PriOuEXTX2RYD38yv0Pc/POR0HjWcsMMjCEUcBITUt0=;
	h=To:Subject:From:Date:From;
	b=XWD8h2OTN5DC0Pdwd51yn/L3oUDvvybMOEcxOBNnKYARz0eqoyMqERUGGdy/3YbP7
	 nlyYlSu9MUTEAdtsv5ep+3+vWTramiSIsxldNnRT3BmhSkpP7bXJN+RjU/mk/c/dFY
	 4K1kQU+9QOEKrOKXk3ydbGKIO5E1+LNIPQQYbdoCybVB9KEYmTdzHyZ6igB5IbbP1v
	 dG/+EKS7bWSbWAQGNvfdcyEtx2TjGaSJEUEZsP8y+6e+/LBujE7vAtrsiNPao05FTM
	 flPc+nb/Pk2MOVnHnmFYtTPvA487dwqeXDeSP6z+Ky+CboCmUMKlOaPChLT6lypPlW
	 Ois38ZcDZCkXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0983C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630323370.27689.8671011955073907132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cc7dd36626ee52da55372206455cde6f78ab58b26b3d00afd0dfce0e176b7a
Date: Sun, 09 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786303233
