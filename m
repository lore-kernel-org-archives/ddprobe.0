Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366B713635C
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759463994; cv=none; b=Q/HJux3/sWKz2ge8ltNeeh45ICif9UKNsbv8PCIou1+2UIL4IttqwOuhCEkb/ztK+uT7QLNOI6viJTyiLlM7aB2KVpo0u9WYXnUMf+aBRdif8CeMB9XDknGg4Gda0tnG+RhU9KDKLK8zEHU/RO1jcAYW960iSVV9rtF+TZj21TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759463994; c=relaxed/simple;
	bh=aOtK0LnaSt57CHoCS/M0gEsIPl89UUCguMtUPkSK13w=;
	h=To:Subject:From:Message-Id:Date; b=KuAcjOpRmZpkY550x8MY1yooW5PY+PN88h9KKmbSUJRM6AstWUE+vD6HAIdWvbPByWQ91B79Eq+G46Rjl8qlFroVNy3lBsfo8/CgrZVj/EwokxqAFCiR39foPpOE78dThriAWlY7sUbTUkY3hAG5zzZsckE9Nb1nf5YchANZTIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNoSKvOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNoSKvOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F866C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759463993;
	bh=aOtK0LnaSt57CHoCS/M0gEsIPl89UUCguMtUPkSK13w=;
	h=To:Subject:From:Date:From;
	b=DNoSKvOOta9JUiZFXqtRNYR0zdp++RLg5u3PG9H8qbqISs8/4+D3jo79XqIOXmZtX
	 VoqTM11VSLx/ZfloCIinoKAT4Xeq2FiubEhzmJQE0WtyGCPUluZcsHtlSpZ13k6JhM
	 Ea8bGkG9GBvYA2Pg1ggKyYwrf+cplQpeOgYwdLBB+3YJrtRhfj3LnmwyQ3QXzNvdcj
	 sBcOQzuoTQxuPgqmbPjPpqjMueliiekfq4chA5Ti0mBNpfasYWpIOLLZtCr5gYXpfV
	 pUkgK+n9Qg7JFQ6l4pcrqYev5emOKMxPRn3i/FINq5yUb+hltl1RFIj7+5wc2/Fmhl
	 2pmLHN2bJq3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1FCCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946399358.10835.10255566017645599885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83eea39f0332bccf6582801cd70097e1be1f490a6652f79ea18d2cd51b4afb2
Date: Fri, 03 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759463993
