Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFB186345
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737728153; cv=none; b=CIDpJ460IB1SC+jO/zvxzWOqG8zhva9SD8Gr6gS33wegO/kgUmJ0iJ/L8WPdG3DUBnqVMoju2Cmmylxr74M54dEKJtAgfKQHIcFjn6T05inFxisPTb5h0AifKa1c/pwy3A2w/DFlY9Bxzkc1vXBzZJUBbGX8/VT4Qbv8xkAiU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737728153; c=relaxed/simple;
	bh=1iW8ZvbiQR5OIogw2NVNZxJkMpP+6z3tIfJRXICEtdU=;
	h=To:Subject:From:Message-Id:Date; b=K4flG33lKkF5/hg0Zeg11nSb+gRM8Nd/Gj8b2V1zfxVFCjmh9qFnus4VIqLtpRkBEzLsOhozcbzdV8Q8wukdrAPU7OHlSDvJMv80fUhzQdg5QUcZtbtoj40sQDmeS5QPRtaI3Om3tkvQc3FpIdc1pO/kb+PaGIAUMjxGQMcVQqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+ok2BI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+ok2BI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91F5C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737728153;
	bh=1iW8ZvbiQR5OIogw2NVNZxJkMpP+6z3tIfJRXICEtdU=;
	h=To:Subject:From:Date:From;
	b=l+ok2BI4oyRkjlm/3WO5ThqJdxyWT9uM4+fnlRxl/C2+2aJVP0mAoZc2Yymu19eD1
	 ZrRobcxkhIvb1jwn1Zx5Ya2Bn88r9uEfJi4XWJ85yV2FlYjO6BuGqKCkWvj5PTPkff
	 W2/9JE+qVRsW3r4bMlOp6Y46Khzv6ZR1jLsfgVXJndHuUfypWPJ6+ZfM6Cf1WU1fJm
	 ANuBQTBZES9cN8lw6XhQVqrswkCYo38V/utpemUbDKyKGiWlx+G7Kt8AwmYR6JEyCF
	 /UhhdMCLXxtPgMq6kvxQaTWyjVC6dSyxMxq5a8DsjXc06IUpy8VFgyofL7xSKOY+94
	 RgX3gfa5olWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DF9C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772815367.22682.14560657740868002554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c820fc15089dbced6f1c7accbe339b1139b97d236a17ea330973391d4fc6a109
Date: Fri, 24 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737728153
