Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ED33DA7F2
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782457654; cv=none; b=BWfXcPYvb/SZ4N71k4jmjq87Dw7ZFITL0M2q6F8vW/Xn0BvcZtGybM+IXaiXUmtEv9xBNdPP0Ij5+XfdKp9Cm6cuUrKeqNVBzXtGdBuzW/QqL0hpi7nIRyQoPeI1u3TRF1EnjFMwiSv3EuGbfWQhZ7f99BRM+XlfCtR+JNcvQpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782457654; c=relaxed/simple;
	bh=7jR+VfOCZgdD0kN3Hwc9JiploY8X6cIbB0n/QCHFlsU=;
	h=To:Subject:From:Message-Id:Date; b=EgnourSpj6tskA+TJnLV/JRZKEQE+DE8VdKiFmtpj12ld3goZJDysUbWw5D4/XsFp+pTynTc9qQV2QHNa2RTAR297icL2TgYnLlB215zJt6oO40nOhdTRzqJfWpl+bUeBc+467COs/V5qOeuslYA0zMInib68IeDDFHXfDAU29U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEbs59rL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEbs59rL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB797C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782457653;
	bh=7jR+VfOCZgdD0kN3Hwc9JiploY8X6cIbB0n/QCHFlsU=;
	h=To:Subject:From:Date:From;
	b=UEbs59rLwjyjy42013NCa8y7ezEiJIq5moWQdyVVN1VJuR3zkTrXPJxXuhzmYyE3O
	 B9X5usR2EYP1pjEmRFUla0oAfiE/l0Y8704wom7U46UhTO1fqBToP89AoditFCNGS2
	 PkmgWevMCHmtVF1/4hFWapvsE3UyEU72BFgfEMh8t/0eTqMBO4L0e8x1G/00ErNrbK
	 Yb4LOjuZDgJYv/eMWnNuTvqwhWpPAr/CfLYUQmUmGdQr/PZ+kXg041/WNGbIaOXjkU
	 huxM8AIMBWM3VQfCgc9t4wFfq1sJbHaQPbhRmEL9U+jErvpJa51E2G527HF+ZZ02on
	 ghdEktlLMiicg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB8DCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245765370.27295.13716178243727955966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba40765c0debd55f064d6cf8bcbddc65bb68f52e3350278d3888477d8086132
Date: Fri, 26 Jun 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782457653
