Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B413E3DAB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788816034; cv=none; b=kSTzYmw991bjP+RmXSpOQNXoiPqYP+qqveX9UJn2XI1jsWw0ZkdwzdYDotfTTIEpJ6J9Aex3E7dMCO61fSXM8bZTcXJJx0pSY3L0Jg3tYNKW/apbfoQq7ZEc7FT6vV8VARTMZ2zVUIHcQ/QP6nedWYCZgvNSK9VqJDRP5sjlDOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788816034; c=relaxed/simple;
	bh=tjUExWxTs1nPwNxjVxZpKxTFbAH46cXeD+AoRnfPV7E=;
	h=To:Subject:From:Message-Id:Date; b=g6ZskpUcWIQ+jJopt1k10PMjKeIpRFXIWTQavRMjXNiZ8dtDz5VYLxC+QWYhAx3ePaWGCeFEddmm1F4I/5fT3SZubuFeFvYz5MSAqpE0TiifCD/raUI7nnfCZv/rLYiCnQCV+jA5P38JMWGFUPpRD+q3+k4xcAzsAYE9PFbRElI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJKGVXqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJKGVXqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C9EC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788816033;
	bh=tjUExWxTs1nPwNxjVxZpKxTFbAH46cXeD+AoRnfPV7E=;
	h=To:Subject:From:Date:From;
	b=JJKGVXqxkdbPDbpf2S24Q0VMiAfoLTEJbfpGaILFJsuuI4mlIB3rkIoBV1qoZflik
	 x0E9TBBsyAXCscURYc+hevU7Hg26PJZyBJW5FpAVQgV/t4zdTljEGIhXNN/e+TmFiT
	 w/726aE7Kb7LhU4YP6bTAQLbzlFp9XAOJMhRaZ603aVPsFqiOLj1QVmZn40SLFgrEZ
	 kF+FPXOEp37LTr7NPlfpx827ItMNEP9LXjgjEr1qge2xa45avzw2EX/6i10JWNyDxC
	 cFWiTf6iTCBNgShCbcC7yDs2gk1nTWh51AzltpX31SHgWkUbQCy8bKP/Xh6pweJWiL
	 A/81KHKgF9GKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F12C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881603371.29912.13790371649477786350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a4fc233c8014dc2c703628e57ad85856bf78b521ef93194304e7ffa22a8d12
Date: Mon, 07 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788816033
