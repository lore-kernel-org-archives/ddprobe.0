Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563DE22092
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719804263; cv=none; b=HPba/4H7jO3nNxmZWXLD4T57baMaMHhFLYJJuWH3BfQmgEOXAxM4PT/1ZaYygegukd7n1lcFalCJdB32qrEY2n3cjzJEvtw7G5Ks1LCqOGeWVnOiuaGOCwiCpfpN2c8nbvWl5wA4V0d7NnT+Ngrl9SlcIri+3ogbunUJcRHYw1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719804263; c=relaxed/simple;
	bh=YCmO+t3WV5VWmvx4zunORcnbOztonYlh4SVttU4qb1Q=;
	h=To:Subject:From:Message-Id:Date; b=USOUFy0CIKh1F97lKzZEGiTVA5Vjkbqjym71cuBhcEYFiwjpPm2UWJcDsPXjqgK+Wb6z3NSrVJxLAzkKWykiu1BV6UTHTaohnARWKGQqdGkKiWLrLC+9fIKgpaQ9UBHERqvTxdm+xsRekmOHyxYwTwybPuehLAJH4EFT+JZ3e3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRyiLXmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRyiLXmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CF4C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719804262;
	bh=YCmO+t3WV5VWmvx4zunORcnbOztonYlh4SVttU4qb1Q=;
	h=To:Subject:From:Date:From;
	b=GRyiLXmt2a1nnSkJ881JbvZcV4PvrDUrYNZO6ZAB0RiUW+RNtpEiRPBJyH1E8OLKM
	 /SrkMHMnQm/Qc8k/4Vd/CLwG/FNX9zuwb00YhQtO2WOC20pzGKNvIIfnGh/XIPCC4k
	 rg/baOZLE63TH7uP1J1RwRcrCmuKAuVa4w/r6+trqaAlFcNbrTHZeiPOuItJm9Uk35
	 3rwBBt/QUHBpCzJ2Ux0A2p3tqQvoFQ549lj8L10dMQs6gRw6Iz3FEW+i+r9fNZPYhz
	 XXZFxLWBOM9klJm5+VQWh9TEVuAavZ4IltQJyXLmo/BO2KKaxhP3y7xXmBAmE0MmLM
	 DKSvSUqbHrVrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4D1C3064D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980426275.15464.15690643504574244426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7aa442dec532cf3984c1898f52939634eeb514241bd752d4b994ead90bcb27
Date: Mon, 01 Jul 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719804262
