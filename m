Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F32B2F7EE8
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790880034; cv=none; b=gvkmvALEW0tvxM2i6cyRYOgH85UOJs5HzJdayfiwJ+sv/R9LnL1jmaXNogIzPfaBKEB5f3a//7qsLJke9N302KrFJK35HY6lODQI6Ilq+9Nz+mqZzeufVjxI6G9qWEh7yPtDg0+q/Jg9dZHOUitYUiRFkYr90NYcOsAtGxl4xec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790880034; c=relaxed/simple;
	bh=lApp8nSAcehdn/TmtxowGlDbnloKhktAwFilYKTg9MM=;
	h=To:Subject:From:Message-Id:Date; b=Ks25/c1LFrqjB0ggFx60sXCsD1khJMMZMUEvqthadYEAZ9kaAC6CL7FQ0jKvy4yREz0rwI+LQFQOeDTeID0VduKXtGRJl2VZiB9ECrk4JseC5dgOFYhxemy9jCZbV5KBZ2s98LeWjWOdiBuENE52xGrZCbf+QHiKV71Q/P7p2LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7pKn8WD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7pKn8WD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AF9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790880033;
	bh=lApp8nSAcehdn/TmtxowGlDbnloKhktAwFilYKTg9MM=;
	h=To:Subject:From:Date:From;
	b=Q7pKn8WDmT2VG/Tmwz2WykerZF574PpAj4FDfp4Bm66e1M6F2gJfzGQexmFLm0g1f
	 T5b0Ldmrw+x30CINNygxAYEdEC53Q+mGRPn+Dm2x9v5j/SXvZ+RzEuEWNGE7pKAMj3
	 bqLo4dt7zucVGwuU4IG02QVaaf8xGZQYhRcwtWizOEm6uZGSwhDPdt7pNUnybcO+3P
	 5SzqJtfRcnWuag3Iu/bSGbJm2rloabDGBBHw6w1CGaSudzvNprvlXaUmZ3SqaWJS2R
	 5iI2jBhQM4ZfmzTN+etKB814ui7Gaf8Fmvz+/mqadfoC23/C9Nzuv2idCNBy9OVUVy
	 7kNahH1pECFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D31CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088003369.5767.15651159012293933540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f794095e5ee4a72ec2d8526c96c4132efbf61ab70b754a05c1d9734cc08badfe
Date: Thu, 01 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790880033
