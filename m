Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5637F1A7045
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744934394; cv=none; b=VsRif3LF6kcRloD5bxkupXEgH4c5lm03J+KlUZmkODYPJIvoLm4dn7lEEz4wRMY2+04R915tTDFDkvmAJ6nYuH3Fv+mumld3b4H+zfoa+U5s5ftzcFTVQ4GkvS7DLQLdrGRkURA9GXvCTutY0XRXA3cr7HGAPACejt14U8E7FI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744934394; c=relaxed/simple;
	bh=U/FpZVxwv2gcqKpNS0OgRrPkex+EC9tJLcHr+mxJVwU=;
	h=To:Subject:From:Message-Id:Date; b=VjXRGIoXvfvsIRm5uzhNgFfXR26Z+TtWv55QW23HuYepimAxO8ezkpC3yfeFY5DTpWmVb26lK8ZZyo/t5XOP4jZ0kTNxnQXadqcz26KVLKZCZAU792dXnetxeqOfy+Dopv/QXa/GoIqk2zLQ+HYtUCyGrSzZQwi0vI+y9GJCESk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz/xJDeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz/xJDeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13E5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744934393;
	bh=U/FpZVxwv2gcqKpNS0OgRrPkex+EC9tJLcHr+mxJVwU=;
	h=To:Subject:From:Date:From;
	b=lz/xJDeuBCMUzE/cqDS2DOUYIQjqdVTEpkGXNr1+RR8JkYl8z/vOk0gaXKa34mDxB
	 fCWplRqAFTp7gfvOmpR4Bxp+3I8zSMpN6Z7gj1aulQsUp0UrNjlQdU34qD4cP4FFzV
	 TRD++Z98IFK+Sdj2EnoTJMREszbGzjaz8pV812QFEtaQ0hywGk7HJJtFsqAyJorEXz
	 FRRToUbtG/3AAgoQSCiEPoug53SoPWWSqVjqG9rNU3HzM56z95vhFf2eSHJH04igUF
	 Os33cAO+AiNBUtNOy4h5F0KQezKI4TZhmsWVwU0avXE/zeQWE+RU0DidmPe7kz7dJs
	 vyMnZonBK0SKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F9DC369CB
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493439367.11428.11096100446193736243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76dc7237fe65516c5002692e4bb007f053a715f3e42c55c5870bc1ee5931f55
Date: Thu, 17 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744934393
