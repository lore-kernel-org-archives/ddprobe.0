Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5CF13DDD4
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718633903; cv=none; b=bcbNd39H2hSJ9v/EC1S2inW2MA9dqQieYP2LMGp0ZNAbXyuvcpokImwHXDkxB6WQ6/TyQOF6cSQ8oz+z/7P4p7B4shQZg+lZMBdbjE8/2l0SUJ/hCsszmCNrubSiYCxuX3KVQey+tAu0IxIF2VUKUHW/nW8lXACyij1cH8Xx550=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718633903; c=relaxed/simple;
	bh=3VotJdZtXQzGcKTlP1M28bl/3FnPUB2MlwlKcgy3lzo=;
	h=To:Subject:From:Message-Id:Date; b=VJD57/Qcz+8qrPX9vCADvNHrNjhJovWC9f9XJqG9138wSpDmqGPW5eaAwuMJ4mER7zQpI3fu4AEL/nXuzryyzusp9+koRqo18sTrktigfpb4bmKAhXTUvElVK/mXaBzJwBBejbthuK5OUDlF9JTzSVtEBwzjEoWp5tZgcR8SLWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw2dHjip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw2dHjip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA90C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718633902;
	bh=3VotJdZtXQzGcKTlP1M28bl/3FnPUB2MlwlKcgy3lzo=;
	h=To:Subject:From:Date:From;
	b=kw2dHjipnRcjFPZCw+YHKMdT8Q8Aeu/+Yl/d2jJVT5IdO5Z4e2wuoUfusDZeVKu2Q
	 Hpb1qOYv8zdYGkDI/90XNQ4190gPGQnw1hyCukn4N7iYIZBqKn/5fiM4B7UJixTqzT
	 SqUh4p/b8ESc9hCJ/Pja556BSWRW3nyhyKJ0mJ7RfY/kSIja2DT1hrpBmfYDpKVd7t
	 Nb7PmpXHtNSbx+2/nn4r6BOAoql3tZqAYQ+6PN/WsYgvNJdtcu6vXNhxgq0YMIAWNQ
	 mkuNmPomJRz8wpGlQJ/y64Yhk35A8lxDAU33zA1k8EE7IUtVb9wKB3PvzC9sBIs9/L
	 gAxVNdAXPdHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BADC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863390281.6135.11791337268770212345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b837624c15214efa6bbdef56b1428123194e50acc5cda9670133e91a9802187
Date: Mon, 17 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718633902
