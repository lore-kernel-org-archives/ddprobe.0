Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249A263A9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736118354; cv=none; b=hkKJNCx1aT6+zVlcefbreyEK15EE3NfLEDI2nFZjsWYmaNSYi+jdPnYoT6eY5oo5YbiTumqJSZPQAO8u6xULTKzxbwn8OirUMaHC0aU0IEufKNjDEHixlzVIsuBDkvlUFscLCNJmFDcUaio4gJoPTmcJGVsLKj4CUQ94oAJ2Svw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736118354; c=relaxed/simple;
	bh=jWvC3L4icUpWAHOBnq2q2G3SnuiMUzE5VYYaugXLKVI=;
	h=To:Subject:From:Message-Id:Date; b=rBpwkBCNQZC5xAdSGVOdOlxwMxN/xpRzU2b0z34CPZa7HUR8Ecds9ou2QbqscTgcT3jmKCcPyKPOFCpFifvJAXkEj0qn7G1wzytZKYCmmVCHoFWDHxxdv5sRuvF3JdoGU7emSoGi36zR/YWdqKGyguo6HgLl8+za6WuHyGs2jAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxDJWZpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxDJWZpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A8EC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736118353;
	bh=jWvC3L4icUpWAHOBnq2q2G3SnuiMUzE5VYYaugXLKVI=;
	h=To:Subject:From:Date:From;
	b=PxDJWZpqzQN1ovcXLGIWabzUfXNNZjNPfAd3vf/1l5f8RMvI//1h5oZBpkXRh/Qky
	 bnAPd7vhwSd6zZcNFIrs9Kic8pAaR7btmVW7TXTTSHHkXHm6v2dXEtiwh79li3YORT
	 EmbVi1YgjSqligHnakzXaOiqDsydYVeZMCEai1iW9EXhTGKt4vSE3EjqZJicwWJzxX
	 o9EQgMGT1UvuMib91vGdESVSWAxkNGcxb7vjhaFohgRqRU+LRoNVI1M6uq6K35Wnpf
	 kd6lBmimef6dWMwoHQxxxiQmuSjVGE3FS+l2x8GwXmA5yDfCzpy67k7A7VWrRgcsnB
	 x/utv27Rf08lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0656E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611835362.10238.14393685337751798388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a00fcc59a32d4a90e80949ad0eca3e91e9933eb68f8f46677bed506b53f6f95
Date: Sun, 05 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736118353
