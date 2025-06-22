Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1371C1DE2BC
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750600794; cv=none; b=IYgAiykqxMA5MmnHI1TlV8yLm7vmX0geqjzaPqU+HQwJEcsLuRYYmIxcYtgFPke0lSxQM5JaYyj148gGaIr7rQ1o2mlahqkZl7oyhttIaD4Qg/Wn74xiVMFUIY1Jgp7FRDJD9MZyct/CGbd3cg2710djW3dcEsMO87iBmd54DjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750600794; c=relaxed/simple;
	bh=TuLtfcmx7BJKoZ1QBQ1/RtdoLObR8YIgXzgkclh7GKI=;
	h=To:Subject:From:Message-Id:Date; b=oFl3Vf9+p4XLmXsfhIgZ1LvyTjtYTNkDjAyY5WX0ZuNa+2O/a2VjkZR2P73MzXPuGdbmXmGaUFSWFZcbsBvCK9KrOKTrqeUjZuSCRuwBBE0c7Dov7sJOr+2K82db2GVf9IDIwltFykbO53gqeHTx6nD7AW4FaoUKv9QO1vwHGOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl6TaCuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl6TaCuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750600793;
	bh=TuLtfcmx7BJKoZ1QBQ1/RtdoLObR8YIgXzgkclh7GKI=;
	h=To:Subject:From:Date:From;
	b=Hl6TaCuEg2i+IVbyyqiyjuB/LCVPpkIASrhYcAZ9rSUSFh8D9nxwSM5qDcwS42LUn
	 uXewn2gd4Mu8TLdXQ/dNvTOuZLMcOo0L7dwCOqD/w6XoEGdXuSzeIqEANrZ2ENhG71
	 e0IGEtxhmeMMfc5Wr6AVwVbjW2MAwO+TK/SdIN80456TKc9tDyfh8CpDNYgxEF/i26
	 4xb3iHg6Pt0CyxqMgdxFgCUbX5cnSg/W/c7sW9amKbUkg6UxSrOtMLIL3ptf4A7UST
	 6YStarlf3KO9PVzqFhOfOOrJFDdlaCdoYvf9tI1RZn/Aa8WZZMFhpq0G6S6gxS227r
	 dGYe/wSq6VIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEFC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060079358.7624.16319587112715587986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4934c4bc44fa1cb1ec9b6fc1e7f7f045fba9f31f314d9d69a044e439145436
Date: Sun, 22 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750600793
