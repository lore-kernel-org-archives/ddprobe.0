Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9A218952C
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744998594; cv=none; b=hI94qrf/EZy9Q8ivXyWDdzMHYTL1py+JY28qtJaGpHVHaxK1CRzOeSpopy/Ca2cSBTvxdlIFtCEJofWiJDCTAhLQy7Yj8udSsnEd1OM1sxi5cxd55N2+/lEnyfyrgAo758JM5Q2qadiX4+iGoDHUWTbqFnVEQ10XhoLPhSp60oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744998594; c=relaxed/simple;
	bh=/IuOA7qC3PIUofVXb2dn172sniIwTkMY03akRB1J5z4=;
	h=To:Subject:From:Message-Id:Date; b=KV8zuTYLiJOKRZcWrYD7C8CGrGgOaXDyWrlo2EVrpvhbZseQdmotAq//atJjIyasaKTdbe6yB1qosIZIld0/+8R7vwhe4w1ACWzXOMCdNDFEcXtYbyWny3xCx8LR8vhbnXT5xyyDGkqiTlpV9g7cmYOlPPJWvOHolAWzhLtxY9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr2IUrqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr2IUrqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A23C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744998593;
	bh=/IuOA7qC3PIUofVXb2dn172sniIwTkMY03akRB1J5z4=;
	h=To:Subject:From:Date:From;
	b=Pr2IUrqW89QB4sBwhVQNjFy+dAC3KvJulTpcY/XrlnppJ0SJ8jHvjJ0RNi8glaJhv
	 fSX812eKNG//1qbkwQeOf320JldRiC2PW9mKl02d1De2MvhG258jwFULhhmzsGE7uE
	 eOyJIUVZZ6AkUqKNuNI43OEqBvnjYLt1HvRPTgWYw5a/4La7RwHCVbxli0K2Jnw5VL
	 4vSrTb/6hXhtOSnUBkCmza6p/LT/qXUpWJ+ZDhWZJAaT7Zkce/J9uvEfsiL8sZ9bi+
	 6b5MusSs/tlqRlDfkgDoDQTyoKdc6O26IyESnJXgSS1cXt3qmUIeU1aqY+uq5BPr/T
	 ynpUzbuYjergg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92321C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499859358.16816.17928508323530127997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdc0893f8b891fee6bbfd1ceee1d4cdf8a480cfa5a99e98f45849a3ad6646dd
Date: Fri, 18 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744998593
