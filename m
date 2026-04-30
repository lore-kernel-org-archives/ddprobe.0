Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E2744E046
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777565253; cv=none; b=muu9M7DdG8yu6NhTCd+TEgLt5XTyY1ddM75EvwbkEPmdsSu/aPuifkKY/0DGgK4w4L0fCw+CCU1DPPTiuPLb1tvxhmDNhNEzap7P/41+/kwU3exUdgZd9ZcpMm/cMlneuvr9e82CtTqRT46q7CMvUhK3KlWZoZjkptoqlpdJNuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777565253; c=relaxed/simple;
	bh=j01loNSw1ylOF5aQJxUtayCft/V2tl7Pu/YclVAQBQw=;
	h=To:Subject:From:Message-Id:Date; b=jVofOmsQ5zlWtnl34KksbGutQjYTbJ6yK1aloFWzAnZgCy6J8nIVmM+NkoW685QNmGURL250UL4LhZ4/SEAj2AvDJBtdISWDtdguO2Xkhp5V8W87/BX7+dtfPNX4ZjUgp3kWOhjQRAsDa9GLtuWcI1WR5oLGShifNJEc/o/ff98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5sii3s/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5sii3s/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8966C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777565253;
	bh=j01loNSw1ylOF5aQJxUtayCft/V2tl7Pu/YclVAQBQw=;
	h=To:Subject:From:Date:From;
	b=p5sii3s/7KiEE9zjucs+7+7DpEp5IJVxtx1Pm+63GgwSYcU3RbanyPnQM+SPhEDGe
	 QWF4UfUTeokWAQLhcwaGqT6o72k3UysvS5oNaxx6XOx02XuXbXRdi1qJSWSD/JgxW9
	 VmCEsmyqp6SSpb6NqGcXDHgvLbMA6ZMWFZWPZBnPjb0r7zLh0k0sP8gI5nASlxdU7u
	 k6R22ItSl56kIzXHBCBJ2jrR3gYf8peLE/iubemr04oFmZCsj66wKNLsdfuz8slwbe
	 jxEQRNAyTKdIj83EGlPaSUG+PZRrHafmJUqbPHV/bczb1L8HItc88wVR449UhLGk6e
	 9aJysvgossVAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA801FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756525368.307.10004437353011979558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918bfac9e7af390e9a959765343588e2d2ba37859ef57b55d8ad50815e4dc629
Date: Thu, 30 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777565253
