Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EF0284678
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753212594; cv=none; b=OJbVNeOQ3NzNyqEAfFK9CJ1KI4DU3XwTC2LLomd+6JgPKkloy0eUu8AJzbFSkxjEGqgm6zOKw4IR4ebKx8nDElXIYnHEVKILC/ljY1PlMymr4lOLEWAeakSlecNxJTSqQylGvC1A3g9mPu4gjLDMIuQaVfYpYIO39dcDNpuIMpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753212594; c=relaxed/simple;
	bh=+b/3otzXI6nnb1mSjJWlqbBJKkco/3lQHdn/4RnnyS8=;
	h=To:Subject:From:Message-Id:Date; b=EFTOhdpxwZxBchMQUw46cmQ41VB+fwi/LceGSKReW8MllIcEEFws04oJHfcuhwprMpOKolO+P4jhD+bECxPCH3ltKKkOglJqqAKLAMfcOArgcz4//J1oWo1LeSYzt1zKKZEBkQ8Sy34aQWR8TqymzuKviv4qRCcxAfl6p3Y5au8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqwTBUeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqwTBUeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0446C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753212593;
	bh=+b/3otzXI6nnb1mSjJWlqbBJKkco/3lQHdn/4RnnyS8=;
	h=To:Subject:From:Date:From;
	b=ZqwTBUeu5OYL/WgAXd0jBsH0kfbtVFyP6UIwnZXrnvgSKNCnO7gf5bG6WpMEtrZcf
	 qYNHtbNKNpbq1TV6AMuh5pADanq6cGm1WJJzgKOuICA0tToxRpDOlTYJdAZ2tOkTLZ
	 eEmujsVPaOmNOHIgfneP4Nscq+QOXTPP8l7Q/DyBXVx+mUfPyNaW11N77/qU9CDwOY
	 tUQqwkxTfbNXi5+Nn0LrUIecPKfm5kUiSb0h1QROZmertIUNYxsM69y73jcINGCb6r
	 3u9kSdZvj1d8BjaLz3NoMV7W9EHnCLdXYgjWFf4BAcu1x2d+uTkxcu7s4tltzkcJL2
	 FYxU3Ea08PdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5FC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321259358.31917.4468466988593364287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215202abb50a458f252ada67c68cd20e6862123a40f7f75d5bf1859964f5d205
Date: Tue, 22 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753212593
