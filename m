Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFA64A2D
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731734154; cv=none; b=SSXeETWOVj7pfPprVY6ZyiugMcUnQ15LNUSlOxPcz7Cdjog9Hkms1Ao0jxK4J30G8Ebss/Sx72e0Z8nMfFjD8imFFfIpnyBD+DtTFI6Ub71E9MEWaczwrpskWsZ7ECSuUn/BgYpYfBNtQD5Bzg4ds71RSpBHufP0PY58Xl4h4S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731734154; c=relaxed/simple;
	bh=SbP5uVf/+5z95wYkH+Uj6Fgpaco9AuRrzBf8BzWKbbM=;
	h=To:Subject:From:Message-Id:Date; b=OF2NXH5cGqgo1bHjk9BBhBxNO/kiPUVldzYh/iywuzRe4LFzCX4eOpNvOUKbUBRftyRST/VvM0K7W9fmqUrOYnMeOa0ImLrdpjb344PJlxF8xBNrw65nfhc467sey4SvOgGAvukO3L8G/u3lBwDCXwPPkeFM3Kb871JXrgyPy7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Od06aH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Od06aH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B2BC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731734153;
	bh=SbP5uVf/+5z95wYkH+Uj6Fgpaco9AuRrzBf8BzWKbbM=;
	h=To:Subject:From:Date:From;
	b=U8Od06aH8uJevmmitFXxjgc09cTnroUca/rEGrblIb4pNM8gNywYaAAYdYAqLM3a1
	 LjHdMlBjJeZFTcAvAYj7mmnq7jXULiZ/+o9H6oyNEn7zb0cUTAZpmGl8MFAMGPwyBr
	 Qlqv+fZuoqowGzVurdNhu9JqCMGH/d8BLRsOJ1PityS7W5QgctODKdi6w6mAPABh9V
	 NtPiq+itqWmn8JwjNH4sR7Fcxf5WN/BgJWYxjbGwjKPhSmFOpYhdVb0vuDOAuF96y6
	 nn9SfD7yKxQyazraZ3/fakJFALDVHWgzPribM/r1YY2FiMquAW4Hmi/qrXXH2FhgsQ
	 l7wFE9Ml1QP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52CED68BE1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173415363.29617.15583808493826494290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fecf378943eb8773322d887da140d516702acd16884f5261a4ef97a6d062bb9
Date: Sat, 16 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731734153
