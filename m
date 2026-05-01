Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4E33D9033
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777654654; cv=none; b=BBms5Hq9fVtfHIsovc2D38SxRNa7ETfGA3WnY8ZvILeMP/G981vZKeDr2omcyLW91+zkoDCs4CtjYa2DnrWJgVt29tb7U5ZnvEt+SiXK5k7Ju2EjUDmnVYFbP7vaWbHhvrDvnop9VqgXxqNnPeYdQq4lvpcOyz2MBm6lp70nJTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777654654; c=relaxed/simple;
	bh=o+gBtrfjTQCNqFL14vPBEKM/KWc40Dvgxx4DVkrB91Y=;
	h=To:Subject:From:Message-Id:Date; b=Sd8o7uHivmBcitHDTL370gqY0011/E51wIR4gBWJ8QjJeqSD0mTI1CUp55dY1UIRXV3nYbfkPNbvvuyVb8jlbTltq6WebpeNLmVUcr2uB0ZsrWm7COKDZSiQUSCBk1AzcLe9mqHYQprdQgP+2VGlVp8nBz9ZoJhaOwwt0uMYU8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q02KSf6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q02KSf6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5DEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777654653;
	bh=o+gBtrfjTQCNqFL14vPBEKM/KWc40Dvgxx4DVkrB91Y=;
	h=To:Subject:From:Date:From;
	b=Q02KSf6eEPaPCpWZI9n3XE7fQfBzHfTy5ZhKQ96F0Q1vSMGti7BUPFt9WE7pVblPD
	 c4jyftc0CUaqg2KG7e9xhXk0tviEjpxIzBYuqJmbO5XKtNHsR5q1eshLLTFSMjP/Ds
	 /STeSn+P/bSp0u18Udydv38pwbA58o0yRWda4j9i+6hXxNrWpaT7tVtSErA5uURYlp
	 YLxoPmLjfCze8EOy8DCyMNtuJYRs/9Y1uhn5GZYq6qfPXeQEj1YHLqKmckPdssrGtz
	 mVXjgEOja2Wem/6/k949xsCKp8qVsaozDIh6CvGj9BADDvGdmiLbu1X0oglPe/LsPT
	 bHFemEsegQSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12ECCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765465368.31411.12580343623307205127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6e040b03e74f7420f07eed651b498f2b79f5e672b2957a86de28c27a2c550d
Date: Fri, 01 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777654653
