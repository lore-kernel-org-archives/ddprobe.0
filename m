Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3355789D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738061754; cv=none; b=rgcz4z5mW0R6w5fdcE6ltPGcKLDSPN8WXzpVtdyp5rkZJHOe74SBGZHZEC93IajC1yUg36J1a292PJWBgBaOKani2EfDCGjIhQRfwsIm9C9s3i7/I3XmHCIV9Wx2XIQDUxKT2onFQ8WuxzMxyI9ckthXaVzdsvhXRpTksMHxIDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738061754; c=relaxed/simple;
	bh=jTVML9P3/bdFxbm8mKZUWfTOdDfSx42og29XjJbBB9Q=;
	h=To:Subject:From:Message-Id:Date; b=lnzrjzQKndiWEBNuJvYdB7xYgsnTiRsFqZwjpdzPpedPg8oJiTeVZbUs8QNkI8o5LKeRZ7SEVQEz7Ckt5AuhM7Y9fpN47ZBdi82w/X/O5JUugbXmN9erhsNSfP8UUYgzAQUNVW56FVSvvmuhiDS7c6SNj3uUQTg1mVLoDtVDcWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2b5cgH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2b5cgH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE30C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738061753;
	bh=jTVML9P3/bdFxbm8mKZUWfTOdDfSx42og29XjJbBB9Q=;
	h=To:Subject:From:Date:From;
	b=D2b5cgH0I/YMHVguoH6WXNt+9XTbnJUOZ2uGFT2dKYNpqbsKhfIRP7hudcApxgqWL
	 tphdhraXpqSTosdr2nLQ/W9Zs+AlqeEHBp24PCRRrBlraiy89LL/but2CKWulB4Xtm
	 C5YRiFVZdcgB6i7smw2XtNIUoV90hvoXaHZk/cHsYoIZgQkl4AgFcLFtZvEIogARhe
	 Xu4jy/HF8T5v3v/tHKu3NusSSlKoxBRUwS60cbQxCxYxuSajMtfe4T8JCl0Esy6vT5
	 FP3SXGwPV8qPc7sz0TPbU/Q/q3WzT6FURNgqFHy3ObjoAD2QAvQBj6uKD+D2Nz0xhu
	 weT9xk/8VwVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF26C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806175362.2153.8117218758786465813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d747f423ba1c0cf150e8ee18a2db302c12205ad8c60d8c57f57af318d045d1a
Date: Tue, 28 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738061753
