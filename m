Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21527296BA5
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770510234; cv=none; b=NtD5crmkBS5bYonhNfBnonmVjs9zDJnW7K7p3KBYzYXrrWOwq2ftFKr5LEJyOyeqzDxBL0zSHdwslj7Fbo5HvzaQaKzL7//r7RbsEP2f95vIfhyA4HOQ00VFG6iHU3BD+rGC1avCRadgWYTml5vsSYtfn9Cdl5h+ga+tPSjms6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770510234; c=relaxed/simple;
	bh=azHbox1aPSPvbvF+fbApK5GguMfp+4UkkQv3o2PWRKg=;
	h=To:Subject:From:Message-Id:Date; b=oFC27boalOHWt0DuFkxfY/MMthqULvnUoiwWL1i69s74CZ1RYe1jvGcwwrgtNTiS6rIuCJk6DJpskgbHiSbs9o1yWEjK/UH2UPnhVn1cL+SdKq1VShOhpyD7hp6h2A8LpwLAPkgI+1dMsOwoxRpbG1kMuI4PC4wozhR/3GF7rfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxgkPbxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxgkPbxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF37CC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770510233;
	bh=azHbox1aPSPvbvF+fbApK5GguMfp+4UkkQv3o2PWRKg=;
	h=To:Subject:From:Date:From;
	b=AxgkPbxwnvzVF+fdTUCVMgZ3789VjSvNmzeeI/VyFv6Fckym1B+bDWIBCE+jN8iuw
	 fnnilzAEtoGKLNDuq7H4SWfmJQdowQA9drgOwYBN5aJzTOsnFzw2748NPaF82iLgTf
	 QBLfYVLjezEKnSzZlDrrEexfkLVJwUsL8HhTQ3OUvtE1RqAuXKn5zSFrledqg+NuQx
	 oxEDnxDCh2CpjdponTnPoMr92Y4JUoamhAaR35SoRHiFC5z11lK/UwZnAQIY3W+Mpq
	 LQd/fv00QOjIP8ARAbAmozVGyw3MaV59KdX2iylxXv+Zq4rqVoOqOGZLvkjYVQ2M3i
	 GuILwHATg9hbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EA3EE0AEC
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051023360.25407.15196279568769519815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017cbb40ec230a2ca92fa5cf89ff70c08955133452d89e6e4c012d61cf36fa8f
Date: Sun, 08 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770510233
