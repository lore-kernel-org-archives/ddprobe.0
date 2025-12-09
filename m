Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E732ABDC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765285374; cv=none; b=B5v/pOiOmarj8FycDi+yIRpxY8+IBI+THhpEgQhQYaRPfU7ETkSjWVVC+HXVQ2ogqEFgaGzXFjKBrHuoMoMTHBcScDguYaC4xCfwSdJWRVDz5rmEJYZa27higHsDt+DCCQiEiZRO0Xb3YfDYe1hcsqT0NTRpMJv/dxUJbrVAYa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765285374; c=relaxed/simple;
	bh=qkQh2MZKpy/TYuYiqBsL5L5z67cI/iq1PaflK7Y/XEE=;
	h=To:Subject:From:Message-Id:Date; b=BsnLa6QsddD2ek3YgW6a4fdINMFaRcg9i2LzbqE9m/W5hHz/lXJ0e6QUamw6fS0sBm6nL8GCCSGPEPRqm40uA+3J82FWIZQQjw3C9hjm2GNpaofUvnR+j7jKBw5VuaRSDWOvH8klX7oJHZNAzchjAriIkJXDZk+5N6aOgL5YRdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBZCmBys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBZCmBys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765285373;
	bh=qkQh2MZKpy/TYuYiqBsL5L5z67cI/iq1PaflK7Y/XEE=;
	h=To:Subject:From:Date:From;
	b=GBZCmBysJUofm6RMxxeiEa07k59z2iLSf12wRN0qIFWrMzkSA6zvK0BNnaZv06eRD
	 ET0wRm3RYTvB0yLn08hpqJMWUUcZU0E1a2x+DQmfC53FnlsGGzsGVsaZrA0ADIqJS2
	 V+tgLbKhZk2sqRG5JsJNOUUREDLICL0SObxgqCsNacRyiI1n3uxUBuGPhm0KyIgECh
	 lWLPLBvMl02DdjQRvmcbXeeiEF7jGRRrDU431dyblSVlpoVNE/cIcqbE3Ov++ea58d
	 qz4YwkASR7oOVmAHaJNM+We7pkqa1hvAMdGJV0lAo6AbUu1X5aG/J/Wg4MJpPdKdq+
	 fvH78R5rH9BSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFAD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528537358.23496.10560903211581576922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfec9ae822f849d73b9bec45b4ea7ffc43515a99f17e3d609533f21e2b00b3b
Date: Tue, 09 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765285373
