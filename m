Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D15629
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717913243; cv=none; b=YVVKZprBQdvfcm6/Li8VUVW7t/SE8ZMfBWzVc6BOTBz2NlrHIphrUu61Q/G73LM4e4uTNbWdCS8vj4YWJt/cP6HOTLxAoWmIPbv75YzZQzJfFyX3Sj2cJuIJMbjxqCa7Fkd2m6L/FSRk9PCVoP9eexpdDoo6kLt4q/lj88Oq9bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717913243; c=relaxed/simple;
	bh=JDsy3YbIQ0hhDsETRhxTRyBxDtqBG67U9ospC2po/u0=;
	h=To:Subject:From:Message-Id:Date; b=LNnEiy8/yIug+Rx6ryFEGbQJxi87z9CoXrXaLUhms4UwdFzjRjuLD+0PUOX5brypAyYExBOGXskBGgvoCWXvyaQApjExBAuJ1pCPMdrPQ5NMddtnfWiBDG3kbXmam32ChEj07G6xuqWgPKBA2B7tThyvgNAnoCLfLe1LllwsKyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcG6kSu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcG6kSu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1839C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717913242;
	bh=JDsy3YbIQ0hhDsETRhxTRyBxDtqBG67U9ospC2po/u0=;
	h=To:Subject:From:Date:From;
	b=hcG6kSu+AbyBAR0RuHHGqSGkrnQp1+CpFdYqU0tcS2PbFYpMZvvdkYd7A1kQU8lz+
	 VriXabhSu6IgOqqledRHpo5ctrSzv+gkn7Ymfx9wwbvNC1sl2g++NX5m8K+ZvgRdTi
	 VZvOlWymjMU8IFTPMhBITUFfjjU/bt9A2t0Fz7jvJKt9QAW2JKvN17BBGix1mzHd0N
	 ZxzuS301wjKUUad3basUaaIWirJgFGOejBj6M8yFTU+9MOFtpngrgJJ1MohiEt8hPL
	 PDuNdaTn4uSEYSo8cFPn10ZcPy+UHO/sv4VfqUn3j+EGRG+XS1yKaZjZob35d2gO2Z
	 l7VUEdS4WKZ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79BEC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791324279.7565.6280214567250177763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31525335c6a4944d3f344f09112862f206a96d2a244b150130eca8c2a1bc02e
Date: Sun, 09 Jun 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717913242
