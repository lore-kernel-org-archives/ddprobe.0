Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C34A4F1E2
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719046343; cv=none; b=KpusZHyz7C/z+sg0tpJCV+N8Xhj48Tsu1Vwypfgt0iksphwOVA4xoRunaNFPMv6bzAJ91oVoyWshX2z/TQkwZI8/rUpJdcKSdrEyvgra7Ll1Mlxg3o1S7hK4VcwdMCllU0q+AQvsqrDYyh9Nc/FemS6SXF3ccgy6Tj5mXMdxzQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719046343; c=relaxed/simple;
	bh=uOjmp5YiGCKWuqBjm/XRqxJYDAABjY9VphR8vdT1AxQ=;
	h=To:Subject:From:Message-Id:Date; b=lIXVcIK9bYee6lGrXmxy0e36oSMQUUVtbf+JX3hC0HU7op8LmjdqpEdPWQVFx9pmAyiFr8cnDOILuGTmthkGf1R+ocHU2NCmNWZefmwQJs1eA8S7/d3HTzASrtqF+daMkNlC4B+xfyZxDCwUFxkguXB6MxuimazdEEcsflCOfho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0hX7GlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0hX7GlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE9FC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719046342;
	bh=uOjmp5YiGCKWuqBjm/XRqxJYDAABjY9VphR8vdT1AxQ=;
	h=To:Subject:From:Date:From;
	b=s0hX7GlNu3g7+XRLt3ccV94MzWLk4fMpBolZuaNzCGgtgc9ckr09CXSezDCEFumBV
	 bMr5uQ2GqxA+uVmNEoi6hV5/AWV9NdmOWX1S1xiyDblOUHAUyvzqSy6LsVb3iyu+28
	 jfORq+DN4D2svfIXgVp7AlcIy/xceK0K8aitrHx1a1Bb4VwMnIIkst3nwqt5+B9h3x
	 Viq7MVZLzAJ0dzbDW0EOrwXlmfm7ES1ryt8kkyjb5Rpz/SOHk8fGL6LISrKLA03DS7
	 y9F6OpY8gc7JASBnXK7HLvmT3IxCZcE7FkkGStHLmLWL9FOSQ8VfpHKHHF4kjYDe9V
	 bZqXpxlYdC02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6836C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904634279.8049.10877927450668687008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6596f16433b4e721209d49325aa43c656f0c897e10891753175d8df94a6d1854
Date: Sat, 22 Jun 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719046342
