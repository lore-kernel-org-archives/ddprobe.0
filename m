Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FBC258EF3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790469034; cv=none; b=TaBlX4k6OWO8EZphttlZ/SeBxMZm4md9umOalysQaU+JYQM1LwcsVUcFEkpbUilUTCS1uU3CuFi2VxL79rwMR5g3CO1ONqVy5fjcLQMEg+VTlflzRfvM/FvJrz6c90yBJwOBbacmdL/VHmZiA/1I6zaCyWlHe2vGc3rWig/rIMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790469034; c=relaxed/simple;
	bh=oFxXnhlWCpR57hypWwy08nTLZNZpp2S0ahgJueCtiIY=;
	h=To:Subject:From:Message-Id:Date; b=D9JlKOBGUSTYxyr4HX66eRLwWxM3eVrgNcsrduRmyfNW4C3bm65ZTuk1zCBLVCC6oNuYVjfzVAavErM+dywvPepOB4sYP/U2zD00pIJdWipfA1Fj17/qvGJ2B3MCwFm2cN2VAhSRn5Dy4KA+DcI/P+E2HiqDfouxLgmcj/gMVAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJil+MfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJil+MfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5F4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790469033;
	bh=oFxXnhlWCpR57hypWwy08nTLZNZpp2S0ahgJueCtiIY=;
	h=To:Subject:From:Date:From;
	b=FJil+MfHnxyTpBzi5zKNdXPHjj/LqrxwsPtksgmHPUCy4JttilbZuMPfLugOl3w7f
	 SX9UiKqBavBy0YuSHfZ/zmOrJ2AisVN6MM5zhzOE8fhtRS1ijwW8RrZVrKsqFBYmuV
	 aHj//oCm1R+9aOH1wSNIcxvAgmEGrbiygJ1CxjzWkdRR6RHqIWZVWnQjKsia60T2Ef
	 tK44nOAURuOcvERkz11TXITN43z9QjyJt2v2IffMiKnxipyBhouAZq163jTrl1v85M
	 WcQiBy429IE8FZbn8C6z+mLyOYxSJLzp++FIhQ89J83kcCydtCLfNEZFEXABGzpV4v
	 Ec4AdApQdpYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC417C98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046903369.459.12302434689990046025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d616fce43cc2ccd04d16107023d0afa0c960a3e24136db42cb5a7d7984ca20b4
Date: Sun, 27 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790469033
