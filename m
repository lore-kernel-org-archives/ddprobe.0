Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE6027A917
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762891794; cv=none; b=YAtnqMKeGJ+CGTu7ap9X8054jB78qlAIWxZRe7VD56+7dsimcNZrt7RpG5Wpn2hhv4oIVYpjPaOiH1NsnPMnX53rMQYgXco/a2M7AhfGae8rGYz7RG5qikneQKmznv10K07kbQU5Xifd+Kaf1vhLnRr2sx/Tzi+xhQbQRUTkcPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762891794; c=relaxed/simple;
	bh=ydUJ+VaRJH3JynC1Za0QwdBtSVTdb3poQZ4eGaO7alU=;
	h=To:Subject:From:Message-Id:Date; b=QQJ25X+jMBHENUnPNQCWcAFTfAZjwLnvDs1kLlmY1SIYLlvTY8CZOONA6mjFwf+RcgjtLC2wm+NTr40c3Ohb5BE4NwjZEJDupMN+YzV2fteUNPEan7FzsUc6dtxGgtluzpkkzJerN8YUxfNPOpi/ar4GZyMiuS+wFDeNq5c11CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5T9leur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5T9leur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA60C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762891793;
	bh=ydUJ+VaRJH3JynC1Za0QwdBtSVTdb3poQZ4eGaO7alU=;
	h=To:Subject:From:Date:From;
	b=t5T9leurh8fQo9UC/rnDJLsq8CjmjtFEkF8lLDcU2/pSWoWmFnbHOpbQCBN9CjriU
	 Zj1DPyjDL3COjXMkhFLV1s5+dRObXtyJi29F+sMZfFPVSJ+G0KK2yGCT0o/8z95BKA
	 8rkVrGLlsuucBJqZH85k9S1PXEkEP+AmzXGuuvvJv2xSg+fveysmWvwzsLHf3wHpm3
	 cioDaU+P1y+4T5kK6BpJC2o+oZezyUk7KqRFs7Xg/5inI0r55gCOM5s4RVZ0PAvqrS
	 YChXsfj3mEXjKnxYyMnF6NnPN5vKXXfE8yxHNV1IswITshI+l2IUZyrl406uePIqY1
	 5UerXJqBzyrnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F1CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289179358.20550.2264632680489387967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b03b4dff455c2129fb1fbbdc5a7fbbb1bad9659db9942fcb15f9b9d4c4c240e
Date: Tue, 11 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762891793
