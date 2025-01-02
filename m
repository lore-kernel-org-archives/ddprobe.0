Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375237462
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735786554; cv=none; b=liEkniiXtUlc9g5XfNd54IAsJ74QgWXzy1PGHxIL4JUMSecRFia+PcYeP9IpUOXYikqp2mEDtVOU4GI04caQZkb+2Db6p4kjuceFe7YEHhw+hMOqczbpgUI8tW6795dIRQLYpUko9VXc2v35aWMTVcoB/AxnClpwtA1VCvg3Ub8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735786554; c=relaxed/simple;
	bh=q/5UvH59HL9vd124Z7ZI+G/H67zwPHUNCl1OpqMIeUM=;
	h=To:Subject:From:Message-Id:Date; b=cyI+NaiWD2SisO1NcKbSd87OHcXVfKmxcWEM812nIOCRJqC2Z1BsFlYnwZLvWFt4nAzAB/+DES32RFSRLbxqx5sfcvpSZR4UiGVaBeTST/NY7SV42iTtfBB5am/nUSrmUTzmTjA+PY2dZwQZ2NxsO+l8lofxxaFTewD+Z0vSfOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxtILjO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxtILjO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F28C4CEDC
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735786553;
	bh=q/5UvH59HL9vd124Z7ZI+G/H67zwPHUNCl1OpqMIeUM=;
	h=To:Subject:From:Date:From;
	b=JxtILjO4Ump/LSeCXeyUaq3jLbNzXd8JTdso5PaYVQEOS/sJZuNIh9SA+wYjqpPdl
	 4TRtZ//8kWjOx8xn94U/QA9/y9r4Y69nG2CHYulnTffjRYQgkU9gGI9rCghvbS5m+B
	 a7Q7V/062w09xyOcAIYzDMDE0FEAcg5W92my0lqxsCn2N4BNpOspWEdAUymDxU9yph
	 z3cO4fNtDWcw9RVjlK+61TGqC9fEgLMHclM0K92gc68UY48uuvncaGXkxxNCnQnUQL
	 cEA4ZwFzrT48+5efLvgzYTONDNdxGlh/1eOk+I77RpyXOicA5YY5reevZmjmGrSVyQ
	 l2Avwx+tYcB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A486E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578655360.27619.2926166136652463653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eaa6ee94f749031303eae4e6f5a0eb1a0e9dea42c850045cd4162455236fb95
Date: Thu, 02 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735786553
