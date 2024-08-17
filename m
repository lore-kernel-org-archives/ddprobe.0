Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2800042042
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723863954; cv=none; b=QsLWCAaUYGNf9dG0pCsKCWfAGX5IHlPuKtrZ82e8mnaEmfyMKMr6tukuTf4xYvakqKn/K4m4OmrTnlwUUdVMl/U4n5drEK9/EoKPGseosfJD9a9S8/0iJq/o0Gg/J9B6GzMj84hEu1aPkY+VwArPTHqQQJstfoNaK2oG7oy6Kho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723863954; c=relaxed/simple;
	bh=juQ/bOLqBk7TpScdsln4PcJ9F08VlRAhot1RzW20xLs=;
	h=To:Subject:From:Message-Id:Date; b=sMbRB6S4Fk8cUVE/jOhT7WkPl9p7Xco3fYCqwOuKq4h2lxNVvV9pfWAzekTeXutFnq+2sZlqJACC3w6eudubt6WMO60FZruYhSzdvakU1Z3mvQkeIHJA8Z780i/TjpN1VcHbyudkCTI7Sj+2048ileskk0eupHiJ/kj8s5HHQ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T117IrO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T117IrO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B9BC32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723863953;
	bh=juQ/bOLqBk7TpScdsln4PcJ9F08VlRAhot1RzW20xLs=;
	h=To:Subject:From:Date:From;
	b=T117IrO965OR09GlqXfqMBGyXfWnu3CP8pptd4Lj8NSXuvLfEjDwM018wRXkenAdx
	 zYMb3VnAgEcNJaN5wVtbIY2LDlIwOpYTj2IKohx8Gq0s6A3SftodV02tf0XukVu+no
	 YXtMCnzWXpSmCco3THN4yKho1RTSsaaKm+lqA/qJIAupBUoNgenu3HF7pGTHACpe7Z
	 L9MC55mDjq8P+bz5xL8Q5/oWZGvCW2CnOnFQg/gbwu5E49NoCWt6VtoRp8a/YzzG2F
	 Yg70HCKj+YWAUrpGQM++gDytjYclrjZFHr3mXbCO7MaCHTgWcpqHI5EHGlvh2i7l0+
	 1Wp8XiDEe/Mdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F808C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172386395362.25641.1446321648906081830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78282bcb5ff98ef7b1bba773f8e31c8c0c448b77f8fa78a6b24c4d7c19b0b00
Date: Sat, 17 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723863953
