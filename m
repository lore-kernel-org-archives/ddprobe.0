Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23764242927
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758442794; cv=none; b=YItntaBALibhMRViGjYRv3k+NKsHjlKtUW05v41SJUJOIJchF7TRmYv9V74ORxgXvKw+kfuEZbzOp7/5lqHeM9+GbTJpfes880GidhRZc0wAw3FJkVT1VwqOSBlJV8PRbXBZ2OcueNN5QFT63PiNlVoy58v0rujueazOb87TTIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758442794; c=relaxed/simple;
	bh=eQp/4CPcnLoFA2s5kC62HZ7qpLyEc/yIpJTckr4ai5w=;
	h=To:Subject:From:Message-Id:Date; b=aqWnGnbcbqHjmoHw5QmUUa8LN9RMwD7VMWMhgoIU0dZLX/jFs+LIa8/+IvNwE5FZKWukZBr01yEYtioifuwQCXnLIoqei84qCG3nGrd1ZL3catViuWqe1foFN/E8WMuPP9Zr26asix5K1iUDYL4IF7dREJ63olQ+xWYjGqXds/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U45w6jlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U45w6jlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E04BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758442793;
	bh=eQp/4CPcnLoFA2s5kC62HZ7qpLyEc/yIpJTckr4ai5w=;
	h=To:Subject:From:Date:From;
	b=U45w6jlpMSTCSB/S3p80YluWIBwRTolTkNQ+J39bPw9YdHB1dQ0umcqF+ej0WNpf2
	 R3gUxv8S0rMSQtZGe1wkpsBuD8F91yEa+BZ67jz90x60c7+OTiReATPUEArUOJfMBc
	 lx/0kb1qCROoDNluoD1aUhejOg/rvxzD5xYFAq/KVMGEO795d1mvrl342OmBiEkLZX
	 Va1x17A+pvmjUZjB+j/IRE8URGvkgimtZ8MwJMCqDn2Ua582bSRjhyXiBBNYpaqi3j
	 GC9XkI4wGP2/zUeK9VS9EFW8cCizgujWKTILTdsLH3xRj0s4+IEq+xlA308n48HWsl
	 9MV1wlod2KMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90657CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844279358.11836.13691228665144827288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98ea861e2db618d32aec9287376b473bd096fa8bf1c640074259b14d7ddce2e
Date: Sun, 21 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758442793
