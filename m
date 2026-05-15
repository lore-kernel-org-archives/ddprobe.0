Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2F61B4224
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778865634; cv=none; b=CExYJpqEjJoLKWgXiMYZ5n/1h1TP92mQoqDI+eqvKt0l8gGhl3eCfEuUC9u0ajDfGGPzg7YwZnMpmmutkBeua1hu96ztABhswYJcT3CD9rQi1/b0mEkxoERxqmx+SXMaFP482HAnvwS/6RkpCZJxUe+OUHXUoCkEvdsAaI1aBsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778865634; c=relaxed/simple;
	bh=PwG6IIJb35xPAXOAr9JvmYrF8xzgfx7mYaQlfUp1TOk=;
	h=To:Subject:From:Message-Id:Date; b=VNb/KuY3Xs5jvsxcQkOByx3Ta7zQTbH++aR3VC9Q7FWV3P9KHFv0UQFo1xhN0bRRngR4WnbjhZ6GnrtA1uSRTZ+3mKk4/ZLXuHz/Po17LoPtxTnYyUN+aQVKfPD7zrc6+oopmb6HcfH4ugCVGif3G08Z+EF2+bfyPuyJhRY30v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eb4eFu9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eb4eFu9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6C0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778865633;
	bh=PwG6IIJb35xPAXOAr9JvmYrF8xzgfx7mYaQlfUp1TOk=;
	h=To:Subject:From:Date:From;
	b=Eb4eFu9xs3zRxz1nbjXE2yKDrXDxupRAzZPJPDh8HKDdwJRWOUKYSHYcPRbtqoJuM
	 Rf5vz9C2lJoGU+QIhtCwnUMUFciHOBMDmmvdieBT4CZuFM8YFTW6vNozNQEZFp2w+Y
	 7HL9eQe3lFr6cCesDGTFunT6T5qeU0Oq3BlWOyfbJ/BWq1FlwXojenTrkWyqAtQAoL
	 N90rlHaenoxI9/BHzAYPhw7kcUyk8eVgQeI858RVqRKUHC9ID+cPUf8gKRk3h4alNS
	 dDE5sDf2P2gpCMgNkTNGVAAXBy+SGzxaFm2o1vkKCuyRvkNePOclCLQONgR4aLjE4o
	 NiYDY1tillEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD10CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886563369.4392.4876262835652361255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d31ff7e59bf347d6bc2ad8ca6ba08deb28a1bdebba0bb0653679c0589b0c5b
Date: Fri, 15 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778865633
