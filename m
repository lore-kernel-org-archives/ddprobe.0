Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C861134409
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717516583; cv=none; b=LjC54/TCaSMbitOU2kE7L1UaJvm+elMP83RQHFJNpR3FDLAW7l0Y3Avog0NAOcHkHgviDBG2IKPJ+0rdeeqzE8RD02ZYAgMXvz3hd2ARAGDlGcwnyTQ2kTH/AvlKgjyod46AX3N2Bf9KbpRlWCMQ/TK3I9tKZiBB9JrGx+6WsVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717516583; c=relaxed/simple;
	bh=kf0DDRgQgyEtxqi9Dwp4tsF1UPgS2EL/XPnpEJSQLpo=;
	h=To:Subject:From:Message-Id:Date; b=bkY23KI1IFL0ODaiGxQJtJjDfq6XWHJsxA6Mv3fN7AhnSan1/OZ9fBd9LAzGDzRABwphLosYjYoIrxqz2C2sHevg0S9PuTGBSeYTAPDn1zks176gHApubuzeiZst0W7bShO5CPfwjK5fF2yiimUe3kbI2P1JyGP89wII/XX2qnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVdC06UH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVdC06UH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE18C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717516582;
	bh=kf0DDRgQgyEtxqi9Dwp4tsF1UPgS2EL/XPnpEJSQLpo=;
	h=To:Subject:From:Date:From;
	b=fVdC06UHIC8PEqjBmOItZvRAu21ywwpuEXsC4/Jpsl9s1VZS/i1ekY/20JDV6lmwR
	 2ZmFp11Sdm777HW9LTUktyz2hiUsNBMC5OkzFw7/uBtoRY0WnnIOqzRX97ORV4fe8p
	 QqtyM3CvAhH32lAKKszNcBZgMwTqLAd9M/auksrYKwVHbFe8ieGWN343bZFZFruoeI
	 RKG9onHNux0RrepD8YEBfRfjxR4MNKXdU1V3NLYITh4+8VklErzYvEBOs8XeUvGWeF
	 n+iAbJr8gAbefNiKRDTKiw3i7zF4OuMElqBrHplQCh0qMbPewxgxE2J85rnhEEMPUH
	 xdni+0Htt7JGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE8BC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751658276.24634.1566978184078887215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bd35bdd3e5db937a55d643d0be6a988270db8e8554bd001e91012da4fca1ce
Date: Tue, 04 Jun 2024 15:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717516582
