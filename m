Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5CF28D84F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759887594; cv=none; b=teT2rlN4NiWcWL70M+wCgI2HkGzDmievejFpBXm09ty9EP97bEzs7Z4PTT9BRuhKgbpJjjoqgO+36VmlUifODA4x4+ruM8VgSPka9RwPbQ6Sx8FxDLqaQntNKnuOq7WgEXZWf/f9SFvVzaLzZDgmhjB3X2EucGPh7/telbdR9j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759887594; c=relaxed/simple;
	bh=+SAwlu4PIdPFKGc5bVeZyDgroS013MAQeKVhKeMy6BY=;
	h=To:Subject:From:Message-Id:Date; b=JhV4pJYe3Wg67uaCrzwpF/iEAzw6hq+Upi6agHDcz7NRdziabMpvhmqbTma4ux/Wg1F06W3dAvJokHk/WeduxVHpNIkvr2nKTj28Ys9dDtXmY8lsREcnKgt/qUF7H9kX/4JIogD3FpFZd/q2AmvkwCLhNRsBVgFWrfNzSnYV5Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxajMe89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxajMe89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A9CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759887593;
	bh=+SAwlu4PIdPFKGc5bVeZyDgroS013MAQeKVhKeMy6BY=;
	h=To:Subject:From:Date:From;
	b=YxajMe89earBmlnWLLINBbDKbAAyvJTUgrqeivtDlVHH2wsdsxh7rgskbkPPchfjA
	 s76ycl1Gw1Ai6+YjXnh1gvRSBoKKFZ+Etwu4H25EYN6tXsGI5mSyQMSGvHOmumHsIu
	 P3wpWb123tykXrlisaJpIgeMtFFTizX8om6w4HBvBlbTl2CLEB1cKYIilcrkQ5HgDP
	 VW/84+qgnMvfwzJ2m4ncPJuH/CIe2GHRHYA2TQKvdrlBiLRVgegztHTItipV6nBvFy
	 kIgCYQWOhLsuOwrBis+axrkL/1MlIol1ASjVsuYJRREMaJRosFcSWeenzfyNJ6vKwo
	 oDBLszer8dG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28CCCA476
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988759357.25088.1266179805133840988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd2e8a7a61fbdf88a49de843cfc37e051d4090c30af8726752ee86948be63ae
Date: Wed, 08 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759887593
