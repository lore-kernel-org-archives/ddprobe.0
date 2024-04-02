Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BFE3D579
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712045296; cv=none; b=dwhRpT3gUwes28g/nxNSkL2dKXMsZZKuuCLZ6ydgVYYN5VMaC564PL8rhY+vqj+9cdGc5gNcLpu0QFz85BY743KJr7JQ01BFTHoeale7uSdpj18zTOU+E1HLoYlnJ+DnSK6sqFcdjsBn+xx86HcexF1HeprdvZ+MDDPZBGS4oyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712045296; c=relaxed/simple;
	bh=VcF9Oauhmz4Z03MwMilT4XTusW7Yq2TNYqcAGmzfZHk=;
	h=To:Subject:From:Message-Id:Date; b=ri1rhTAkD/xlEp0I58V0UQleii5w7Exv+ASuVmPJ2wRkJVMb9I2fz4qXrq1mpGxVkjrFfwZMqsRbGgx0cLqVs5pankQN/3CyXm1Dabh3Q2ZRxBsnlYx3JCbIT+tzI5Qo0x69QOut2nm9mJ3ZvEt0mYNFjab44qODtfvOfHQdgfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtwP7ZcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtwP7ZcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B3FC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712045296;
	bh=VcF9Oauhmz4Z03MwMilT4XTusW7Yq2TNYqcAGmzfZHk=;
	h=To:Subject:From:Date:From;
	b=AtwP7ZcELokinti9UxJ1BgTHNHu4jSPYHmo/wQX3lo8wNWkDQtoTu0w7UgT8kly/r
	 GivdPCL/S7c+Y/GryNIOhgzA+gPzKGrpEK1hb3HvN2KZvMyFLgz6xyQUfGe3eJvHPC
	 yQxu+vsfXGLM0NiSstNZwGo04iijIhBUgpatvegeY6S5dmAtBGgc33WxIB4aN99c1W
	 26jVu2IiZ66dPttsH69q8AbyLjcJP1aHa0cnb4JiIG7IXF1ZOhtgNOcljL7CpU3pt7
	 hp7F3GjXeXHCBbDpFBSp01Ghtm/GAkkXUm5tf8lrRPpRLHcpSoma7FOYnEL14xf0Gz
	 LqvHZlq02CmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65295CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171204529640.29297.4773862923995089388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df46d0fb8329407373c1665f097cf7fcb00ffe6dab0b197831f829201bdaaa68
Date: Tue, 02 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712045296
