Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BBC1898FB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745631594; cv=none; b=KXHdxS85t1L3d8Ed214+4bt9CWAUPHUZrmYsp0grP5t3pVeuExJFGAKD5YUd+L+/DJ6Db1mVkJWQK7zYm+zpPIXF05SseaR21dD2Q+TrOlt76nycEN5xMop7Ynkw+YT1Vi/gwrz2KTPImJRVG4qoqa3KkIWg8v3xb1lfp+XToBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745631594; c=relaxed/simple;
	bh=2ng1P+6r3Tf3RLmIPhnuGkTPxqtht6aPBkivoQZBAEY=;
	h=To:Subject:From:Message-Id:Date; b=rJHM2QcLI6G8eZSXb99RAGyUuTj+iU9wfQDyp7N5iiC2qbWLywre+9ls0bgdoKN9YWckmWDRD9MlxDmQ871990Jrgsdes1Uwdaz1GDRumBj6EfzcGFhQaUOmxS4Wfvg5h1OS2LJbULYGa6LeeGSNw0x5UEn2YNLxKo+8WyqJ0Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RH0xr7rW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RH0xr7rW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9F5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745631593;
	bh=2ng1P+6r3Tf3RLmIPhnuGkTPxqtht6aPBkivoQZBAEY=;
	h=To:Subject:From:Date:From;
	b=RH0xr7rW2j9g4abP6VDFbnvo+RC3lSro8cOwlihBOKgh/7aTauLHPw5NyvxBZnb5b
	 1iRGxbKo6VM0P5OalKS8ySspJj5nrCYIpJiGg1mnnVvIFyl53CVPu4myQ8+mub6Fbb
	 e6X/A7dww1ZXgUoBizn5NyK99Xf57ZRIWBE5obJHxtfXrolT8h/Xt1ExO5Hpc49l+L
	 OPP500IQRV+0qP4tU8s51IhvEBV2b+VaCnRXxuTzpAlK7B0aDdS1dhIkCs3w4UZ5j4
	 4rRd/buXyq2lxjfk+DUkMHMsqs97n9E9/i45ZbVR8OwKzIRa029i7LEUeI9PfiwoZs
	 gla/453yncmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E326C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563159357.8335.18364912820721269110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e312269bc9b5389d90d598c706e0c71d36855e5f5e4e36a1d6b55c43d796edc0
Date: Sat, 26 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745631593
