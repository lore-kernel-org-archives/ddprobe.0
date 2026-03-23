Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC833AF645
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774277093; cv=none; b=shNIBq/cyxCLkztxAKMPCNAF0k04169qe3wkYs84ujcM8n+Q4vM4naJJ6axp/polcP0hQWp0nO/fFXZZ8S14SUeNK1Ng5PH9l9nnPw4w61Zgj+h8UihPoUfIfNqJs4ZEAXcYfqE9FhK9GoMvMnnQHh2BskghTeGL2s1gNSYUL+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774277093; c=relaxed/simple;
	bh=L+7z8u8BnLHsT7P2tvKlJ4aa2rEyJIQceWooRl3rQsQ=;
	h=To:Subject:From:Message-Id:Date; b=t2QAV64Lx6TfF2zjlLUXMhNZEkNDch36iQ9tXUdfKaGTDib5+Gs0+O35k0WrP5OrK6qG/Gl/6HpcgeOb/hilkf38brFPST3lAUGYz8LVMrVj5zyltm8z1Z9Egt0FjVPg8ZlpSjdE/GlXq5pzTnA6KIEZcWImPYHe6TwLbauPLzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARQzQPJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARQzQPJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4CEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774277093;
	bh=L+7z8u8BnLHsT7P2tvKlJ4aa2rEyJIQceWooRl3rQsQ=;
	h=To:Subject:From:Date:From;
	b=ARQzQPJavhzKLxARBZuPyY+pitJZbFKQbuiEqx6egCsHz85nTInvoTmalTK7Nm5oh
	 0wINrW32AP1og0h3YHWTicazkLDqkuxYOmUOuv5Vcz031Vu+8j/VpJsxNLAc5kE7jO
	 iDc4M1LvwisQTE7P3J1h3Ks2g2QftXTSVTasBpDmMiw02zS0IkceTnR/QDDFZT1jg5
	 axXEF54l3Vq6cDyC6Vln0ERo1RwDerfBAsTWL4sRVbAjtnRVej+wiecNKk6GJueKoE
	 Zh0Qv8k6keiMJzquGC8wJ30wKi7SZXObp/hC2jPbr7fqReEalFfyJzhKNwwDLv8dL/
	 jJc4SBGU7fuyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CDBF46132
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427709365.32311.13649499028018205452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dca28c3c8e3d900ee9c77b6f130fa066e29c27048c82d6c616f83837f93523f
Date: Mon, 23 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774277093
