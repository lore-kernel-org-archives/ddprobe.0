Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D8342C98
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777192654; cv=none; b=gLhcqWb5qWMYBbjkkJD2pHp5G2W/rqzcNu4IWwe5Nb5meyk7q7g0yTbFGACi+J+uskMspBqf3/lsJsHdyXkuHqW0Nh5ZtF5OPdtxJWP0VvZ9ZY2q0EOd/Qh+JOpBVAMzqkOD6ohfvj7uVYpgB4fFPGQt6Z/AdIFt3eCSqnsXEJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777192654; c=relaxed/simple;
	bh=6HcflWQzhgDdQZ18lppbCHEehf5127ZWkksMVkWhm8k=;
	h=To:Subject:From:Message-Id:Date; b=P70ctJDhjuUzWKVf1nbpI9yyxzu9s1snYqpaPbFy0GIFxK/WCqto8z2IMHxi2vr+qNmJjHkv+WnSFLgTLYCbF3q0xhoEjQPqWxEP6TyElnwdG2vtK/drGt6NlLckw3OJFp+9PFOpKo02WkjjovNuwHeYBFoANknFl6MAdH9/hH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzJUbYqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzJUbYqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89A9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777192653;
	bh=6HcflWQzhgDdQZ18lppbCHEehf5127ZWkksMVkWhm8k=;
	h=To:Subject:From:Date:From;
	b=WzJUbYqMImzgIvI0VsWAIRS8q1e8ONH4Rb1yMTxL5Su7nOzAtDHtzOzzBJKG+q5ud
	 gu1e4I8v9xB8Ed5skGzABFiItM3Bv+JnNSyIG+wgoLAer/nM7ymAi/IlhjiyoYFVig
	 DBPOK0X60Jayhl2rYd+j6YyuXycFYfcoQyuvyhG2Hhjx4B2bkSU1ih23deMv+/fDQD
	 G9PIzJHGmeKSDjv+u/scAIP/jYrOBKUHzSHmtqpbzcSi6CsW1xlBZ4TOcl4GFbuH0O
	 0zF1wtx8MC/+6mVjFG/nuWzBEwZMue9vNvyHNOAx1amv7rBrUAye5XMDROF8afQipA
	 ceKMN4GdS/jBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3EFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719265368.15184.8812532931761169807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd63915b931e7def2f8b74c972b11a3f76a14841caf8c3bb11562bbd232fbd6
Date: Sun, 26 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777192653
