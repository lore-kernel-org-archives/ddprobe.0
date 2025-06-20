Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F771E515
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750426795; cv=none; b=DEwHvy4MZ2UB/KTxslUrapIHOfgreDyJwNVDP4iBznVi0pCIhocNy/P3tmDCqFXaIyyKOpsO7DLTky9yU61Hwy0Ru9xh/7E6ZDJJfs8dKEqma0syvcL98QgoOG3yWEECYAkzeTnGiLY9K1Im39GxpgSRv3toSETDswoeu+7USeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750426795; c=relaxed/simple;
	bh=GZZBFNrUQiKFcIKdwzlkprGmNNd8BK/1PqIRZo+QNME=;
	h=To:Subject:From:Message-Id:Date; b=byxesnSyFJINiUhFw0m6bl0fN3K4kbNWJE14PXxa5JLqpCKvVhcehcYbnyiF2++GgQswgoZI+130M4Wcl/NzpWsKzPdI90j1UKqxWjai7lzhbdwCBjo3JjJQNVKHRgXQjxomA0sKNP+gA+lFZUdbEyrY4n4gHS0ZyBrGnqcpF3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BR36H/wM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BR36H/wM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750426793;
	bh=GZZBFNrUQiKFcIKdwzlkprGmNNd8BK/1PqIRZo+QNME=;
	h=To:Subject:From:Date:From;
	b=BR36H/wMNyJjXcpzDRJ1nImcALDJb7MGvwgqj8hTXcysy1MO0MkrcTpq8q+comL6+
	 e0wv8A2MM1aXgU8z3dzNKgPuW/DScCVLgEi6xB2rvnztWuXXN7UMeJ7vfar5UWmOp7
	 dM+27oF781ccbpcVTlm0H9gkxtZntOXyusZJL/dg1/D+Hlr65/dug7spbkrnsbr7hn
	 V8di+oGKe70lb3XkwKYhZxNJRVeIFnvyHJN+uqEkIlHtCPCyyw8A7iP5WXAwtbG+Cs
	 P7YfjEKdwjJpq42aZXSlioCkJDw8ATpZTLuRPNSLtJtuw9HVVP9mboLY39vpj9YsMN
	 NTFZbdU60YwMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6AC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042679357.3311.9922159807899420406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10620c29a97876d465dea7aed279fc04ca75691f3c3636faa51697a64a58413b
Date: Fri, 20 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750426793
