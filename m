Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6402116F4
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752736194; cv=none; b=Lbdd9Z7QYxymxN9luvTMAu0iuefD4dYxGN9ZpbXWpQX/+f0ubC/Ugaozp7gnD6HYdp3j87f9X7S9MfJ7JZECxQsGhgaUU73vwD8c92lh8YPW6WEOqeYMXdisC2S1cMOvOgpD9sgjqlHG2qlSajGkHATSJYvOrMu+pHWXEJCvoCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752736194; c=relaxed/simple;
	bh=h2Th0Dw7Zuy4WW5riT6XIl45iWImNnhZTKsZgHz2cAE=;
	h=To:Subject:From:Message-Id:Date; b=cNJti8eLxmYbwLMncYgZL/E9pEflT9v5yQfgXUFM/t7JFMBgvrHgWC2yzr8c116Vqm+YHs69HhsQSpFbKSo9JBOhxtU32yJMquswpuLVWNu5IJAxWPooWlYRQYgbdg+Mf98Yeg2DB70T7B0gpc1bnHeUvN80xXuwrPWkTuPcqR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCzN/pxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCzN/pxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FADC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752736193;
	bh=h2Th0Dw7Zuy4WW5riT6XIl45iWImNnhZTKsZgHz2cAE=;
	h=To:Subject:From:Date:From;
	b=dCzN/pxw4kavNZ2Cyw51vdkO9jvhjHl1MBzSEMdeQsz8PCG0CiKN2b9YQeIkvX8m1
	 0CFRh8MmO3KBspaetOBSzm2agwFlw5IjaZ3c7cXvI2K+H1J/p45GHEQGXoO+9cukFG
	 yMwzdDI4onVVmpp9N5rdsApTaueFxSXInSSDeujTUOVQmJu8Gfyr3Q+C20QSy46/v1
	 AfVHJwJdeo5AgMzPaK3/D5mnuUwR5J1e//WXxFl9YWggOfCqYilGrfIBzPFcDY8A5U
	 N+zGesaOzW7UbyBLGQ1kd537RKGfFgfcIDX9XWhpooxwitUDlepiIGsv7scWiJSqYC
	 IOhcqWOaMFoog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2FC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273619358.10524.16199233800023099169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7066138748ca0b68a5cf3c613d2e005fd044ca9da39d2fb5cecd8bfa29199de
Date: Thu, 17 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752736193
