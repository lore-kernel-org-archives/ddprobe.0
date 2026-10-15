Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432CC305057
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792075834; cv=none; b=Ly+RYpmh8UHcw5Al6fNBCJHGC00qVxZekyMji2xGgCJYOztB7wY2qicwA6g5eJb1mJsKEgfT5FkBe1xkQzsZQy848Q4/HzBELqBOBOrGKdomF5FOSU1DQrJkZGkvauqr0EuMshV45Ny8KVykeliuUvabSHkAG0KMJ+FxQ9CpKbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792075834; c=relaxed/simple;
	bh=oOvhRO/qdZ4s/jWz+Q/rBb8y0Umj9ymVCNmQGjOz4AM=;
	h=To:Subject:From:Message-Id:Date; b=DQSK7GC6RDPTJgXSwpZYDFc+cnlxrYbDbrFVSmX7PuBdlkdwTT47DD9RymxXDllRI+8nmKuIhu86NQu+88BAPdJ/F2DgLvdou2DHJNTKnscj0G3GkDPb7XwcSqV6PgQUB3SwJKgSitIzJ7GBEl4R0V9X+Ik1EaFS0Hcu6/OqAWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqCBGDA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqCBGDA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAE4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792075833;
	bh=oOvhRO/qdZ4s/jWz+Q/rBb8y0Umj9ymVCNmQGjOz4AM=;
	h=To:Subject:From:Date:From;
	b=bqCBGDA87fdIFQk7mTTlFEM8gGA5qy2O8sUw8TNSUI1fKDCNF3gf+it6l8vOriSK3
	 ar7pUEPGEORkh/uMgKmseDAcHrVYVrf3Qi0GdLULkSxt36WmyRJ8oBkxC5TlpAEa6B
	 0b9riV+jyYS4WZA0srM7VExqFFroCeihjTgc6mrc/cCppne47LgxBjg6lUohCs1EBn
	 l0DRDge1foQjFqCTGtZpyoAeN/eutMLfO8So8Jvgfg4a7cti4DvLDLBz4SHpENSlQw
	 5flyevqrteLINPWtaoir0tPhUGkDIOFf5Pbxojc2gRBW+u3BXGLHrJo9+NVxlfb43V
	 9QMS6MSZyExnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935CCC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207583368.28206.4215986690792450130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3817c6eef05836ab6b777957c9c4653bb098f7daf8afd467462c7284703bf415
Date: Thu, 15 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792075833
