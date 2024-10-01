Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4362C1CC884
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727816154; cv=none; b=I282B1cIKAjfhlDsrCOdH0uUbagNrN8IoY4kSzDu1GNvajBKXFhzqszHJGsf2ARNIjJ97NL4eEYDEzXnH7kYAfjb1a3Ihw6KAyNvVFn37tDnoLWtPTmPtGcS/4BzsJZ8Lz+Q/M1sWH9f3NAXT0bANJPn14janaG1cIZNa8u15VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727816154; c=relaxed/simple;
	bh=CuQNTudivCFJF04M2BygBAUGpaTJAOmytEw64ivet1s=;
	h=To:Subject:From:Message-Id:Date; b=pytIbPJ9CZMZ4bfrX/pmdlzHaIdl6BMjRzLESKTMAG69BcQ9/Y9Xtyx795NTRC1jE4sjDIOXweApQot9ErkaIGLc8aQrEuEZCaXzDKhFanWk5HM/ghIW+KEwBkW6v06/cHW8S6SIgw6rTIEPc5lwdQ9rguq8uDW5+Peu4CC9n/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUXABWKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUXABWKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44DEC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727816153;
	bh=CuQNTudivCFJF04M2BygBAUGpaTJAOmytEw64ivet1s=;
	h=To:Subject:From:Date:From;
	b=CUXABWKjSxbG8um4tYHp2+FmUJKFK0w/Kphf74+LDIedtC8Ik/25gNki6dbgaVjoZ
	 2hL802HgSZ4azGLDVqH+3MFN6R1Tf9tGz+b52aFwH8EaIS4397/IzX60mGjzFjFI4W
	 oEgx1YUa/vElH/CTUyAElYb8Pp82fvW1WRKb4+WGkKpdmB9HvcZRtqmj1kTcDWE6rh
	 qjLJa2IrS9sNCeHV75tiRf/7BR1UKY+5aC4LVVDIi4oXVgLP+rtDMOYqw6q/gow/mw
	 tr6xCFEK1MyYnuf8M5dQwhEJAqsvTpp1xET8UlGCvfQ7Hsy/9xoaZuF8WlwllUk5lb
	 kZWLoE+mzPi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C39CF3185
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781615366.30157.6845194153976742761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c8ea905243778e7d5cc9ed8e19428bf1ad8e27d0dba4466b563f444bd024a0
Date: Tue, 01 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727816153
