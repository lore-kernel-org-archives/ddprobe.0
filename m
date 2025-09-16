Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D030F374271
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758039593; cv=none; b=JJBh+sOU1wyTuuEish6KOvJFVuUDAhvOyRBqnpWQqaBt0OQy7S7GMfD7gs+TriOvuvW4neL392D/R6dLDQH5tUsBUuII7qSUIegz9LCa19WpCSWE3Z3XffzofLpPVrNdmktYjG9AhFxx4QRXI/Luo+vVVjXkwwdIhSU6ZB5qBIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758039593; c=relaxed/simple;
	bh=DvgQ7FA7PxegsxcDSxtPHGkZNC6WATrR082T51lyZK8=;
	h=To:Subject:From:Message-Id:Date; b=KmILAlQMYl7oMzogq0wKUHgHRNg8OXYjFWdus71e0/qtvySE6jYI/2q4nNJwpB2oaq81keK4l2fPSiTA6AfjF5OQsmsjNQFOWEODWLGpJLjGy7xFnKdeyRbrghevz90XR0bXuNDpatR/Cx8oHPDkcTYpttqPnndoIQCoseUD1bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ftw5THbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftw5THbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2ABC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758039593;
	bh=DvgQ7FA7PxegsxcDSxtPHGkZNC6WATrR082T51lyZK8=;
	h=To:Subject:From:Date:From;
	b=Ftw5THbH5hpNi1xKYTirJJYynlwnZUblwvtIpoCQBtkRfmHkNLRfqpBtWd+sW14f+
	 ugjM/i0Suz++JXOp/myXYGWczqTCeJf7LtnjtLQBMJP94lHVJxfNmeakB2fJ0w7cqA
	 WvdVPuLeHKdESHdNLt9XSV0F2MEy5H09qRLa1t1G/OKYDTckcVWZ5dK043pErP6+fb
	 NZRqUNU3ml/LjMKyj6FpwT4v69AzRNWSJRfSugFYRIDi2OJxuNiFw7FoUhARkRBwhY
	 zG3sohSLwxFyV2MbAcXuFwr3g6fQj81UVcbhTVGgstFVLxzFJRhzAEWmVrkD7uj3xA
	 u5aKvhgGiZ8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75FCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803959357.21167.2090839028526856254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f8dda6d8e0155e34ee91ce4811ce10e660f912eb0f6ea956197cdcbc5dcc9a
Date: Tue, 16 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758039593
