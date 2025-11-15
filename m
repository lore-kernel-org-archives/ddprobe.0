Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AF035CBC3
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763211594; cv=none; b=oM15FvmcdAud7mLOdq2CGAiIYcUGRRhRzIJY0qB7oK4h9/kEexpVFGNIQVOSCUjupRcCKtj4WWX548TqoBaFvgUwqi7AMW02Wx5SbP4AL/kCmutJQXBg9PBq2l44sGV7MNAsX6ctqjBAFK8BCLu/9wRrCxsgXQZ0CKg7XwFhqe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763211594; c=relaxed/simple;
	bh=QTwMdzFdORzpJBcqh/hsTNBNKDXA2pmLjJYWCEBufM4=;
	h=To:Subject:From:Message-Id:Date; b=D9mxLtsnsezOwXBXtjb9JTB1QFTqOopTtQ2kTZfVNcEYIHz21bmMhIMPNNrmiRP7rksjAvUeyFq9fLEvcbgWJ07Qb/sgTsDtEW7lV5i2eV529dwUuHH35SekfhgQbWNmDW1skbsqhwrmQH4v6ke+DkgDSDlVjRfLYBYtJOvL+ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn8xtlRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn8xtlRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9A6C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763211593;
	bh=QTwMdzFdORzpJBcqh/hsTNBNKDXA2pmLjJYWCEBufM4=;
	h=To:Subject:From:Date:From;
	b=kn8xtlRBN7y8utbN7UAVmV6KpXIDxXCkedrGehaGFS/flSq1j/YDadrmLROeLOwCn
	 /7+25tP0rAJGQcUAaP3kQXVyuOxFk58o23syxe6q0DT55lA/MMaPURaiOyf5gApwkZ
	 678hLA0vhYmixob/lh5lZNJV4Jq577BoFjR8tZBTnwwGZgjDbifBs+uZnnr7wyP0v6
	 MpCniCLMF+JLYEh9aQZ2H87VmGNDF/JBM4dklK1/cSGl6O9ME/BFS9OXa0iGFzThux
	 Utzt9MYcnj1Xoc/WXSw93Rr3sNmgylg+lQbHpA7aMf0D/zJmGoQd4uy3GBWb1hFyLr
	 I8M4CjB12uMxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E2CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321159359.23357.1251245773001337119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a00065d55bed8d420f89cec26c72d6fbae2c1a1f01f707e5baeff976549ab7
Date: Sat, 15 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763211593
