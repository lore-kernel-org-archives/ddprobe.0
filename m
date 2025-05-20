Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371D41E5702
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747715995; cv=none; b=tFSuP5Co55ofVBPoCy26vZIlQbVkvrwh1iZJGzhEvDycUZ4qD/PXQVSWqbBEzz+AruZGkKHnutWvNHEKRbmcExthqlRUURKOMu9DHga5KFtN3Zp+q8fKlzK51JFb3Xtq/ULpRZIu+2sP2VgM39d8KN+GXOFn5V4FqGdSa7yyIjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747715995; c=relaxed/simple;
	bh=uDE5V5nqbCQmy0lcMUqD+m1KjafkPJaAEEWVp3LGFKk=;
	h=To:Subject:From:Message-Id:Date; b=E5kPzQmEKUVP+JMqf4Hrfa0HIpHM5cdlwDNOhFYBWAT+GX1nwG9oMJbp2KPkNW7NkO+ZZJFqbAtYI15AGEt8ueBRQ9R9trC+tYgYl/F1iUUsu/i/VT5f33FmnpxRWuoZ1WAPJWtQKERMQUHKqV5xm+p3ZAxDKikR5r0faefx7eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+WY+Hf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+WY+Hf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8942C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747715993;
	bh=uDE5V5nqbCQmy0lcMUqD+m1KjafkPJaAEEWVp3LGFKk=;
	h=To:Subject:From:Date:From;
	b=K+WY+Hf8CnkLnIAXaTBVJjdN1dpzVHKR5FRi7HBASgtSTd4UFXPN4d50jODBxBxT9
	 nLmLpVD+Uu6A3Zrixu1HaLnBx2m9OHSMbZw1cNUoR9iIZYDP8QYI1iJpk74O+7Oyo/
	 SjH3gT3euz4LlSVOSjf06i1wlwgXaLoA1YfTJZq84HgVLy3I54ReFqV99SrLQGTjQv
	 zRHGPKwSxe1/XmB8IQm772NK3WxvFJGYy0OLZmy4TvNDZGVu4LP3AaVFtS97stN9fH
	 CTUq0eVvtJgM4FeDZL1WgJ8Pw3oEInVrRXtkAZkYfBpsx4UE5+oZd9sXGv9W3lMF8B
	 +HsaFP+qgjmgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92832C3ABDA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771599357.4844.6824539603015028599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000e2ef088747e902dfa9f072c46a686e9b03cc8e5e83ce3d5f0b50cd106239f
Date: Tue, 20 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747715993
