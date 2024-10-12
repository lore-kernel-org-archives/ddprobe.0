Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385EB139D
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728705954; cv=none; b=XOCVpIy/pbOshXfNkTpriHlyb1bDK1DqoOwO+H4LfBMgHBlerxek/9qPgi/7mvE/e4Y2QmZ+LP3MQLDzXj446djOcXhWciOoY65DR2M+qE3yFILj9GYyRAOwo8HYpqoFtuq/3ojEBTLZU08O53ac1PLSOPGsDnPr78BrqKC5r08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728705954; c=relaxed/simple;
	bh=BUwNHlhed/c+poydjFSZP/ozEXC7/I28vK70OUU5m7A=;
	h=To:Subject:From:Message-Id:Date; b=oCiba4/dNVZVAWsWWCrGt/c24Ug/WUIYqYT7KQP+59OFakAkb5RvO9VGRKfxjH3SNF4QpnDMEvvE6C5yYVDdHcpy/wRLjtxjaIe7dW+cvWpzVPIdGI9S3TGoDzJmVfMNtlVTQDDTP+q70s28n6rxyEE/tGarQawGh9NfZKYjkzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLBQ0ZK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLBQ0ZK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACC4C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728705953;
	bh=BUwNHlhed/c+poydjFSZP/ozEXC7/I28vK70OUU5m7A=;
	h=To:Subject:From:Date:From;
	b=bLBQ0ZK03SIvTKWW+gRHCPLL3DP2ynbz+i1xpXoRrm7CM2Y4RVFi9+Dqo0izG3+bt
	 crMxtJ7BU/mwvn6aUg4TbD7oiuP57h8ZpKlGNebrhHsebot50dxJKtD019INlyq97k
	 0/V5H8zos5QkiDgAyAPwmo8ExTx8mJ/2WtQwyRAlG74ErqvHhJ8rO+3FdHPlaXEdR3
	 whHv84CdmGXK1u8CtcTAOKJBeRfzlpW9ZKfgCrQbS6LRwgug89z1ZO387K+at/Cpax
	 /onT5FQrvWQtNnBTmodiah2rzCtHKKcqjsOV8bE9ugUY50VOfqvu2YsABny215l5kn
	 oy7wB+8i9MnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9645ED1A42F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870595360.23278.12380796692262099229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b7c83abad6ede3818462bcec1e781b52e9856e5594de33d5f0c4b6e054706e
Date: Sat, 12 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728705953
