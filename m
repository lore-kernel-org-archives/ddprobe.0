Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379A528000F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776641254; cv=none; b=iRuICLoqJjUMd/B2ryDSTxTzpLvmfT/U0+uqbw+eZZt8MpqQsRQBteFiNJi+FjMyqIKCN7eBDzr2ctdJud7KW6Cls6KzcdUozKhcl1CHaJNQGCYvux4HWjzDxdrV9pgWmCKpq+MemCNmrKjtVfhTKqQH7eSArqGp7NJu1pPj730=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776641254; c=relaxed/simple;
	bh=M+RYV8KT9U730bzYz/+3jg5qSsb9Et5EPi/PNKbmrPU=;
	h=To:Subject:From:Message-Id:Date; b=n72jzLJlVAHCL0lTErWobRFfPDGcGQSYfGL2keiANgXk6k6rKY4RARYggOrg2Q01NkLA/RyKPpxnSf+M/bJAru5x3n4gsokvqAAxvAINCnEfVZGEGLUdzciqY6h79Zo+CIwWIxZYhlJc19zVH4wray0nXFSlJyQcEKF917P+Cik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iaja6jGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iaja6jGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07C4C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776641253;
	bh=M+RYV8KT9U730bzYz/+3jg5qSsb9Et5EPi/PNKbmrPU=;
	h=To:Subject:From:Date:From;
	b=Iaja6jGshGxOs+Dqxc3ZRM0pryxAFYXS5KNtGFQ94aDOWZaOe352L1B+NGpVY+ka7
	 4sLjJboMmg88qCWDCHN5cV6LSG3l6XE0BBt6Z358JDUbvUYCWKHAm0unWa5IDrebVK
	 XeqV8DIikOijzB8SQpCopVRGG8jJSd/4GuYkB2EWj1KpSrTFgCg9rAZNc2O7zjwIDu
	 XCRMXEvFGlP3sqq3zNetCQBOJsuO14FCL4IXX0XYXa5+t7WJwXAuRZTs30x/0lgwNQ
	 kzSPMzGpWaVPgRtoUqMNsVGgrm5dpSR4brht+IdnJA88WUInaFBVNK/vKp7VVYee1j
	 prIF+wmf33Yow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF66DEA71AD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664125368.6948.11655062221433565521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f9de85f59f697641488219d6e72e81f3b460155b390cf4bb79fda782b710a5
Date: Sun, 19 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776641253
