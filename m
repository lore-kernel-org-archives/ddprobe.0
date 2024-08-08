Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DB2146588
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723154754; cv=none; b=M9GfvQPHeoCPj1wwtUF8qAJcgR0d5k2xodnlHeQ1jdiLu71yg/4YGTpUdmoRSwR23bxDxs7cPUDCWMG6fU/anaWkisOCSjL7gwKgVCynApmPM2K8dgwu0my9HnKyya5i1XNR5+qrsr77eG0l3IWWA3DoXsqq1PHNzQNQGZ/9/vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723154754; c=relaxed/simple;
	bh=dIslPabfDoRDMR8fWgksqoH+L/xzaYrdYqo7QakAO+U=;
	h=To:Subject:From:Message-Id:Date; b=YOXX4fqhkxrM7zbQhTo3ohw6g8DI0moLZ8xF3sKYAkqqZ05frjF3Axhk4GL1z5pgTtp9v8f3I7X1eIHaijWLN+zZJ8vW1tF5sOtPy412ZUA01xeg9r2pL51B82kpYf0iCvoB/21dhgia3/FsPM7LCvihx5kRS5NgMfnZ1PmXcCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNJmI5Tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNJmI5Tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECAC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723154753;
	bh=dIslPabfDoRDMR8fWgksqoH+L/xzaYrdYqo7QakAO+U=;
	h=To:Subject:From:Date:From;
	b=KNJmI5TnjMIu2bpAey36IKWZHXYjmQZeq7XlFgzD41yZbujr/BU+HuKD+Hl04b29Y
	 shUYhKjA/pY6r/1AH5koLoEmssGOfHfhD1gSOxZ3twt/tGX+tTUsH4pRm1+5PuQR87
	 atHjczn7AGzZOT5rxpEEtknDmuS2G2/7DG5ZkqoAEJ56EYFJD4xF1BL08zVDKaG5Uj
	 F3jqR0FPu6sacPZLHn1rN5ILLRqBR2dBacGwoQ2PGA36T+HszAlkXmU50+J9J5y9gn
	 aEsM3hGZ7YmGcNF61NU3iCE8UllXg3BWEG5sMypn1EjycSMRSMC1m28tDA+MlazEuw
	 EQ1Ew0EAAXsfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95008C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172315475360.9452.16479460567333870929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045661c2c36b143136ce6e2547845d90b97fb1d705e657d4162be838a10ad7ec
Date: Thu, 08 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723154753
