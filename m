Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7FD1D416B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728045354; cv=none; b=D0ua4AYGZFNmHc7SVJPZWbrRVztJtjKaWK85NpxKQk6L0aJij1P4RuyFeFwp6cwkiAq1GAMscMV2ES6EtzUw6WYAJXjWzy+LvSn0a0THiz6wr7niE5tlcKfqMJmOIkFqJPVwd2NCunZXYRirFhOxkiKZteyEFLLI1zieBZthxbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728045354; c=relaxed/simple;
	bh=gDWV3VHdlM+KpH97nvgg0OCaAsGxVSo2+Xal7mvXTyo=;
	h=To:Subject:From:Message-Id:Date; b=LYeWYRItdRUS3WRPhGszeum3b41jlppO7UjT8o6z8f8P3fOGhLp0jGXOPMfRHmCm3O95CuO4PJahEl9KZVVmSRIFAhorLMHuc/vFdoPv2WdiEuLQHNyKDiZhReUyhFiKnWcNxtWJIBuIdAVuiW7SoFG7rgaJlsBnZtUUrEFAXSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9vYjSiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9vYjSiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD673C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728045353;
	bh=gDWV3VHdlM+KpH97nvgg0OCaAsGxVSo2+Xal7mvXTyo=;
	h=To:Subject:From:Date:From;
	b=b9vYjSiCCuLMPDZkYoNbL1nvp7AZRMcyfedC/DjjXYhuoR13R4W2y6mYyNJ4MVesG
	 D2Lt+E2vsuVDEMXb4b5HRm6I7/UHRqJ3amyFavtkr3NbkK3yjSy/8Pl/rPfpo2XWxC
	 rj5jKl72lvcaYpx4Ez6iFOw02kkpft66+4+YQlpmi7uzqsz3rfbGVddzuxjjKbOrSh
	 AHtXBEifItdWSA8qhrEmK9pQ9WVRLPjssP96uWBMDVUjdHg3IszK0N7I+a1ooNe2PF
	 tbACRB9BqVNQPwF6YBMnbs8cQ15JlpoXkWCiSOiyRiuPRLu8CWAuiF2O3gB5YbswHz
	 vw5UuRvTQZDWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C76CFA773
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804535360.11230.16288369396613256058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b790ac7cb4bc20ce74bc199dae2dc127b11d8486f3c7ace0bbfa2976d643300d
Date: Fri, 04 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728045353
