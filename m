Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F887378839
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777676254; cv=none; b=WqmoZmoDOcR7Mm3mQEdkANU7bKzzijaIvTPvB7IxOleeiBHex2DUa47QWwRCPKeSjx9gpZOoBX2XTZgaE7bJ6a/xe3/38CI8jGPI4Eh07AkM/r/yVz9vIy/KXRMbus0uJj9U3Jb02ygh6nk/jplZuJ6CMBnbFHLFB/AaiJQ6TlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777676254; c=relaxed/simple;
	bh=IJ97U738720fUMfpbeQUQMkCk84L/9SRwrnxSHRf/AQ=;
	h=To:Subject:From:Message-Id:Date; b=C9CfKvpdpY58yXmvrUleRA4eEX7GB0zy9vT+FD+Aab6/CFGOwGTbkegRxr8fk8o/KquffmCXWyS/85wSM53rhU9GEwwjKmaJHtireOrMScpaZZ5aZ5LDZiK4pMldbi+tAgMoZrsOuqK/59mkhvqz/RN5X0GOvmt/mEshW+9wSrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZyve1Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZyve1Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFA2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777676253;
	bh=IJ97U738720fUMfpbeQUQMkCk84L/9SRwrnxSHRf/AQ=;
	h=To:Subject:From:Date:From;
	b=NZyve1KgRkHbnXT9ROTniJPAY5UjZa7buhQSEaRIps0tDMppf91rBOfxaluEFswGj
	 BdITdi+9aj4PuYPEtUvFNklURocB3LMp34d82pwdlfT6dngOA5p1NCJts3Dol7QuVt
	 RFLaqTykIxTcacrtAUmfGLrreqdxrfZ/e0efXsyb+rKBxOiHwJjMTf57QnUqp2KB+Z
	 zzGwGr9LzxlY3OtRHgGKHqoubpKUYQ8lrUgfPlbV5iK9COZRPoXSRipGUJml/0fVkG
	 J9kzAQWiMPQJSDAahjMqvZXXt1Q2zxfu3rs9WsKywey6mcR7biSr9249Bfr/AeldY1
	 05xnSScajEKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF627CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767625370.6431.2101407466139624389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71eb5d04c2cd1199f0519609cf1eb1c71fb2e8dac16ea7423ba8d47f19c63d0
Date: Fri, 01 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777676253
