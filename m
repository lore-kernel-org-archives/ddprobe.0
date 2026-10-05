Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D5E2DCF61
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791220834; cv=none; b=jqMHR9S/xFw/EFPyGu0gHtVHmvViNdEVUw5OTWKiCPuNiqfhkPR8yZIrIS6DKPDJvfAatLQBKHGvshOpC79I3BKoXH5+BKjk57RCb45G0A7wM/tKDQGMDLkEGSflRX2wRDzy1QzFqPDiVQFtJOLFqfGD943rrpt3k/IVlGlEIzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791220834; c=relaxed/simple;
	bh=HYTscA5RrBlzyz5LiWiE1AWI53YhnAUdcvaEEPw8nUk=;
	h=To:Subject:From:Message-Id:Date; b=TGtS2JfV7pl9YzvxGYzsJTTGURGWHXe3UvVKD/xjuXEq0GtksM2oFXo5Y6uJCTe1XED7eoBL+7ygUz1tB4A99owSeZZdMmYSSAkvU2lNSmDlFCSgYlcexlIjLtJu9+JFt+PC/0oq7gZl7LiFr18prwwobIR5ue6e6jg2Wug+C18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNWLzt8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNWLzt8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0436C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791220833;
	bh=HYTscA5RrBlzyz5LiWiE1AWI53YhnAUdcvaEEPw8nUk=;
	h=To:Subject:From:Date:From;
	b=LNWLzt8EkCiCE3cRWEmz4ky05cGYqafUGS/+WiDkePfa2MlmAiJ2E8xDceZAVtNYa
	 f6rKDvPYZ4ImrpsFQQ84iv7ouCI7XQbiiLcF6BhGrTkvxSTGgYLL1iVMygwaGRfQd5
	 ivrgxhTO/Ohwgubk0VFPIV9EvP/CSi67FM2LjY8REHqdQ2UB31qsm7wji7RevRAUJ5
	 cjiqra5pNaoxI6UI9uUNu2ZGf82qFrnHQcoL4IBKxTSIuSYCJJTU73L/zBpqTR73l0
	 GRlyfq+IFbU9RTLkPJZrxG5FJ1biQymATi4j9wz8/5cXk/hPeVZhe9AgLjixUsVsi/
	 o1SbbyynTczMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC201CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122083369.22453.4524321919799604139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935b4fa58c7d8252777f414e7fb89ff7711aff39ba5169518af17c0e771cdaec
Date: Mon, 05 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791220833
