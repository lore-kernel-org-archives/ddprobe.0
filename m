Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEA22C859
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738556754; cv=none; b=PwH2rTUllCJBpI3tohuA+AV8OMCIh/U8Q95gLuRIx4jnTpwUd869yX3Z8fNvRZ93lwQlnY6OE1uBOcXPE40O409ULMJvWAoJ9o20b2HLK4nNkIHs3ZTLLYylIjUKDd1zZXYE7bbBRDAIiVev8LwZKLfv81/YD/hoNfpwlCuZ1NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738556754; c=relaxed/simple;
	bh=snUmAV6CvJXaI4cy4gUtqnF98XBdaLmTzoR6EvS2OAk=;
	h=To:Subject:From:Message-Id:Date; b=piQl3euCN3/gGn0u26DiEArojYpZ4ZRFEEmBHiD+kqyO7o4x5BnZBbyFhXLfGKhwHehtg78cCt/Q/9CKWFJBDm8wO+3K8RsexjDBoZuWWdua/SrrMg8JegpHKKZwDP8DvXxUzPuknAnZl5TXEBBq69fJL/2cJEFz++N2n2ZTK7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0Ymo7BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0Ymo7BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF45CC4CEE1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738556753;
	bh=snUmAV6CvJXaI4cy4gUtqnF98XBdaLmTzoR6EvS2OAk=;
	h=To:Subject:From:Date:From;
	b=n0Ymo7BFN+SkDkE1niUtFMBqrUdoVsnNsAd6IP+U5ODiqZqXAr5dYcUtM1eEBkAG3
	 4tVD/NTS/AFq/9pn95pd6O4iLstwy1rMpMizTMdCOnzIXxJ3PGiuuPOsQE4JhNIlFZ
	 04s6ek8UzXAqMGlVwbJ0ReeTjKFS3l04HiPg4+t/l4TZIuTZz8WoqY9yAGqNRzue6W
	 g1zbxAjvXIrmYon4K3iQJbmgjl2pAPHs/+VAdBwu2O67f7sXKNCEjJE6asvC1kY0Vo
	 vkZ/C2fFl1l8w9F9icp1VliTp59bd8KmVjW7QKmniTw6Taqwq2tfrDuuFOtf25fWuQ
	 kj6Qgj1gPoeUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CB5C0218A
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855675366.2594.9791494152711115776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4bd20a5c6a7a3a90242d39313a8d5056c86103a8d14312d340d70ed6353c65
Date: Mon, 03 Feb 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738556753
