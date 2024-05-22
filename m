Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773592F52
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 04:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716352403; cv=none; b=uHy8y3So2KQxsz5Y5w8MqgzVZ4lVQoAc19stpDNXoF2IsRda0zhT227jBs2FvhhCo70bruxiu/P+v6HdPw5Di455n6tkFW32B0BXpUVO57UGBxufEpjLjTwWGkwt3MHCVieupYYDXgsbgYy9XBe9uHZHDCaI+0iEouxDr9yXUnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716352403; c=relaxed/simple;
	bh=C6T2bvIL9UfX0VgoaZzJlfpdv5ZebayiFAhTLGPSWfE=;
	h=To:Subject:From:Message-Id:Date; b=RhlUCW+AssydA5SUJOADDKgKigDIe/Y7ikh9+LJjllhWxqJzwVgZc9vxFsVEkrLiobuJLCRDTiBVQGD8h2ltCIF/oVF1ZFvOZj3+tPlxr/lDugiSVhU0KrmQT9lxzNoxJHPS8k8j5oUzjnQLj2iZ8+WOS2x9b3iVma3iu4XptsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+kfOjOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+kfOjOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC84C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 04:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716352403;
	bh=C6T2bvIL9UfX0VgoaZzJlfpdv5ZebayiFAhTLGPSWfE=;
	h=To:Subject:From:Date:From;
	b=u+kfOjOp5sQ8bvrvTZKtypwaz5FmmGgTKkFUzY4j7s3IVATP2RTyg/x6UoWAhVDRr
	 aCqCW3YWqzMsDgJ0EbsBvXtB/XSa+tW8IIePx/OA/x+b+Wp9skE54tx/cnUHVf1hq2
	 FQzrt0FwPA0HDgLsCqM+O5n3iir25mqM0vNzE75lUzsLc6SODz6vF2e0CMentXtDnl
	 DRknhU34ocFWeuOPVPnBvw4I5uGt98OeyFhs6uhydSdbHoNNYlcjcGBwXXG/bwd6fL
	 d1CE0xnfCFctE58BuVYjwsaJPEeiGXUyhz3SKoQ9SBIS0kgpXyrvZkiOOb55BjLB/s
	 u9wk2EEyQ3n4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27ECC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 04:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635240283.9496.1077318278154800758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d2376e41d2937c7047abd985b05bb6857fb1bef55a29d4e45bb479614e6b9c
Date: Wed, 22 May 2024 04:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716352402
