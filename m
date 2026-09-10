Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57809388866
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789010434; cv=none; b=I3Gxbuz49i3T3XEmj+4rkUu2ObUEqNylo+LeM2sPYC4aX2+dVIx+ijB/XF1DzWLerIjtrrjQbVk3IEfeVFw6qWOgunge0dYq+6zdsWXLXcwW/wx+huAd3MuPRQc3JcCjtc5HB2quWtvTc831pEoGuo97O7hDhKVSKLKoz2A5nng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789010434; c=relaxed/simple;
	bh=CCHErcIDOHCTD2KbXaBsr55OhHn5V+eY54JTL5h6g+w=;
	h=To:Subject:From:Message-Id:Date; b=mqXiUc4v1MbD6IyYiQFdTlnETsaDi3RffCetBJRtqhoc0rcd+h1Llp7frny+KISA8Y/nfFETOY+95h1jWgMKKKTsMnT3TGAAilCebWVk2QFOeJQg80MTlacyii2mhe1Np8TxVFatF6SsrY1gNljK93jhgrXu7hwS390ZGkkIpzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzpbGZco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzpbGZco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6291C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789010433;
	bh=CCHErcIDOHCTD2KbXaBsr55OhHn5V+eY54JTL5h6g+w=;
	h=To:Subject:From:Date:From;
	b=EzpbGZcoOjmJrbjkZbR7WBy//2eOueahslvG60XGmdsoEJvRrnODy33pwujTpseqM
	 7Uz0TbTzt/G79j9O8GR/BqU7tHq20PFaCCgoSa2/pjZGQXAx5BSdvAZBoC76oxe6Tc
	 qEaNN5aIr9HCNt8XNFkA5GDHiR5KivV8HxmqrjjU7Bf89V8jdT3rocT+JRQobGznhp
	 7lBtRDK/sHBrpyjPqY87kjMzQFsiXgj9mLr/l4hqJlho6ZRghPKviZfulSTDAP+a2y
	 cv2ktIUQgvfDxlbCecb+pnEEu83nBZWaWozNiN8uSeZbHBCAdQ/P7V1k5EksZ/Ys38
	 BUFdZdLh6t0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC95AC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901043369.11636.7644592825329331366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3debb3a37d6b8f02164159535ca3751ed74c76473bce8959f1245bff20836295
Date: Thu, 10 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789010433
