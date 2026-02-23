Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BCD27603C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771815894; cv=none; b=qtAE+Ju7wL4iNIyrztu8JlerDmBwXBfP2zPYB2RC+uaU6mYiuBlw0/KKtsW/SPGn4FtyVa6ui0d9jvXN6BHpBAulxYmPzXBRCy56KRX5azorWhlMWZwAC4G4yKxBRnGslveUD6dIECWTkybY7YsZEgZb80+5U3wGRB/rjNEx16Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771815894; c=relaxed/simple;
	bh=AHZ+yRG46o7PObr04KowWKkP88qft5JQnI20ZOV21Ys=;
	h=To:Subject:From:Message-Id:Date; b=exII0A+KNiLVudgkCJGaZczU/INsv5mf8OSDUrngEowvmhHnOfTeC+KLs2YoEOJUF6uGLK6+KhLoeolNenLzRaBK2ojLvCRAwr57bqncIYOnKzO0lRQHMY9X9qH8AuzJ6mxjbUZADCUzWPePQqJM/cA5pHUNeBNp6lP5IPPyX28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vd2n0sBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd2n0sBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD058C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771815893;
	bh=AHZ+yRG46o7PObr04KowWKkP88qft5JQnI20ZOV21Ys=;
	h=To:Subject:From:Date:From;
	b=Vd2n0sBbCikpa55FB4jSZcak02yZqH1DOH88Sff5tuQRMvAzr+bZ4mA1OwaxUzlrL
	 b/Bp9GJVySYniZ4JjRHb4onD9nf6wjpOh799iku/UEHLaE6cdBtM4axU7GeDC+3XEl
	 rIUiD7NmCOjhl0Bz7Tw5tX8rncTMY1MIohBDfwH7qVq2aTskpkhgTZPu9yKbkYOXch
	 yHnfKu1J6WnrQjC0tuFeDGsfGTsx4uCqeiNMe1f9eMOx88usVb/41DEHxCBCmrs6xC
	 lh0nKRayvcMlpBtY0CkpB2jD+Wy+tGJJ+/39CpVbWjJP++sinYuuxNxF9BiMCF3pAk
	 Z0IC+G9mI999w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970EAE8384D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181589359.10909.12364701448713205269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770c2582844f0c2d4c58ec88533cc3f87b3101ef08146a0492a84e41068e1e2a
Date: Mon, 23 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771815893
