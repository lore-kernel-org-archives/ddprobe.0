Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4529935C183
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786646434; cv=none; b=E3++65RooKrkpzVueLEBR/O9Pep3CIptY/RqlwcqBuVGwbJDzSd/rwwf89o/7wyFqpHUZolmizcyGj30AjZNDxvqJ2Y9H0jCWiN6VQUcsSkf9PJdtAXTKAo/gfNKBX5Gpm4dVily9FzOEWLTQnHapV0qijPAoXXCFYZMScIdjeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786646434; c=relaxed/simple;
	bh=QI1wts73CYE+hkTWxpYN0xE6P10GoDkRxwngD5ppGYk=;
	h=To:Subject:From:Message-Id:Date; b=nSJw3Iedjp/u9wbEr0R8s9LrwVg8cD5LNW52iXT+qrN1ZYpZa2JsxHuu5yBpEo8s+gQQ+f7FvM6B4xBsfts6848+gf7Q59PDoa9sKj06besdiWZraTnLudrMHQvT/boUCMyh7IjMe3ukIVws4BIPwrJbreJAteQOfHZ7zl7bF6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCrrZAY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCrrZAY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB807C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786646433;
	bh=QI1wts73CYE+hkTWxpYN0xE6P10GoDkRxwngD5ppGYk=;
	h=To:Subject:From:Date:From;
	b=sCrrZAY1yE4AcJft4c3n+RjB+XjXr+ctPHtQ/eB6SN2xB0KILTET7sjtLGQsxKUdz
	 bzr26+REQv0b4S045ENiWG8KRvWhabDh+at7dZYvkun1Ok2VEbSjIm5RfGSQ65/olh
	 Qkfc1IZrMU1/KBbzVmYGXpXO7BFqyvhUx/H/o1VZANW9gfGOMQFdd9mg3l84bzbAgZ
	 bEXkkuNLdeIiGGAifFEALz/FHIFepetn6PRIn0eOpLOOHRtOdE3HEIZ15wFCTJWhe5
	 l8Eidm5JaqlCndvQ0fS/wyYmvwGmV/SlwhU0CrOFaF86GJzjmBFnHR7lie+V/+M1y9
	 Uvf+Ir8uxQrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85E7C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664643368.29410.9509137844418416210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b714b9cf6d0a17ee24a8de3c3c60030ee277e89ccd069606decf6c9f77a75ffd
Date: Thu, 13 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786646433
