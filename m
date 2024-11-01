Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334A119B3E3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730498154; cv=none; b=Ovu5qi2Hf3ADNWi83HjdPe7fRbOMIhmZrhO25fEzL317Hq25LK+bW/megQmacyz4it4cvXUdWqjKnrGvmkejz9M7t+BPbP2vRmkh5x8DTqOjEXs6dqXy1LZWdTlvNqUi6793z20NhtHn7GubZcqieOTjC039tJq2zJaqQJ4sxmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730498154; c=relaxed/simple;
	bh=QvnLG7kTKQVa4yyCCOs5jcrMNDP8+7cZkPdbfFoi548=;
	h=To:Subject:From:Message-Id:Date; b=g1HBtVyLVpNxInpNX3tZGzSzw8+79VuWNte/4Q5bHy3+bb7TWKhT/V1ziDqbcAbR9LVifLSXi9kRpK+sle0+lR64ZLGpdjQUOkblERL3l17+zFoSzI4Vkr8/Hz3pP8HkSltYmFDjL53hj56NZRHCNvGX9aSmLhcvbgNYPiPu3RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuFc60eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuFc60eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 966A6C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730498153;
	bh=QvnLG7kTKQVa4yyCCOs5jcrMNDP8+7cZkPdbfFoi548=;
	h=To:Subject:From:Date:From;
	b=fuFc60eQyip+91b9fE2Jta4A17IydsXXfT+gC5TrNQdCj/qR+cxzwtO0DVDBgBlgQ
	 H3tvM4dMsNLP8u2VT00+ju6JfRWYTWkGyw7J5qhcPTerEiByM9xki7SqogcuxVuIU8
	 N+OiR0KsNxjuHsaNOZpuKEe3af3m9i92sbofbqHo3DxVpb1JTmGncrTVx6r70+H/mc
	 0UwBGURS1FHqTbxUVfC5cDNO+Nu6Eco0yxK2T+8xWiwZeqE4bpNoa99nEHMoEhmU7m
	 n1QUo/7TSnZz5esr50vaLyLQ/nmJCJoIgpu3k+9/eouYLmTqqcEO6E48dA7xc3S2XQ
	 Hz0ujvU0QOhlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EEE6F08E
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049815358.1195.8188827638843594599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2f2bfe0677f9ffc409060032d81cf6ae9d5bcd6bd7d62a3896745f7048ed39
Date: Fri, 01 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730498153
