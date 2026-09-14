Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE81B35674E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789365034; cv=none; b=jWcUAhETGpiatXtj78cyhgXVcCgR4ULQe98BA6SXQsjtzyRzWDrcnEsTjv2bBUixfBb3efUb1B/3vXWR6u1LTomj0nxMaN92xDn92hin9ap+C/+6mmXyZQVQOps2Ti7c8aL9AfePh1pEeKxaJ6yfJxix4SLrZSU+unnaK2AVFX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789365034; c=relaxed/simple;
	bh=+ZyAIvc9dBEx+IIiBSazQShK+5i5+qJWQVdzZHfvnSw=;
	h=To:Subject:From:Message-Id:Date; b=d9IaMeZPz75Ul+Nb4BDUYpEUhz3NolRdfrnzC7Uo/WFB3mA4T8B4zm02iupqtkUSGwhANeArQCD7kGbsRQENWlmrimvS4k44SFFglgui1D5gEwMd5dPSoKKL5k9Qp6TSgqFRjzLJcD4avJ6lOQ1yiYhvX7SI96TxkzoMG6bWCLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNZq+lga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNZq+lga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4894C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789365033;
	bh=+ZyAIvc9dBEx+IIiBSazQShK+5i5+qJWQVdzZHfvnSw=;
	h=To:Subject:From:Date:From;
	b=aNZq+lgaHC0djJMx3QaUxncrorNIHDp1i3Wq9Ie+H5yx8M6EcLZVizw/ehmbCxNU+
	 aGP+Vskw3TqBlvrFfoOmZztIEn2xRhVhClvw9XN3skPqokIVhQajqISlUC3mcXfMAO
	 FSKRs5ZXTW5FtatlyR2JGvDqSgG+n8zHl6L0K3uH4D8vJ8KZNYKygJ/jk8FDFgMKWs
	 FIQVxaifs0qeGXSKkxjc07Dzpcy6L9HXYN9wchnGYFlkeiJ49AMn5VosQgydxDennC
	 /N0Qf78gaO5vOgSRgpEIxWXVIYh4kVbbcnaha7X08JBGMouNUvb9Xc/NuGp0C/Jyld
	 Ec5HmKu/MIiRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B7C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936503371.4764.15443827066465126840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681e041b7a1db4f3f2a2dbd6abc3013b0b213be0feade925121a29fa15a5f247
Date: Mon, 14 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789365033
