Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21017390234
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532294; cv=none; b=OH953Bz5gFCfH5welJHv594MGRUJtXFXCH9SLOCc5STWEmse67MQ6fENTJm6IlibepFNlDEfMVAVa2kHsZqkYd4oNuZ6+UOxNEpZ0Fqr/ou6JB0dKGIDJRPi590Yd4FkEMkHHg623I5L6l+xrDjobLAhXlB47vxa2C97VH1ApQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532294; c=relaxed/simple;
	bh=tOavSv9nmUxfH3v4YjPJznA1oHzpM2MmeCJ+wmqqgdY=;
	h=To:Subject:From:Message-Id:Date; b=jXySzm3vWAuRIs5S7NbN66m+lzyh7Fm4wPao2heJpHmseouk/W1AVtzF6Obe7m+CBYn1kcwVQ2obkwbnc9mE21yOYvHHNxPZPUjGPc/+Ou71pfSjKveIxJO3wpeGfUgMS4BeXXiKiE7VUqgdxiMgFWyg6Cqw+DVSEuGNHpRWgds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfnoKYnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfnoKYnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74A9C2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772532293;
	bh=tOavSv9nmUxfH3v4YjPJznA1oHzpM2MmeCJ+wmqqgdY=;
	h=To:Subject:From:Date:From;
	b=HfnoKYnCXUUGtNhDOP3RnskjMMkGY/mgDiuGuJIU/VPaMXulCgKShDw1gj0XLf8uA
	 iDA0CRsiP8W1aSFcBUWyliRHwx7I0UobKmAmpUA32Z2yElxX6KbfpfBs//tKhqEkGp
	 KtXeOA9fukDTy06Y3e89tix/Pt70KgzcioyiV2N+Zs2gI9wYCUao/IvU8XQ7/ULxmh
	 QYn90g9YV8Ju3VptA2WNxaUsXV6l0RScluAI5yHKZwGtvwhOaKmnPLRZbKrkNG5u0T
	 G5kXc1wJWhM2YyS0lAHjWhPcYvEUGAxZIosyVealpZKs+b7xPDZ5IVtnZR9AZebP10
	 l71IoZEfBFh+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0713EC0489
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253229363.4177.6168187644786115192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf379058245bc25d6867384efb5a9106b10a7d00e4423dadcbbd12a67f156058
Date: Tue, 03 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772532293
