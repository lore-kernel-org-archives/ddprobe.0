Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489D03A6F09
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780040554; cv=none; b=Dk3u3IozmwwEvTTky3+cLg1HXaKRmYcaZwNGE5bRZ2DQc1TXLUVyNyhRlqnf0imx076uBxUBhAgCLEcNtVuNRDw4pZbiltY6t21g9e+AnVvkrgP7A5rs0jwti3eEfV+fzmyaIHtgsDLa6kr+Zr+doqnwDFT2u1O3BBVGLdye+Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780040554; c=relaxed/simple;
	bh=nM86t0ZNZE66ZlW6IStz7M/6O0ZI6uDkopLEUiyLdnw=;
	h=To:Subject:From:Message-Id:Date; b=bYH1iMhq01rue4nI7eT6+AXNKwe8rm7kJBsJyn6QMicX+SplLO/okHv/HvjA8CkJX6GZuJ0q6qqcWQAEERwSxUdqeKzA2pOD5xC6c0NUS6Jqs+CM/99PyXBe7wnSiqc0MQ9jbqCKlb7PF/CVQmC41DYcnVP9QSpSCGIzw8JXuhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZP3PKino; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZP3PKino"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DD8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780040553;
	bh=nM86t0ZNZE66ZlW6IStz7M/6O0ZI6uDkopLEUiyLdnw=;
	h=To:Subject:From:Date:From;
	b=ZP3PKino2EDgW7T6dPIuephqnjGzlDTk8+YK/IxRKhXRMVU79bePnitjdPm2+GHzl
	 wUe7w5XlHtsdxgpK3L3F9CMa2xCpY4da5B4QUvhveoV7rz1mmzykThSgsRPeL4MvhK
	 tCf/DfT3eMWgrD1DwemhntVMkkC2wrwWwZ0IhqutMcThOqszBPeQvtGMkTsO4uXpF1
	 EPH6aEXX5C4Uij85sVx//vcNpiDpWAEI7uFygw/2a/Nq9EUQ3de4xgASDAIR4DT137
	 I+GvXZUkHP5Unlni5EDiqZSIahJArUkZ/ATFB/i0+GoenBogEcwjTbT3opmpQELFDC
	 VidrXhkxDLTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC919CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004055373.6217.6986673654278607245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51fec8b270e66d41176d76432912192f9b2cbab2ffe379c6cc3aed76465940c
Date: Fri, 29 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780040553
