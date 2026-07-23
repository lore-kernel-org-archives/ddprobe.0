Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6561A9F8D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784849434; cv=none; b=oucFpn0Dqj/Z2lUuePRj/WMRJs/MMUMAuX1RsRg59YEQVP9HPs78K9OE8p60sV6QNR8lqY6KqoTMDXD4uCbp+tVffeN8/1pb8Tc/fUsv736qYfsXfyotwp4Vu7yXPj/fpsxonSvrq5xRkG+IPcn5c2aGoT4N9QoD88YBVB8r7rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784849434; c=relaxed/simple;
	bh=jNMBHc+TM18GeCKp9/sQO16F3hyQYcmvOyXR361qUQM=;
	h=To:Subject:From:Message-Id:Date; b=b3xPv2MtlvyC+pSjkdukGrVqar8u4hu/QHRpqv5wscyOUku7pqkTW6GISnPCsSSkcc8t3MYA6CfZON+NgpIrmQXg8EIjFT05NgmRQAis95Q6fppkFLimUZ2cQX6TvRyOfNgDXFLl8bbosFxf9bpA3aVmf6uFL4tmOWg8cInBQ6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfh5A0hD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfh5A0hD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB057C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784849433;
	bh=jNMBHc+TM18GeCKp9/sQO16F3hyQYcmvOyXR361qUQM=;
	h=To:Subject:From:Date:From;
	b=bfh5A0hDoVoo27GcvsOMVHBupt/zf7Q5VPGzlePuuYjkhjx2Z2E9J+KXK5Ggwv+0X
	 2PR6qD7Ds/O4FgrFwIYetdqUpA/U48xEI1RtnYdeoWL6LxtXw0Y1tTKLYkn5dAk+KC
	 KVAUTpgQAQJBipD8SjBuyoshUKJ6AChmklEoQBVfgEW+iSqGJnKct9YT/ASMkNs3iC
	 n6EutPNxVavqSiSvXmp65litq+V1vZoCvNp4HZM03/sYzU5Or0JKMBZQ79d+sY55TL
	 xE0YjDxHJ3EToOfWDpyPDL3Tvg+Ntm8tzV8YJwljVMFjueCyh3wir56H88htAEyuGm
	 5Yd1/SBPrt6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86C0C531F9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484943368.8281.10478000698293878461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d29b1bcd7e9b5463e06c584983092a832f128b3de0ba1528d7998b2f46c468
Date: Thu, 23 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784849433
