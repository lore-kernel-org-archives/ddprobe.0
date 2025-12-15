Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE4632936E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765796574; cv=none; b=pWv9Av4siForTQ/mnXcSjtaVYaEKCaScP3Thg+/9kjnPbG4TmYf6NPWGi8SryRxmjW34+ex9Zs0fHYH0t5TBJrCUWX7A5fMceF7rMSKdcLAgcNr0/jk8i97RuFoA4DH3qFbciYjAS4XHi3Zd6eUgStFn99y8Ccef1qtW1KF81L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765796574; c=relaxed/simple;
	bh=5klnO83Z1GwjbWAjCS5samVMgDaorLV/1n1uglLDR2Y=;
	h=To:Subject:From:Message-Id:Date; b=QRhCGQJWcyVJ/D4F4I0nLHnZj1x4oW8e/WZcSnkgnCox9ufkWJo2kprc/BH46/Up6r3SjZMzJIefgdEp9A+CFS77TcHxh6xWB6Ks/Tsjkx3FEDgWGpqwGf5+cklpJpgffwTYImqn4mXWLK/EHlYLnGYsODNE2GPOrjoEDoYcPxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBkboPBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBkboPBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF983C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765796573;
	bh=5klnO83Z1GwjbWAjCS5samVMgDaorLV/1n1uglLDR2Y=;
	h=To:Subject:From:Date:From;
	b=RBkboPBJ6pXa57bOAw2U0/cB59p2lvR5zpP5JonX0m4pELAu4AVdREg7ym9wvOXsF
	 WANf/Pj8Qm+/16ixkH3rvK/9qz82TJE1u0i3r8bMtyWd8vC4oFqpTMEKmQhkfjh0vp
	 2XlEimIuMzGNBADeVIb8Ufl0zE97k5xSJ43mQnZ+z8CiVuOP279QUWEhIug7rcE0cf
	 tZr4GxFLyGSmjhVlzJ4/FjNVcigH6cQBzX22lsGeOmT/L528ZaBVHdsGztk/Ob6keB
	 00J9zN8qegzLzEzj47IlqubB99fyju6z/e1u8FfA80OwONKeb/qEv0yuJZqfHJu/h2
	 Z+0j/ECss1omQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6ACD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579657363.21502.18307299962685193723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5c68c27f5c9dbdd81492000a1c1eeb12bae7419c8e58851d869de75d17b936
Date: Mon, 15 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765796573
