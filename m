Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC25171E76
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732096554; cv=none; b=SY5JMtXXNJQPPg5596aCLoAXUcGzfPhepU+TN6qW75vclp63wiLdS70tw+DY0der0UvgG+/Rv/avuDcDxL+ke1H12IKuCNIpYSKM8vW6/HBexmnO0Df335E1DnYVDkZxexOPiVqTE+F45kN7hg3pk8MNdnuix5digmIUpcnXBXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732096554; c=relaxed/simple;
	bh=3C6fLHML9e02NAMpPTx143J0iX0/jnJ0tpZHoKi9hHw=;
	h=To:Subject:From:Message-Id:Date; b=ZRs9vCE+VajZ/zQo7S99GYSXqQtQZNZT3TYcg2NqP7SZU5SX3w2cjw9n67D81pKBkUYaX3wTgbhgMARB5ZnCEUyYI1imSIuS+9ENJN1Af+5JETULT3xqVFNHglIi2hHBgwhbppiqu+0DZcGiNAz+Ckn7yf9zIs6+htd1OkOFeZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH5SHM5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH5SHM5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A1BC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732096553;
	bh=3C6fLHML9e02NAMpPTx143J0iX0/jnJ0tpZHoKi9hHw=;
	h=To:Subject:From:Date:From;
	b=EH5SHM5uRQUf98O6I/gk9/tGm1obI3S4KEkH6qR32Xceg6K457Jl0YftgqQtuXnNm
	 shWGjr/MKsRiT2dRjVGMWRjx/w4mZfUwEN0BCqGB+5n6jnFH/hnL7Wz/xeL6UT3K4t
	 pIchSZRiEAXzPLrzG96kx4aiQI/bkidNt5EjJjvXb8BMpNkmDPozjBjkm4CjvgtRFq
	 BSmiKEETuHDTgryB7CMznFo/vJar3j2qtI4u24HajVunduNl8n9Ra53YQl/KMPJBS8
	 aolfYM+55zM5DXTepQF/Lyi/IgWJsaQ1cqyx4KcyP9EgSm+9NiUkpk5dcZk14luwgk
	 85Iv/AizvQuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E40D44171
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209655359.20097.15844488512701703197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41210c422f1e53f2b9a5e2e2e9332b22f30db923194995601b318a5de370b2ac
Date: Wed, 20 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732096553
