Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5247A357CFA
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790999434; cv=none; b=C8ARJj57ZgHYDyVG8i5Cuvo4ndnmGzodkRWEfPnjyPfXKoMYikmrr05yuNA3audoMlc7NlYpkUa4YRhgGPJ8L7zvcMZNXjzh1iKT79ajb8OtC2p8I14uWh/0mA3TgtFlb8nx5Mn/8GFUkc7hE2dk48QBNM4NLPGC9Ln5D1QttB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790999434; c=relaxed/simple;
	bh=W/GVMUVFf7QNKXJ021QsX2FxaKtuxW1RsS6ELXYPaPc=;
	h=To:Subject:From:Message-Id:Date; b=m9krol7PpBWu2bzXxAuVvHka9lSCE05iBzxR50+L7Me18tQXKEkobuk6aAIiwFxCW5xVTx9XoW3vfoV8SCDiVQbPPPAqdhesp4b/jIVy8kRAzLBKfHsd5Xr408y+SGrnWpCPjujgvvZyFz7Wfv3nfFOPIql1SRXLSc9kbEKgCLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUzsJDnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUzsJDnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3437C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790999433;
	bh=W/GVMUVFf7QNKXJ021QsX2FxaKtuxW1RsS6ELXYPaPc=;
	h=To:Subject:From:Date:From;
	b=IUzsJDnhXQSCkRM6qOgEKX1ISNOddmoWT5bI3gUxbHIYEmJjDH3LF2vL966xZOk4D
	 MbwxegFb7/+ZogzF+a051WWQ1IChJ/nhUEX92Ss6sIGV+7oIPgg7e40Wj52cX3GCQ+
	 G6d4pmJVKf1DY1zEX1ZIIa5P1GJvjmexZRsOwrhqm68Zc848dcc3nw0q5U+v5va/MD
	 yAHXKKAGRSsqX1Y52ceKaRVviGwBpxD/OcCzSPv2mtVgMNZIkMENZIM6j6lpFYd6pX
	 EjyzeOZOjEVZEsw68HSfmtyEbWhhEsZ+0ND3RtUan3ZTyuw7pbIqcj0im8wsgUnMO7
	 /gp0780Mp9sxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0927CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099943368.12194.17881093878071496858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf7f14a2726b38d6eb5c72eb02ce5a5919572edba79084b3748b6eb0b749cde
Date: Sat, 03 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790999433
