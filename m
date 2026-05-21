Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C43239A047
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779399754; cv=none; b=pK7+yyHsrGLN4+RQqSXnOjCu76iYcERZcyjRRL1uPk/892SKIXOA+NHVKbM2TuTAGEAdwuPgr0/A1AfO6rHzSnZzdmZ/peo0NWwFE3PeJgMKITneAgggXAougN9WJzTisVVUXWcw+RBF0KYJgekvqERLyL/HoteJqW3ILJ6YRvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779399754; c=relaxed/simple;
	bh=Z07OxP66bjkxZsaTOQqaS4huph51XYtLXlRhToMKOXY=;
	h=To:Subject:From:Message-Id:Date; b=WkEcfTqQHKqWQ96yXG9qFS+Ukxnm4vbrHpjfT3gRsUAHNrCiCAa1dOKLfmmrqEXobxvkMzv2NJRJ+1zPe869UzKwQQclGP5jN8GcKdWM5TR9dD08xvCT4WaA7PnoVQsms9STHue9pZHCJWoyrzmT3gdcnvIsEq+zH3nzJkYYrXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX9E/4kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX9E/4kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11CCC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779399753;
	bh=Z07OxP66bjkxZsaTOQqaS4huph51XYtLXlRhToMKOXY=;
	h=To:Subject:From:Date:From;
	b=hX9E/4kR1L5XiCyka58/LaYwL6CH7sYBwa2wIe0zgsUkC+1NM9KjQni4dsVCQgu/F
	 q9q0zQ3nyNhzJbl5iRq6FIvcXpRRKk+KA69Zke6KOAsE/otEcRACRyUParpeObMZ1L
	 R6naZcu1BVE8C8BBYlwglcpDMFxNVMKy8Xnnwqh8KjcCoGnH0Q6EwRxzt+rFTUhheA
	 01+ebbQ8n7hRBKCYslra8A0SA9dJVapGo4ze1sGiEwwB16kCt0plK9flbizd4mCJ3Y
	 k6idD/G6U0Laf+JBE1hbxbJOlfp6TchonpwzfwC4EKejGlx3lIX/fOk7ANJ+ZUip5q
	 Hq2IyWxGXNOsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E27CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939975368.4876.17480911886842581588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f434e579b9e30090b59802e5ae03997e014008fa4494416e8d519a2d489fc6b9
Date: Thu, 21 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779399753
