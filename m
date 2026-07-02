Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B44360EF3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782971314; cv=none; b=dz5iwE4yi2F3qLftV2hXohdsU08XF/KsorKgstQnqJ4eVdeuSdxM2eprYmmwX3jpywhI4siywSN8Dobq1y1bbNypAlPWpFsAvxURkNKNsULapcA4ZeEg/Vz1sP/cokj9K3smmcCyH/Cr7rg3B1rEfINv9C8SiR4i7csBUVtDfo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782971314; c=relaxed/simple;
	bh=EH9syCqCpShUKVdySa/sTMzW/r5ULo8lqwCRLtenjr0=;
	h=To:Subject:From:Message-Id:Date; b=hHs7GGmI/NhMni1u5xS6AZ6sh232g7f8PKDosy2Ncjwt62pk/funcqEVzn3ELun3otB0m9JI7Wq+d1j/0oTHfMyIeMSEVjWza2gYy0JvI/ogqePEtx9wAOhTIXJK4S43HdhhgYFZsVSWt6smKM+1J7NOBWj8blWRGJgVwINqPj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVge16Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVge16Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7917C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782971313;
	bh=EH9syCqCpShUKVdySa/sTMzW/r5ULo8lqwCRLtenjr0=;
	h=To:Subject:From:Date:From;
	b=eVge16FaCA32MTktII+FTFuLps1RYgpfjT1BHu4c2G1K0KLJmeV2B/rszylbKJOfZ
	 kTTCvqZrFIo0V+/kbr23gfTq7GOMizzHXw7SgZCYVgr3XS+K4DkC7jItdfvXiZeI8l
	 mtw8+DedBZ9Hi2dXfffG+HIKIKRvO4bKBrP7PqIExDlSc35yrgL09Ke/c9tY2aNjPt
	 gIvI9vNbNIFkV4vLYEnIBhyLtcbyLze5sYNb0dV6aPYbu0dgtT6jNESjMhxLHFZJWp
	 h0b2xnZaZ7mRu8EI4MAYPx5PdTBP9qlaBdlgESJ2mwld7wka/mmJAbfFQcrLgLtZbF
	 KVJein45vSfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A843DC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297131368.22863.3558103447005455698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d6676faa428fe489b3bfe6bbdcfd6ce7bf66036a0dad524c1267fc1361bb14
Date: Thu, 02 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782971313
