Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4AA9441
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718375303; cv=none; b=jNQ4FXOhXZhOVPmwLuGDiEcbbFMQ6sx7s1spKLr7U2QVeP531ogF+RoJ6GCtBQt50SzKy8vwFPgvMmCMg1wVUITasctL4xu1Jl75W7vf+kUZqRcpieTyj8vw+ObZMScIEun3QvD9cRMtDTM303xYZWX5NrEon7bB4lQqkSPwPdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718375303; c=relaxed/simple;
	bh=9ksfiGB+kTZnLrhhgH/pAhysDWvqpq+UB88zxYVig7U=;
	h=To:Subject:From:Message-Id:Date; b=AvJ5fBYiaRmggu4uipLn4XTSxigtdWLQ955cr6FhPeLE5QZsSNZMd0iuSEBh4V8taUQFmtPUwPB+ICFBiezYy+KyR+CydzqbNZ2Bg8cnePbZsL5uKpgea6vGaoYAdmQHGg3f58qbCs5/pPSjaAa0JmDohjmK+M/KJ20WpCWIgMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKNdI7TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKNdI7TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F4BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718375302;
	bh=9ksfiGB+kTZnLrhhgH/pAhysDWvqpq+UB88zxYVig7U=;
	h=To:Subject:From:Date:From;
	b=cKNdI7TV9SAFcX7Yxrfw81oeMQYY8bSexVN2hk9VDz0ca33OELMc09rrU7veU5+ZA
	 qNdaCSUMg4TQp0vcy9N3q+8+2XsjXicWUGH80+IczeGXj55jkapk5ZVutBz3FB0xs3
	 D8dIxz+Rz9KEyWxB1eQmVzYIeLfiS6r5Lt9nsXmtrZeOEqXc2FG+O7rFQ/6C1lzL87
	 bAKHlxuNGGR01cXmxs9wM2Gj5xXm7iyh0sCrsd/zpwDBbR7XAeZ/giWthbVB+/nz5K
	 IwKrNSURjq+ZYGHSr6Edv5Lgr1dEH1USwxR1NZUlyvGxZfPU/keAaRDfSdlIfJGRuP
	 DfiHsHqvEXdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0379C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837530277.28029.5507138838331354037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f053f7b96d60457151e55603776be8b1686f8e563acbd581c217dbbc7be4f767
Date: Fri, 14 Jun 2024 14:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718375302
