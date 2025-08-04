Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB43233733
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754306394; cv=none; b=Q4i3DA2wr/Rz8WZ0JtWNbVfC1S3aSmgyxLA2XdxDtn2NKIrkzVCLSQyxv81ARdMJ9i0JYc2jJCdutmqtrcUt7iLuYoXv+4fJWvr01a0uCWnc/pT8m2d+jz5WuIOgiLyiZ+2q/6wK5Ctb7COIjiwHm41ilvYpNx8jCQsBa6Fzt8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754306394; c=relaxed/simple;
	bh=3inZO5SoMXp6SAYWNF//cIf5sdsu3cTRlQPyiLBmKdw=;
	h=To:Subject:From:Message-Id:Date; b=RMsYG4dmzbzm9K18f5Bkwq6K6SU3yF+Tut8XYMq/gYCqkw5alwHGmoaUc+LHyV1/tvrfBH68E5RVsEaFnITaL8zIqnzvWO7X4NWVXPDeVtG7JIPPdmJBqp8ZlQMoe7B+TxvXQf+eHIqY2/OCERfihhicpa7NLl/x73VHexRNiKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiowBKYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiowBKYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4FAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754306393;
	bh=3inZO5SoMXp6SAYWNF//cIf5sdsu3cTRlQPyiLBmKdw=;
	h=To:Subject:From:Date:From;
	b=tiowBKYEMqrlPk5lIRO1U9LrNwpZpViyZEZFSNkCYes8lepaGwUEU9jWU4XhuNJLd
	 9yTnWcl3xbLtmo09x5tUpLEVyhIk1rIKQVP2u6gtemkDnV5ZocAumkexHktmknsF4J
	 Nt+EglyLz3DGPEWXZgx/2DLq6PekSYQVnaYbQ0NVtQyzMly5kqlKv2zVG/JNHEbJiq
	 JoLexJWt6SJmCPgnmyucSZ0UgliQhyAz+HS8aCDChvz1ZRSV0ymfI30JnqtBiiM9gS
	 jb1XpohqXZzqVUkAFwtKXOz0yyWiltf1HstiB7eg10z/43anVpY1HZbjxOqIk5zjR2
	 d/+0ao7+y5jxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F321C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430639357.6481.7351498946053184389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1825a5f057fb4e5f3b0820238d913ae1ec8287e9636894a7f565b5963dc89e0
Date: Mon, 04 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754306393
