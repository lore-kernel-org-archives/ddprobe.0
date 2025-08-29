Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD90322C99
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756485593; cv=none; b=IiI1ytVQiQmZKowhD0PnG1zCeS/bpuc3Zb5mUinb006TI2R109Iek7VNoq2DZRQXH9jDKEhLUiOs043jE8ycWIh/pFFmtWrFATBCwmSv3i+OgVM13y4IxK/m+Ona0kcDdE884x7sTw0OX7rqI/Lq0uDJx8VqzI+QHDka/hSXCtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756485593; c=relaxed/simple;
	bh=xFBtj1x/rnHRR65TViJqvPXc9ZrcoMe3Nbdspskx3kY=;
	h=To:Subject:From:Message-Id:Date; b=LSn04xfm0gNey2YRNHsI/hcP3JOLWiodgNYD8l80U6MnojCWUxJFnRZIKujcFSKc1pQ+El+q5G8fCrtZNXFjqv8ZKq0ClMm+zjgKtvMaIU7BYn4JE1kX5j/Kv8zVmmu+0NAree7ZIWz8BLwek3Pg2n1Ed89F9BDUDymopW7f0Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lod7eiXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lod7eiXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D6EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756485593;
	bh=xFBtj1x/rnHRR65TViJqvPXc9ZrcoMe3Nbdspskx3kY=;
	h=To:Subject:From:Date:From;
	b=lod7eiXGvtB2t6AgnFT190HyQ6Lcxl1S1qQDzlE9WOZFshhS5Rmy8aUzczzEOtGsC
	 8c8m4IjeoF1x1qp2hjwIjXIFbChoesdVGWfMyWb6SzQTYn+uU28/1TEmr3w2Ikg/Aq
	 lk4XBrAtAVqSDcoHCCLk/+RKrh06UXr597GyoGXad9Q4vI6wMDXmRsy0fY4A7K9dzU
	 VLoTVRdKwm829T7e6RqQVDqDlrARX9e+wuUUyoaa8rKG+LSrc7tKMWr8zycSJQrhAU
	 uNuXAF6SuvWdye4sVhG46Hf2sTUNskEZi14q1w65CJyvwfj6Kpvtkxk01buCgKxlwX
	 6Btv/CTEmV0xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92391CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648559358.3087.7720278893743301658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cb1493278a295c2150ba32d5855ba00906f72b85c453eb135020085f6b4352
Date: Fri, 29 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756485593
