Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDF4222585
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772660094; cv=none; b=hXLllPVSLlsh3VbF+wjNo1v8Lw+DML+U5pK7W71rge77xlyU+/DSAo4BuF2MuEarZqooiH8v7bafuSmhv+AGklC7txt3xgIIK0CYgxCAiyVIuTEoNtCybPEJhzvqQ5T4pbW/g4/hocNJtwqh4Zdw4aX1KQ4r1URYWu1Lu3yWEMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772660094; c=relaxed/simple;
	bh=rIqGWTHI5Qre3ZV4/+R9DF2JAn6ECg+3hPBxeSrbzPo=;
	h=To:Subject:From:Message-Id:Date; b=cb++CAtPRRLpz2cr+cbyaoD8xmVjLsG2akBltwi7k9k2dn7dM1WYEczddAn1KAODHkzbz04NIjpEPuy0k+3gyS4TsUPDXjkpeGKxDr5E2Roxs8yUoErpACIpb2vYl/hZui9HdSKT1IEEJGZyp3cYc4du9m8eNbjrkYQGiK2EpkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqlIxOXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqlIxOXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0764C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772660093;
	bh=rIqGWTHI5Qre3ZV4/+R9DF2JAn6ECg+3hPBxeSrbzPo=;
	h=To:Subject:From:Date:From;
	b=fqlIxOXIv6riBHu6zTU+ozZYDzb/jU9SEkCHPocFG/iuhj9fZ8mBA4FCFClN6txxJ
	 /KNgzY8Q2vZt5YzOPYnlu9+hzT2CZgeGpyrpOiyzypizwn5wzozP1YMXezAomFrst/
	 ND68i2D+OwcR/RNvNFr+pwrNsKrSFlnThZ2sEEGMOeDxQE36v763SgZjWF3vIVg8L7
	 2331JduDK0l3rSbRyh2MYGF7oPWVUfQ0l3Qfh5+rKeLzMdxhJO8dHvLBBR7nbqcg8P
	 kIKcbJXPzb5WU8KzrzChokRXNO+lveirWCzEcy5Y0P+fP9c2rxAh22ygUf7r1LKVEA
	 sw6iBuMsKyZjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B8EFCE49
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266009358.29621.15755298858662053050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c747f392e52e7eca827b66f207c2ccc2f4cfa5e2d64222b2b0313bd406e4d7
Date: Wed, 04 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772660093
