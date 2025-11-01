Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25308258EEF
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761984594; cv=none; b=aio3ckCeo/6/1Xn0o8awVX2SBGs3EW+4RSuChV+lOUev8MEzvhCwYJPlEFGYshgZ5wPkCVFbSNS+SJkjXBNHnVz5TGr7fx8/7zUeQNNXaJCHx2nXdDb7h4A6NKSr6HpyTe9uQvSaxdMEIjizKa6tMn8QK6hEfdpXtub6ULAEEV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761984594; c=relaxed/simple;
	bh=hl7lrviZ2Rro4U/Lw1cQiKA27Rpj95ZIofv2Aj2JSkQ=;
	h=To:Subject:From:Message-Id:Date; b=USPh98ULUEb3TnQpp8U02TNswo9F6o//40b13xHL3bxz4mpe+OKI6T3QSt8zmZoSGj8nWYgU771sR1a7KAi3K0Df6ju2gHzryO+EUF4ATkeNvdjbIp88VAt6SBqD/g0seZUpGg1l8msGVFZwCyMjmtBrv9rI+srPvxfQmZXP4iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh6e0rG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh6e0rG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B261EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761984593;
	bh=hl7lrviZ2Rro4U/Lw1cQiKA27Rpj95ZIofv2Aj2JSkQ=;
	h=To:Subject:From:Date:From;
	b=Lh6e0rG4jxpU4AwjAauDPVGhQ7yJAPqseVbimgOj33qxi434vKuo2hm9YAAnUQk2A
	 I1As+q0bExxnsN+/cQgkxXjhLRz0sVzHDdqntkC0tPpYAo4K8yLrSFSXW/g8oWG+y9
	 GuH/Wj7j0Vyg+9r3XfURA+J9riJckbEzEEa9/QJZ3C4+2A4Bl9xet+dzcAU2fit1X6
	 09NvQPJzdYf8+IeSpUhXceflX471+OsbPYnxpM45kxdZHIu4ePPvLmsK0HG4aFW3XN
	 F9ota05y1A/IohDZqE/xgVHJfIUnr+cugUdXp+rYy7CEnvmaVSVRw1+mTWd2kvdt4z
	 JggQ4yTZsi0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996B2CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198459360.31280.14371050252832966415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefe89ee5c946976d0389e7cdfc12f36be9560cffd6f6ed7ec20c73c8a318ee3
Date: Sat, 01 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761984593
