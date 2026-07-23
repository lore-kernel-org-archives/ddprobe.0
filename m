Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DACE470E91
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784789974; cv=none; b=GTbRwi07buMFqoqUu+04bQmxdha9+Z3TX4MKzdNP31F1axFmMu0Hz/t/PCSDxSNe0p4gv1LUqfDADh2RVQCwG2YzOj0GdW9ng5LQlRXFhjpub6OhHi662OfeBpA0WCi2PzGOGevQV6sR2Brz39TC+GyF0wiWhwvPgiYDFT3pkxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784789974; c=relaxed/simple;
	bh=pPfif0UkYX564qGgcGTnPjpisgHzrC6tpOxJfq94L5M=;
	h=To:Subject:From:Message-Id:Date; b=E1n1NYtpPfKPEuaI1ITeX62E5T9ACLFOxAIwEJBXKXy0bB1KV+F0WPXd9XURaRbWh5VCyShO+SEO+LAwOgMZs2FZ1pfNPmLBD+ry8/hpNLInvEaHxnUKj8nzehS3kzUUjHLF+I5SYDdXxegaAvyZJ1e+RnABCiT69TX46vBcpXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIxYmmlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIxYmmlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0351C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784789974;
	bh=pPfif0UkYX564qGgcGTnPjpisgHzrC6tpOxJfq94L5M=;
	h=To:Subject:From:Date:From;
	b=fIxYmmlTPLNZvgw6MSnJhfbwlSwlxQ+4uuT+VWd97xZg37Rbne2YwKx6BsZKxQshi
	 4Z47nUFBb6AW5lJf8/sznrH5yimzqiTAryuV9TRAMgfnxwNhUysHmBQdxm62byhOI+
	 CssV6cPpRWZSn998IuE5HrKveNl7aysQkSJe2Of4+eeqPwBUY+xQdI2L43uJ793Llf
	 Pz4Ch1rEb76srcIGNaHghHgiTGdLeuoqbG8fIGXDoqcabOMwdDLkRXGNGnFXFdN89c
	 qaj513HXzJgwny7Km0tiQ17uyPeEwk8h3wW9gOgRcL+49+eSuRcugpCRHtNwCozRzS
	 TwAhihAPGMAsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0780C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478997371.26864.13511596648523484230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6149de7941d83237ecd36c6b4655bbfbd1f7b5ba2404b0d21633bbce61aa061c
Date: Thu, 23 Jul 2026 06:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784789973
