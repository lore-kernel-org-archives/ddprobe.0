Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5980D12F387
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713286763; cv=none; b=YjILFnvOMwHl15MeWUsenddcafZH50dhEUAPP551l0svGgBzp+UcmmoR+oe/bKtQw/rV56SUcqMr/MENg+8ahce8ULs/DChTTrfPJlcoyP0qK7ndOx2B5ao77wF4r45qwF/nRKnmX0Mfwa2Ntj9QxmdAntCQX9yE7drYntfa6W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713286763; c=relaxed/simple;
	bh=9LhMkmEN9ehoe3qusqSk/acbTgWvT8wyZaId2SuYFc4=;
	h=To:Subject:From:Message-Id:Date; b=drZo0Ar89sTGC1XUbF5b87W8o3/6RV1561X++nkTR9sfSFln81yCTXOlzWy5yEvi7qbsFDXtZRJawruI/QJYvD4PsOjaWkVv2tMehkmCiAGITaNze00u4Z8DEI7aMNzfYrkeU8zk4h/wAj2dUcg5RKJCHF3Zt5suRrN0OHY6BXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q95m6+xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q95m6+xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3BDC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713286762;
	bh=9LhMkmEN9ehoe3qusqSk/acbTgWvT8wyZaId2SuYFc4=;
	h=To:Subject:From:Date:From;
	b=Q95m6+xYTENdevgxfy3JvE3D8xY7nehCJOKJ+8wPKvHITKKiieLmSEcyuo4jpYe8F
	 t51z7Z7qQph/2eakBW3YMx+a6eY7MOiBZO/luTymZsRYE9jmO6LV+1e64JhuR2YvaG
	 hpleuJVa2O35yFmJzjTpHs2G86LDqwE66Y0fPKq/fBua7i3HCbKtv+BQeNp19G37u3
	 r2J2C9giwVsHWgtpgpXcVefjx0hcPzHB7qlA0xKtg04IiMQt7PR5cXjpoFp02jPIoN
	 xEp6IillkshQ1UsE4mBmet7PmOm1BslQFMSKFWdeGgD6FASmgekpVSuVg1HPn7saXH
	 EGRjDKTiBCFiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5401C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328676279.1974.12734044469097625715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985980cbc4b3c83bff8987624df69ca6215d5a2192ef9f2e6ae0af6a46595a94
Date: Tue, 16 Apr 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713286762
