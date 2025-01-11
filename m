Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8D9B652
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736556954; cv=none; b=N8zikw95lWB4h1x8Mx30sxxd8eVmrqE6glv+dAy2mJb8uSCQMzwwtR6mN1V1r6fhCnCfrpsAYqN27StvhB2FZh+2C84AzgSFU37z7R2/vNd30w9O9HmKglHRWJBCDbZljJYEeH+d+aJ30X59Xgn6Wymyp9bYtxg3k0xbpguh8fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736556954; c=relaxed/simple;
	bh=cUW4HCLO7W8NyuDI1Yv8+GgVuGqroziA1NUDoaFjq6o=;
	h=To:Subject:From:Message-Id:Date; b=WnPCLVNFWZVDp/deHwhClrlPP9p+zJv0Gbt4m+NZoD6KbZVK25htBB0ybHk4HH7xDgMYNGZCHgRPq7d2F3UHTHFv7aVxV0J+jWgBdFOmCrN5Vhb7xFjwVltpaUqBmEsDXk6D2ZwltMDA/o8n0sdoCcNYfWSZ5xR61vPDf0eTaqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFA6qAkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFA6qAkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E49C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736556953;
	bh=cUW4HCLO7W8NyuDI1Yv8+GgVuGqroziA1NUDoaFjq6o=;
	h=To:Subject:From:Date:From;
	b=qFA6qAkdstV+E44hdApYIlgwhne0BJ/Ad7IszXvGpvLgJuPxJRnQLCtY+NdQoz0o4
	 mJ7jAR3w13pMDwfwt4dssD7pklbeKhJyEv/d2bQ8SRvDjn/IQuLU8m8p82aBfzYNkv
	 ZUwz+kJMCLh1hpxdtwc9akfXTIPpY6/BSH/NnamsJKRe8B4D1Z3dUD37PSRKL3zjtr
	 i5HZyzd9jhAsIFmgREElTtGNw9u4HEGNvI6QXvZ3WIOB3phRjQn1ZlqCDBkjBXgBEw
	 /FsAy/eXxAUIGPSH7UMaYxQ3UMni9S0/g1lr/SecRvuHySNz/lanI8KdpSOs7HEVBB
	 gToGeMplhNTIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD0E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655695359.12397.17315900940477215019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fca3d3ec2d21c980bd678a1e25290a9373cd4aa91d7c09f6fddb3d6e02f601
Date: Sat, 11 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736556953
