Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261E538DEC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766363034; cv=none; b=efHJ619GB9N4kS+v55VBTQftAQCYP1KKDqAQACFPIh3cCBR0UeiSCj/FCWCEyLfMtxqhSLxz3gICpP83uNg8cJv9kJiwQq+uP5w0e2oMID+uvG2H9z8z30yMESq7CyFHOpJjaIj2PQA5MwAtwyEQLMDs/2POonOjKiW/Wj/osvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766363034; c=relaxed/simple;
	bh=3CColC30ITT3BqF8qHU2LCp/tBzbK9esHhUsf9gMP7M=;
	h=To:Subject:From:Message-Id:Date; b=MMeyOteupaVS8b76J/gTwCYyKW8662jVJAxT2vG77aUWDhYyqNAMGXRPFoAPXgcsdT1ZyhRz8AuGmXv1duB1lYbSdKpPaTokNaas12T6sTKbSDgUB1FJ91in2mgEghXCmIP3jqqRaIyMqUDmDuNrRb13Eybd6iU0gKvBVj000mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja1JkL3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja1JkL3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6735C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766363033;
	bh=3CColC30ITT3BqF8qHU2LCp/tBzbK9esHhUsf9gMP7M=;
	h=To:Subject:From:Date:From;
	b=ja1JkL3aTyHWZrdNxab5McozshDZc/mHKWbhMHl89RQyY8DyGD/RdulkOIqPZqqdZ
	 N9GU2ft7w2Yx9ESkBBbjiybSv4FKC8b3bCa+PVkJXtczLFNGOmmChDKLlGPVzXTH1T
	 /0sFoJ6QhIYihmy34odX4lzFc3oglD/W75a+QIWFOTmooREW2CQNzoMRaxTZsxWS4c
	 xmu1Hrqd9eIybwpAr07Il4nBw4y1mcBAfFBdlkgEIxoAWDHTx2c8niZCCwJ4bV7kf9
	 BVKAqkZoCEzgYdPFv4njGFXC4nkZ8uZ9V0pD/McHA9MlnGOm4NqcyNkbRrlmZ5UyKX
	 27rzX5En25rvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517CD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636303357.16205.7626182918460006183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565cb9942d4c3e34a1b5b0e0bb8f909e28ae6d1c56b9459a1c0dbc078afe0b6e
Date: Mon, 22 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766363033
