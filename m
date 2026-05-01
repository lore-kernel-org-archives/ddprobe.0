Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34A30BF5C
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777675654; cv=none; b=ErLa3syll/Vns9l14WkYmyMLSdRS18WUUfa49DXvOqRrpifUqsbAwY9tIm1onuh5WY+8TBeLmncP7TQhSIlR0xg2KeXmojkZOm3+OVwdalKpcTcaFZSYlpMa59qtuOKoJeR6KdUui20/bkjtTBQazeEHKaEiKnq41bylHlUDZBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777675654; c=relaxed/simple;
	bh=mw12bvWj/hibGrgm4Cjxv33OeSYoTMsbnxJHemvN1Z0=;
	h=To:Subject:From:Message-Id:Date; b=EED/Oc5e24o11rPbsp2IIQiiS9M5t111HVJ1DKmw9jKlk3Q/uX1nhKBxHvkeBjGCMTIZBOOEIwdCbURiXC9q+gt+Jtpo5qeLVUeU3S1FNzqPlh7lbycMcomSridGN8cMNH4NXetWzaqQnC+8jLUgN4COP4MYuFOJ1xXXcCW3tSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqVAXtWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqVAXtWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC190C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777675653;
	bh=mw12bvWj/hibGrgm4Cjxv33OeSYoTMsbnxJHemvN1Z0=;
	h=To:Subject:From:Date:From;
	b=XqVAXtWT9/gYzcR0Qi+ltY9gtcXsYXq4czp/4YF+t0yNIVCO0tz9iWFs0Zq2U2F/I
	 Kj3UR4qb3AThCT6KcomXL5a4N2vOONq/aNMzwikPOQpaBVGKbj8byZyqigApTWoclE
	 H6k2RVKr4bv3uceD2KWsFVJ0NLvDLabZPun52oTFhwHfnNnDqBZKPObTEOeA4kluqI
	 YoFMxhBdFYY7Fbo8KGmraQLCrgV1RwCtJ4Ta78oTkz6ZdRdx9yVGjzQeZtHvk9qSNU
	 UPBU9te/PYex+ReOaKCzDO8aE2aaLEzkRjKVCFquo/vAst6m1SBgYU/dIK4rcBXQoZ
	 jOQorSy8x+nUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B946BFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767565372.5462.18426373743261778175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a795fe66f22d677ec51922d494e1346e9f1a5f23607100de97651ce9bb8f02
Date: Fri, 01 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777675653
